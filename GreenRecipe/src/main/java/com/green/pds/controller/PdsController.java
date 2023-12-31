package com.green.pds.controller;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.green.menu.service.MenuService;
import com.green.menu.vo.MenuVo;
import com.green.pds.service.PdsService;
import com.green.pds.vo.FilesVo;
import com.green.pds.vo.PdsVo;
import com.green.reply.service.ReplyService;
import com.green.reply.vo.ReplyVo;

@RestController
@Controller
@RequestMapping("/Pds")
public class PdsController {
	
	@Autowired	
	private   MenuService  menuService;
	
	@Autowired
	private   PdsService   pdsService;
	
	// /Pds/List?menu_id=MENU01
	@RequestMapping("/List")
	public   ModelAndView   list(
		@RequestParam  HashMap<String, Object>  map	
			) {
		
		// 메뉴 목록
		List<MenuVo>  menuList  =  menuService.getMenuList();
		
		// 페이징 정보 준비
		// 현재 페이지 	번호
		int           nowpage   =  Integer.parseInt( String.valueOf(map.get("nowpage")) );
		// 한페이지에 보여줄 자료수(ROWS)
		int           pagecount =  15;    // 한페이지 당 출력할 줄(row)수 - 2

		// sql 사용할 변수 : 조회할 레코드 번호
		int           startnum  =  ( nowpage - 1 ) * pagecount + 1;
		int           endnum    =  nowpage  *  pagecount;

		map.put("nowpage",   nowpage );
		map.put("pagecount", pagecount );
		map.put("startnum",  startnum ); // 조회할 자료의 시작번호
		map.put("endnum",    endnum );	 // 조회할 자료의 끝번호
		
		String        menu_id   =  String.valueOf( map.get("menu_id") );		
		// 게시물 목록
		List<PdsVo>   pdsList   =  pdsService.getPdsList(map); 
		
		PdsVo         pdsVo    =  (PdsVo) map.get("pdsVo");
		
		String        menuname  =  menuService.getMenu_name(menu_id);
		map.put("menuname", menuname);
				
		ModelAndView  mv = new ModelAndView();
		mv.setViewName("pds/list");  
		mv.addObject("menuList", menuList );
		mv.addObject("pdsList",  pdsList );
		mv.addObject("pdsVo",    pdsVo );
		mv.addObject("map",      map );
		return  mv;		
	
	}
	
	// 새글: /Pds/WriteForm?menu_id=MENU01&bnum=0
	// 답글: /Pds/WriteForm?menu_id=MENU01&idx=21&bnum=21&lvl=0&step=0&nref=21
	@RequestMapping("/WriteForm")
	public  ModelAndView   writeForm(
		@RequestParam  HashMap<String, Object>  map) {
		
		// 메뉴 목록
		List<MenuVo>  menuList  =  menuService.getMenuList(); 
		String   menu_id   =  String.valueOf( map.get("menu_id") );
		String   menuname  =  menuService.getMenu_name( menu_id );
		map.put("menuname", menuname);
		
		int      idx    = 0;
		PdsVo    pdsVo  = null;
		if( map.get("idx") != null  ) {
			idx    =  Integer.parseInt( String.valueOf( map.get("idx") ) );
			pdsVo  =  pdsService.getView( map );
			String title  =  ">> " + pdsVo.getTitle();
			String cont   =  pdsVo.getCont();
			if(cont == null) 
				cont  = "";
			else
				cont  = ">> " + cont.replace("\n", "\n >> ");
			cont         +=  "\n==============================\n"; 
			pdsVo.setTitle( title );
			pdsVo.setCont(  cont );			
		}
		map.put("idx", idx);
		
		ModelAndView  mv  =  new ModelAndView();
		mv.setViewName("pds/write");
		mv.addObject("menuList", menuList );
		mv.addObject("vo",  pdsVo  );  // 답글처리를 위해
		mv.addObject("map", map );
		return mv;
	}
	
