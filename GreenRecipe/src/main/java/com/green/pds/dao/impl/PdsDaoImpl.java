package com.green.pds.dao.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.pds.dao.PdsDao;
import com.green.pds.vo.FilesVo;
import com.green.pds.vo.PdsVo;

@Repository("pdsDao")
public class PdsDaoImpl implements PdsDao {

	@Autowired	
	private  SqlSession   sqlSession;
	
	@Override
	public List<PdsVo> getPdsList(HashMap<String, Object> map) {
		
		int      totalcount              =  sqlSession.selectOne("Pds.GetTotalCount", map);
		map.put("totalcount",  totalcount);
		
		List<PdsVo>  pdsList  =  sqlSession.selectList("Pds.PdsList", map );  
		return   pdsList;
	}

	@Override
	public void setWrite(HashMap<String, Object> map) {
		
		// db 에 정보 저장
		/*
		2:{lvl=, nref=, bnum=0, step=, writer=aaa, title=aaa, cont=aaa, menu_id=MENU01,
		  fileList=[
			 FilesVo [file_num=0, idx=0, filename=history-flower.jpg, fileext=.jpg, sfilename=history-flower.jpg], 
			 FilesVo [file_num=0, idx=0, filename=색상영역.jpg, fileext=.jpg, sfilename=색상영역.jpg], 
			 FilesVo [file_num=0, idx=0, filename=Apple.jpg, fileext=.jpg, sfilename=Apple.jpg]
		  ]
	    }
	    */
		
		System.out.println("dao:" + map);
		
		// Board
		int  bnum  =  Integer.parseInt( String.valueOf( map.get("bnum") ) );
		if( bnum == 0  ) { // 새글
			sqlSession.insert("Pds.PdsInsert",  map );
		} else {           // 답글			
			sqlSession.update("Pds.StepUpdate", map );
			sqlSession.insert("Pds.PdsReply",   map );
		}
		
		// Files
		List<FilesVo>  fileList =  (List<FilesVo>) map.get("fileList");
		if( fileList.size() != 0 )
			sqlSession.insert("Pds.FileInsert", map);
		
	}

	@Override
	public PdsVo getView(HashMap<String, Object> map) {
		
		PdsVo   pdsVo  =  sqlSession.selectOne("Pds.PdsView", map);
		
		return  pdsVo;
	}

	@Override
	public List<FilesVo> getFileList(HashMap<String, Object> map) {
		
		List<FilesVo>  fileList  =  sqlSession.selectList("Pds.FileList", map);
		
		return  fileList;
	}

	@Override
	public void setDelete(HashMap<String, Object> map) {

		List<FilesVo> fileList = sqlSession.selectList("Pds.FileList", map); 
		map.put("fileList", fileList);
		
		sqlSession.delete("Pds.FileDelete", map);   // 게시글 관련 파일들 삭제
		sqlSession.delete("Pds.PdsDelete",  map);   // 게시글 삭제
				
	}

	@Override
	public void deleteUploadFile(HashMap<String, Object> map) {
		
		sqlSession.delete("Pds.FileDelete2", map);
		
	}

	@Override
	public void setUpdate(HashMap<String, Object> map) {
		
		// 1. Board 정보 수정
		sqlSession.update( "Pds.PdsUpdate", map );
		
		// 2. Files 에 데이터 추가
		// Files
		List<FilesVo>  fileList =  (List<FilesVo>) map.get("fileList");
		if( fileList.size() != 0 )
			sqlSession.insert("Pds.FileInsert2", map);
				
	}

	@Override
	public void setReadcountUpdate(HashMap<String, Object> map) {
		
		sqlSession.update("Pds.ReadcountUpdate", map);
		
	}

	@Override
	public List<PdsVo> getPdsList() {
		List<PdsVo>   pdsVo  =  sqlSession.selectOne("Pds.PdsView");
		return pdsVo;
	}

	@Override
	public PdsVo boardBoomUp(PdsVo vo) {
		sqlSession.update("Pds.BoardBoomUp", vo);	
		sqlSession.insert("Pds.insertc_reply", vo);
		PdsVo  pdsVo = sqlSession.selectOne("Pds.PdsGetBoom", vo);
		return pdsVo;
	}

	@Override
	public PdsVo boardBoomDown(PdsVo vo) {
		sqlSession.update("Pds.BoardBoomDown", vo);
		sqlSession.insert("Pds.insertc_reply", vo);
		PdsVo pdsVo = sqlSession.selectOne("Pds.PdsLostBoom",vo);
		return pdsVo;
	}

	@Override 
	public boolean PdsBoomCheck(int idx , String userid ) { 
		int count = sqlSession.selectOne( "Pds.PdsBoomCheck" , new HashMap<String,Object>() {{
		    put( "idx", idx); 
		    put( "userid", userid); 
		}});
		return count > 0; 
	}

	@Override
	public List<FilesVo> PdsfileName(HashMap<String, Object> map) {
    	
		// 답글의 경우에는  idx, menu_id 가 들어오고
		// 새 글의 경우에는 idx가 들어오고 menu_id가 안들어오는걸 확인해서 만듬.
		
		// 제목의 경우에는 [답글]이 붙어있는 경우에는 특수문자 사용으로 사용이 안되길래 제목은 뺐음.
		
		List<FilesVo> filename=new ArrayList<>();
		if (  map.get("menu_id") == null) {
		      filename = sqlSession.selectList("Pds.FileName", map);
		}else {
			 filename = sqlSession.selectList("Pds.FileName2", map);
		}
		 
	//	PdsVo   pdsVo  =  sqlSession.selectOne("Pds.PdsView", map);
	//	String  menu_name =  sqlSession.selectOne("Menus.MenuName", menu_id)
	//	System.out.println(filename);
		return filename;
	}
	
}





