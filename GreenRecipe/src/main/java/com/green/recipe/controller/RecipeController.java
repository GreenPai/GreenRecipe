package com.green.recipe.controller;

import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.HashMap;
import java.util.List;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.sql.rowset.serial.SerialBlob;

import net.coobird.thumbnailator.Thumbnails;

import org.apache.commons.io.IOUtils;
import org.imgscalr.Scalr;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.green.recipe.service.RecipeService;
import com.green.recipe.vo.MatarialVo;
import com.green.recipe.vo.RecipeVo;
import com.green.recipe.vo.RecipecntVo;
import com.green.recipe.vo.User_RecipeVo;
import com.green.recipe.vo.User_RecipeVo2;

@Controller
public class RecipeController {
	
	@Autowired
	private RecipeService recipeService;
	
	@RequestMapping("/getRecipe")
	public ModelAndView recipe() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("cook/recipe1");		
		
		return mv;
	}

	 @RequestMapping("/Cook/View")
	 public ModelAndView view(
			 @RequestParam HashMap<String, Object> map
			 ){
		
		 System.out.println(map);
			
			String    meats        =  String.valueOf( map.get("meats") );
			String [] meatArr      =  meats.split(",");
			
			String    mades        =  String.valueOf( map.get("mades") );
			String [] madeArr      =  mades.split(",");
			
			String    grains       =  String.valueOf( map.get("graines") );
			String [] grainArr     =  grains.split(",");
			
			String    seefoods     =  String.valueOf( map.get("seefoods") );
			String [] seefoodArr   =  seefoods.split(",");
			
			String    squids       =  String.valueOf( map.get("squids") );
			String [] squidArr     =  squids.split(",");
			
			String    greenss      =  String.valueOf( map.get("greenss") );
			String [] greenArr     =  greenss.split(",");
			
			String    vegitableds   =  String.valueOf( map.get("vegitableds") );
			String [] vegitabledArr =  vegitableds.split(",");
			
			
			String    noodles      =  String.valueOf( map.get("noodles") );
			String [] noodleArr    =  noodles.split(",");

		
		 // 재료 목록
		 List<MatarialVo> meatList       = recipeService.getMetarialList("MEAT");
		 List<MatarialVo> madeList       = recipeService.getMetarialList("MADE");
		 List<MatarialVo> grainList      = recipeService.getMetarialList("GRAIN");
		 List<MatarialVo> seefoodList    = recipeService.getMetarialList("SEEFOOD");
		 List<MatarialVo> squidList      = recipeService.getMetarialList("SQUID");
		 List<MatarialVo> greensList     = recipeService.getMetarialList("GREENS");
		 List<MatarialVo> vegitabledList = recipeService.getMetarialList("VEGITABLED");
		 List<MatarialVo> noodleList     = recipeService.getMetarialList("NOODLE");
		
		
		 String           menu_id       = String.valueOf( map.get("menu_id") );		
		 map.put("menu_id", menu_id);
		
		 ModelAndView mv = new ModelAndView();
		 mv.setViewName("cook/view");
		 mv.addObject("meatArr",       meatArr);
		 mv.addObject("madeArr",       madeArr);
		 mv.addObject("grainArr",      grainArr);
		 mv.addObject("seefoodArr",    seefoodArr);
		 mv.addObject("squidArr",      squidArr);
		 mv.addObject("greenArr",      greenArr);
		 mv.addObject("vegitabledArr", vegitabledArr);
		 mv.addObject("noodleArr",     noodleArr);
		 mv.addObject("meatList",      meatList);
		 mv.addObject("madeList",      madeList);
		 mv.addObject("grainList",     grainList);
		 mv.addObject("seefoodList",   seefoodList);
		 mv.addObject("squidList",     squidList);
		 mv.addObject("greensList",    greensList);
		 mv.addObject("vegitabledList",vegitabledList);
		 mv.addObject("noodleList",    noodleList);
		 mv.addObject("map", map);
		 return mv;
	 }

	 
	 
	 
	 @RequestMapping("/Cook/Menu")
     public ModelAndView menu(
    		 @RequestParam HashMap<String, Object> map
    				 ) {
        
        // 조회수 증가
 		recipeService.setCountUpdate( map );
     		
     	// 조회결과 
         List<RecipeVo> recipeList = recipeService.getRecipeByTitle( map );
    //     System.out.println("menu" + map);
            
        ModelAndView mv = new ModelAndView();
        mv.setViewName("cook/menu");
        mv.addObject("recipeList", recipeList);
        mv.addObject("map", map);
          //System.out.println(recipeList);
        return mv;
     }
	
	

	 // 한식
	    @RequestMapping("/Cook/Han")
	    public ModelAndView getRecipeByHashTag() {
	        String hashTag = "한식"; // 한식 태그에 대한 값을 들고오기 위한 초기값

	        // 해당 해시태그에 대한 레시피 가져오기
	        List<RecipeVo> recipeList = recipeService.getRecipeByHashTag(hashTag);

	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("cook/han");
	        mv.addObject("recipeList", recipeList);
	 //       System.out.println(recipeList);
	        return mv;
	    }	
	    
	 // 일식
	    @RequestMapping("/Cook/Jap")
	    public ModelAndView getRecipeByHashTag2() {
	        String hashTag = "일식"; // 한식 태그에 대한 값을 들고오기 위한 초기값

	        // 해당 해시태그에 대한 레시피 가져오기
	        List<RecipeVo> recipeList = recipeService.getRecipeByHashTag(hashTag);

	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("cook/jap");
	        mv.addObject("recipeList", recipeList);
	 //       System.out.println(recipeList);
	        return mv;
	    }	
	    
	 // 양식
	    @RequestMapping("/Cook/Yang")
	    public ModelAndView getRecipeByHashTag3() {
	        String hashTag = "양식"; // 한식 태그에 대한 값을 들고오기 위한 초기값

	        // 해당 해시태그에 대한 레시피 가져오기
	        List<RecipeVo> recipeList = recipeService.getRecipeByHashTag(hashTag);

	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("cook/yang");
	        mv.addObject("recipeList", recipeList);
	 //       System.out.println(recipeList);
	        return mv;
	    }	
	    
	    
	 // 중식
	    @RequestMapping("/Cook/Chi")
	    public ModelAndView getRecipeByHashTag4() {
	        String hashTag = "중식"; // 한식 태그에 대한 값을 들고오기 위한 초기값

	        // 해당 해시태그에 대한 레시피 가져오기
	        List<RecipeVo> recipeList = recipeService.getRecipeByHashTag(hashTag);

	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("cook/chi");
	        mv.addObject("recipeList", recipeList);
	 //       System.out.println(recipeList);
	        return mv;
	    }	
	    
	 // 그림을 눌렀을때 맞는 레시피 호출  
	    @RequestMapping("/Cook/Select")
	    public ModelAndView han2(@RequestParam("title") String recipeTitle) {
	    	
	    	List<RecipeVo> recipeList = recipeService.getRecipeByTitle(recipeTitle);
	    	System.out.println(recipeList);	
	    	ModelAndView mv = new ModelAndView();
	    	mv.setViewName("cook/select");
	    	mv.addObject("recipeList", recipeList);
	    
	  //    	System.out.println(recipeList);
	    	return mv;
	    }
	    
	   // 검색한 레시피 호출
	    @RequestMapping("/Cook/Search")
	    public ModelAndView searchRecipes(@RequestParam("query") String query) {
	    	
	    //	System.out.println(query);
	    	List<RecipeVo> recipeList = recipeService.getRecipeByquery(query);  
	            		
	    	ModelAndView mv = new ModelAndView();
	    	mv.setViewName("cook/search");
	    	mv.addObject("recipeList", recipeList);
	    //	System.out.println(recipeList);
	    	return mv;
	        }
	
	    
	    // 재료 선택해서 카드
		 @RequestMapping("/Cook/Test")
		 public ModelAndView test(
				 @RequestParam HashMap<String, Object> map,
				 HttpServletRequest request) {

			 String meats              = String.valueOf(map.get("meats"));
			 String mades              = String.valueOf(map.get("mades"));
			 String grains             = String.valueOf(map.get("grains"));
			 String seefoods           = String.valueOf(map.get("seefoods"));
			 String vegitables         = String.valueOf(map.get("vegitables"));
			 //String noodles            = String.valueOf(map.get("noodles"));
			 
			 String materials          =    meats    + "," + mades   + "," + grains + ","
						                  + seefoods + "," /* + noodles + "," */ + vegitables ;
			 
			 HttpSession session = request.getSession();
		     String userId = (String) session.getAttribute("loginMember");
			 
			 List<String> mList = new ArrayList<>();
			 for (String mat : materials.split(",")) {
				 if(  !mat.equals("") )
				    mList.add( mat );
	         }
			 
	
			 String mat;
			 List<String> Current_Recipe = new ArrayList<>();
			 
             //사과, 소금 
			 
			 for (int i = 0; i < mList.size(); i++) {
			//사과 			 
				    mat = mList.get(i);
				    List<RecipeVo> recipeList = recipeService.getRecipeList2(mat); //레시피 목록  
				    
				    // 레시피 목록을 중복 없이 Current_Recipe에 추가
				    // 처음 들어오는 레시피 RECIPE_CNT 테이블에 추가 
				    for (RecipeVo recipe : recipeList) {
				        String RecipeTitle = recipe.getRCP_NM();
				        
				        if (!Current_Recipe.contains(RecipeTitle)) {
				            Current_Recipe.add(RecipeTitle);
				            recipeService.insertTitle2(RecipeTitle,userId);
				        }
				    }

				    
				    
				    //사과에 해당하는 레시피 호출
				    for (RecipeVo recipe : recipeList) {
				     // 사과 레시피 제목들: 	사과쨈
				   	 String RecipeTitle = recipe.getRCP_NM();
				   	 List<RecipecntVo> existingRecipe = recipeService.getTitle();	 
				   	 // 횟수를 세기 위한 새로운 테이블의 제목  
				   	 // 사과쨈, 사과주스 
				   	
				   	 
				   	 //두 table에 동일한 이름이 있으면 갯수 세는 테이블 제목의 cnt에 +1 
				   	 for(RecipecntVo existing :existingRecipe) {
				   	//	   System.out.println("existing:   " + existing);
				   	//	   System.out.println("RecipeTitle:  " + RecipeTitle);
				   		   String exrecipe = existing.getRCP_NM();
				   		   if( RecipeTitle.equals(exrecipe)) {
				 //  			System.out.println("RecipeTitle:  " + RecipeTitle);
				   			   recipeService.insertTitle1(RecipeTitle);
				   		   }
				   	   }				    
				   	 //제목이 없으면 등록
				    					    	
			//	    String Title = recipe.getRCP_NM();
			//	    List<RecipeVo> existingRecipe = recipeService.getTitle(Title);
				 //   System.out.println(existingRecipe);
				    }

				    
				}
		 
		//	 List<RecipecntVo> callrecipe = 
			 List<RecipecntVo> FinalList = recipeService.getFinalList();
			// System.out.println("마지막: " +   FinalList);
			 List<RecipeVo> finalRecipe = new ArrayList<>(); // 결과를 저장할 리스트 생성
			 for (RecipecntVo item : FinalList) {
				    String RCP_NM = item.getRCP_NM();
				    // RCP_NM을 이용하여 다른 메서드 호출
				    List<RecipeVo> recipes = recipeService.getFinalRecipe(RCP_NM);
				    finalRecipe.addAll(recipes);	
			 }
			 
		//	 System.out.println("아" + finalRecipe);
			 		

		//	 List<RecipeVo> recipeList = recipeService.getRecipeList(mList);
			 // System.out.println(recipeList);
			 
			 
			 recipeService.deleteRecipe(userId);
			 
			 
			 
			 
			 ModelAndView  mv          = new ModelAndView();
			 mv.setViewName("cook/test"); 
			 mv.addObject("recipeList", finalRecipe);
			 mv.addObject("map",map);
			 
			 return mv;
		 }
		 
		 @RequestMapping("/Cook/Show")
		 public ModelAndView show(
				 @RequestParam HashMap<String, Object> map) {
			 
			 List<RecipeVo> recipeList = recipeService.getRecipeList();

			 ModelAndView  mv          = new ModelAndView();
			 mv.setViewName("cook/show"); 
			 mv.addObject("recipeList", recipeList);
			 mv.addObject("map",map);
			 
			 return mv;
		 }
	 
		// 유저 레시피창으로 이동
		    @RequestMapping("/Cook/UserWrite")
		    public ModelAndView moveRecipe() {
		        
		        ModelAndView mv = new ModelAndView();
		        mv.setViewName("cook/user_recipe");
		        return mv;
		    }	
		 
		    // 유저 레시피 받아서 DB저장
		    @RequestMapping("/Cook/UserRecipe")
		    public ModelAndView userRecipe(
		    		@RequestParam("food") MultipartFile food,
		    		@RequestParam("img") List<MultipartFile> images,
		            @RequestParam(value = "na", required = false) int na,
		            @RequestParam(value = "car", required = false) int car,
		            @RequestParam(value = "fat", required = false) int fat,
		            @RequestParam(value = "pro", required = false) int pro,
		            @RequestParam(value = "tip", required = false) String tip,
		            @RequestParam(value = "title", required = false) String title,
		            @RequestParam(value = "step1", required = false) String step1,
		            @RequestParam(value = "step2", required = false) String step2,
		            @RequestParam(value = "step3", required = false) String step3,
		            @RequestParam(value = "step4", required = false) String step4,
		            @RequestParam(value = "step5", required = false) String step5,
		            @RequestParam(value = "step6", required = false) String step6,
		            @RequestParam(value = "hashtag", required = false) String hashtag,
		            @RequestParam(value = "ingredient", required = false) String ingredient,
		            HttpServletRequest request
		    ) {
		    	
//	            
		    	  User_RecipeVo vo = new User_RecipeVo();
		    	  vo.setRCP_NM(title);
		    	  vo.setINFO_NA(na);
		    	  vo.setINFO_CAR(car);
		    	  vo.setINFO_FAT(fat);
		    	  vo.setINFO_PRO(pro);
		    	  vo.setRCP_NA_TIP(tip);
		    	  vo.setHASH_TAG(hashtag);
		    	  vo.setRCP_PARTS_DTLS(ingredient);
		    	  vo.setMANUAL01(step1);
		    	  vo.setMANUAL02(step2);
		    	  vo.setMANUAL03(step3);
		    	  vo.setMANUAL04(step4);
		    	  vo.setMANUAL05(step5);
		    	  vo.setMANUAL06(step6);
		    	  
		    	  
		    	byte[] imageByte = null;
				try {
					imageByte = food.getBytes();
				} catch (IOException e1) {					
					e1.printStackTrace();
				}
				//  System.out.println("x"); 여기는 들어옴.
		    	  vo.setATT_FILE_NO_MAIN(convertToByteArray(imageByte));
		     
		    	  // 이미지 업로드 및 바이트 배열로 변환
		    	    if (images != null && !images.isEmpty()) {
		    	        int imgCount = 1; // 이미지 번호 초기화
		    	        for (MultipartFile image : images) {
		    	            try {
		    	                byte[] imageBytes = image.getBytes();
		    	                // 이미지 바이트 배열 데이터를 User_RecipeVo 객체에 저장
		    	                switch (imgCount) {
		    	                    case 1:
		    	                        vo.setMANUAL_IMG01(convertToByteArray(imageBytes));
		    	                        break;
		    	                    case 2:
		    	                        vo.setMANUAL_IMG02(convertToByteArray(imageBytes));
		    	                        break;
		    	                    case 3:
		    	                        vo.setMANUAL_IMG03(convertToByteArray(imageBytes));
		    	                        break;
		    	                    case 4:
		    	                        vo.setMANUAL_IMG04(convertToByteArray(imageBytes));
		    	                        break;
		    	                    case 5:
		    	                        vo.setMANUAL_IMG05(convertToByteArray(imageBytes));
		    	                        break;
		    	                    case 6:
		    	                        vo.setMANUAL_IMG06(convertToByteArray(imageBytes));
		    	                        break;
		    	                    default:
		    	                        // 예외 처리: 너무 많은 이미지가 업로드되었을 때 처리
		    	                        break;
		    	                }
		    	                imgCount++; // 다음 이미지 번호 증가
		    	            } catch (IOException e) {
		    	                // 예외 처리
		    	                e.printStackTrace();
		    	            }
		    	        }
		    	    }

		    	  
		  
	
		    	// 세션에서 사용자 아이디 가져오기
		    	  HttpSession session = request.getSession();
		    	  String userId = (String) session.getAttribute("loginMember");
		    	  if (userId == null) {
		    		  userId="익명";
		    	  }
		    	  vo.setUSERID(userId);
		    	  
 	            
            //      System.out.println( "컨트롤러"+ vo);		    	  
		    	  recipeService.userRecipe(vo);
		    	  
		          ModelAndView mv = new ModelAndView();
		          mv.setViewName("index");
		          return mv;
		    }
		//----------------------------------------------------------------------------------------------------------	
		 // 이미지 Blob 데이터를 데이터베이스에 저장하는 대신 byte 배열로 변환
		    private byte[] convertToByteArray(byte[] bytes) {
		        return bytes;
		    }
		 
		    
		    
	    //---------------------------------------------------------------------------------------------------------
		    
		    
		    
		    
		    
		    
		    // 유저 레시피 들고오기
		    @RequestMapping("/Cook/User")
		    public ModelAndView getUserRecipe() {

                
		        // 유저 레시피 테이블 모두 들고오기
		        List<User_RecipeVo2> recipeList = recipeService.getUserRecipe();
                
/*
		        if (recipeList != null) {
		            for (User_RecipeVo2 recipe : recipeList) {
		                byte[] blob = recipe.getATT_FILE_NO_MAIN();
		                if (blob != null) {
		                    // 여기에서 바이트 배열 출력 또는 처리 가능
		                    System.out.println(blob);
		                }
		            }
		        }
*/        
		        /*
		     // recipeList에서 ATT_FILE_NO_MAIN을 가져와서 Base64 문자열로 변환
		        for (User_RecipeVo2 recipe : recipeList) {
		            byte[] imgByte = recipe.getATT_FILE_NO_MAIN2(); // ATT_FILE_NO_MAIN2 사용 (데이터베이스로부터 읽어온 바이트 배열)
		            if (imgByte != null) {
		                byte[] byteEnc64 = Base64.encodeBase64(imgByte);
		                String imgStr = new String(byteEnc64, "UTF-8");
		                recipe.setIMG0(imgStr);
		            }
		        }
	*/	        
		   
		        
		        ModelAndView mv = new ModelAndView();
		        mv.setViewName("cook/user_recipe_view");
		        mv.addObject("recipeList", recipeList);
		    //    System.out.println(recipeList);
		        return mv;
		    }	
		    
		    
			 // 그림을 눌렀을때 맞는 레시피 호출  
		    @RequestMapping("/Cook/UserSelect")
		    public ModelAndView UserRecipeSelect(@RequestParam("title") String recipeTitle) {
		    	
		    	List<User_RecipeVo2> recipeList = recipeService.getUserRecipeByTitle(recipeTitle);
		  //  	System.out.println(recipeList);	
		    	ModelAndView mv = new ModelAndView();
		    	mv.setViewName("cook/user_recipe_select");
		    	mv.addObject("recipeList", recipeList);
		    
		  //    	System.out.println(recipeList);
		    	return mv;
		    }
		    
 
		    @RequestMapping("/test/popup.do")
		    public String pop() {
		    	return "popup/popuptest";
		    }
		    
		    

			 // 리뷰 창 띄우기
			    @RequestMapping("/Cook/Review")
			    public ModelAndView reView() {
			       
			       ModelAndView mv = new ModelAndView();
			       mv.setViewName("review/review");
			       return mv;
			    }	
			    
			   // 리뷰 창 띄우기
			    @RequestMapping("/Cook/Review2")
			    public ModelAndView reView2(@RequestParam(value = "rating", required = false) String rating) {
			        System.out.println("별점: " + rating);
			        ModelAndView mv = new ModelAndView();
			        mv.setViewName("review/review");
			        return mv;
			    }
		    
		    
		    
		    
		    
		    
		    
		    
}