	// /Pds/Write 
	@RequestMapping("/Write")
	public  ModelAndView   write(
		@RequestParam  HashMap<String, Object> map,    // String 정보
		HttpServletRequest   request    , HttpSession session               // String + File(Binary)
			) {
		String  nickname  =  String.valueOf(session.getAttribute("nickname"));
	    map.put("nickname", nickname);
		
		pdsService.setWrite(map, request);		
		
		String  menu_id =  String.valueOf( map.get("menu_id") );
		
		
		ModelAndView  mv  =  new ModelAndView();
		mv.setViewName("redirect:/Pds/List?menu_id=" + menu_id + "&&nowpage=1");
		mv.addObject("map", map);
		return  mv;
	}
	
	// /Pds/View?menu_id=${ pds.menu_id }&idx=${ pds.idx }
	@RequestMapping("/View")
	public  ModelAndView   view(
		@RequestParam  HashMap<String, Object>  map	
			) {
		 System.out.println("");
		 System.out.println("");
		 System.out.println("");
		 System.out.println("맵 정보" );
		 System.out.println("맵 정보" + map);
		
		// 메뉴 목록
		List<MenuVo>   menuList  =  menuService.getMenuList();
		
		// 조회수 증가 (+1)
		pdsService.setReadcountUpdate( map );
		
		// 조회할 정보 : Board -> pdsVo
		PdsVo         pdsVo     =  pdsService.getView( map );
		
		// 조회할 파일정보 : Files -> filesVo
		List<FilesVo>  fileList  =  pdsService.getFileList( map );
		
		// 현재 메뉴이름
		String         menu_id   =  pdsVo.getMenu_id();
		String         menuname  =  menuService.getMenu_name(menu_id);
		
		// 현재 글 번호
		int            idx       =  Integer.parseInt(String.valueOf(pdsVo.getIdx()));
		pdsVo.setIdx(idx);
		
		
		// 파일 이름 들고오기. PNG
        List<FilesVo> sfile = pdsService.getFileName( map );
        System.out.println("sfile" +sfile);
        // filename 내용 분리
        List<String> filenames = new ArrayList<>();
        for (FilesVo filesVo : sfile) {
            filenames.add(filesVo.getFilename());
        }
        
        System.out.println("filename:" + filenames);
        
        // System.out.println(filenames);
        // System.out.println(sfile);
        // System.out.println("sfile" + sfile );
	
    //    String     INTERNAL_FILE         =  sfile;
//	    String     EXTERNAL_FILE_PATH    =  "d:\\dev\\data\\" + sfile;
	     
	    // File       file  =  null;
//	    System.out.println(EXTERNAL_FILE_PATH );

		ModelAndView   mv  =   new ModelAndView();
		mv.setViewName("pds/view");
	//	System.out.println(sfile);
		mv.addObject("filepath", filenames  );
		mv.addObject("menuList",  menuList );
		mv.addObject("vo",        pdsVo );
		mv.addObject("fileList",  fileList );
		mv.addObject("menuname",  menuname );		
		mv.addObject("map", map );
		
		
		return  mv;
	}
	
	// http://localhost:8080/Pds/Delete?menu_id=MENU01&idx=23
	// 삭제
	@RequestMapping("/Delete")
	public  ModelAndView   delete(
		@RequestParam  HashMap<String, Object>  map	) {
		
		pdsService.setDelete( map );
		
		String  menu_id =  String.valueOf( map.get("menu_id") );		
		
		ModelAndView  mv   =  new ModelAndView();
		mv.setViewName("redirect:/Pds/List?menu_id=" + menu_id + "&&nowpage=1");		
		return  mv;
		
	}
	
	// /Pds/UpdateForm?menu_id=MENU01&idx=22
	// 수정
	@RequestMapping("/UpdateForm")
	public  ModelAndView  updateForm(
		@RequestParam  HashMap<String, Object> map ) {
	
		// 메뉴 목록
		List<MenuVo>  menuList   =  menuService.getMenuList();
			
		// 수정할 자료 조회
		PdsVo          pdsVo     =  pdsService.getView( map );
		
		// 메뉴이름
		String         menu_id   =  String.valueOf( map.get("menu_id") ); 
		String         menuname  =  menuService.getMenu_name( menu_id );    
		map.put("menuname", menuname);
		
		// fileList
		List<FilesVo>  fileList  =  pdsService.getFileList( map );  
				
		ModelAndView   mv        =  new  ModelAndView();
		mv.setViewName("pds/update");
		mv.addObject("menuList", menuList);
		mv.addObject("vo",       pdsVo);		
		mv.addObject("fileList", fileList);
		mv.addObject("map",      map);		
		return  mv;
		
	}
	
	@RequestMapping("/Update")
	public  ModelAndView  update(
		@RequestParam   HashMap<String, Object>  map,
		HttpServletRequest                       request ) {
		
		System.out.println("1:" + map);
		pdsService.setUpdate( map, request );
		System.out.println("2:" + map);
		
		String        menu_id  =  String.valueOf( map.get("menu_id") );    
		
		ModelAndView  mv       =  new ModelAndView();
		mv.setViewName("redirect:/Pds/List?menu_id=" + menu_id + "&&nowpage=1");
		return  mv;
		
	}
    
	// 중복체크
    @RequestMapping("/PdsBoomCheck")
    @ResponseBody
    public boolean checkRecommend(
        @RequestParam("idx") int idx,
        @RequestParam("userid") String userid
    	    ) {
    	
    // 여기에서 Service 메서드 호출하여 중복 확인 수행
        boolean isDuplicate = pdsService.PdsBoomCheck(idx, userid);
        return isDuplicate;
    }
    
	// 추천
	@RequestMapping("/BoardBoomUp")
	@ResponseBody
	public PdsVo boardBoomUp(
		PdsVo vo) {
		
		PdsVo  pdsVo = pdsService.boardBoomUp(vo);
		return pdsVo;  
	}
	
	// 비추천
	@RequestMapping("/BoardBoomDown")
	@ResponseBody
	public PdsVo boardBoomDown(
		PdsVo vo) {
		PdsVo pdsVo = pdsService.boardBoomDown(vo);
		return pdsVo;
	}
	
	
   //---------------------------------------------------
   // 다운로드
   // type : external, internal
   // 정규식
   // {sfile}     - .jpg 와 같이 . 포함된 문자가 들어오면 문자를 무시 : .인식하지 않는다 : 사용금지
   // {sfile:.+}  - .+ : . 이 한 개 이상
   //               반드시 . 을 포함해야 한다
   @RequestMapping(value  = "/download/{type}/{sfile:.+}",
                 method = RequestMethod.GET )
   public   void   downloadFile(
         @PathVariable("type")   String type,
         @PathVariable("sfile")  String sfile,
         HttpServletResponse     response
         ) throws IOException {
      
      String     INTERNAL_FILE         =  sfile;
      String     EXTERNAL_FILE_PATH    =  "d:\\dev\\data\\" + sfile;
            
      File       file  =  null;
      if ( type.equalsIgnoreCase("internal")  ) {
         ClassLoader   classLoader = 
            Thread.currentThread().getContextClassLoader();
         file   = new File( classLoader.getResource(INTERNAL_FILE).getPath() ); 
      } else {
         file   = new File( EXTERNAL_FILE_PATH );
      }
      
      if( !file.exists()  ) {
         String errorMessage = "죄송합니다.파일이 없습니다";
         System.out.println( errorMessage );
         OutputStream  outputStream = response.getOutputStream();
         outputStream.write(  errorMessage.getBytes(Charset.forName("UTF-8")) );
         outputStream.close();
         return;
      }
      
      // 실제 다운로드
     // String  mimeType = URLConnection.guessContentTypeFromName(file.getName());
      String   mimeType   =  "application/octet-stream";   // 무조건 다운로드
      
      // 파일명의 한글처리 - 한글파일명이 깨지지 않도록 하기위해     
      String   fname   = new String( 
            file.getName().getBytes("UTF-8"), "ISO-8859-1" );
      
      response.setContentType( mimeType );
      response.setHeader("Content-Disposition",
          String.format("inline; filename=\"" + fname + "\"" ));
      
      response.setContentLength( (int) file.length() );
      
      InputStream   inputStream  = new BufferedInputStream(
         new FileInputStream( file )   );
      
      FileCopyUtils.copy( inputStream, response.getOutputStream() );
      
      inputStream.close();
      
      
   }
} 









