package com.green.recipe.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import com.green.recipe.dao.RecipeDao;
import com.green.recipe.vo.MatarialVo;
import com.green.recipe.vo.RecipeVo;
import com.green.recipe.vo.RecipecntVo;
import com.green.recipe.vo.User_RecipeVo;
import com.green.recipe.vo.User_RecipeVo2;


@Repository("recipeDao")
public class RecipeDaoImpl implements RecipeDao {
	
	@Autowired
	private SqlSession sqlSession;


	@Override
	public List<MatarialVo> getMetarialList(String key) {
		// TODO Auto-generated method stub
		List<MatarialVo> matarialList = sqlSession.selectList("Cook.MatarialList", key);  
		return matarialList;
	}
	
	@Override
	public List<RecipeVo> getRecipeList(List<String> mList) {
		
		List<RecipeVo> recipeList = sqlSession.selectList("Cook.RecipeList", mList);
		
		return recipeList;
	}

	
	@Override
	public List<RecipeVo> getRecipeByHashTag(String hashTag) {
		 List<RecipeVo> recipeList = sqlSession.selectList("Cook.RecipeHan", hashTag);

		    return recipeList;
	}

	@Override
	public List<RecipeVo> getRecipeByTitle(String recipeTitle) {
		List<RecipeVo> recipeList = sqlSession.selectList("Cook.RecipeTitle", recipeTitle);
		return recipeList;
	}

	@Override
	public List<RecipeVo> getRecipeByquery(String query) {
		List<RecipeVo> recipeList = sqlSession.selectList("Cook.RecipeQuery", query);
		return recipeList;
	}
	
	@Override
	public List<RecipeVo> getRecipeList() {
		
		List<RecipeVo> recipeList = sqlSession.selectList("Cook.RecipeCount");
		
		return recipeList;
	}

	@Override
	public List<RecipeVo> getRecipeByTitle(HashMap<String, Object> map) {
		
		List<RecipeVo> recipeList = sqlSession.selectList("Cook.RecipeTitle", map);
		
		return recipeList;
	}

	@Override
	public void setCountUpdate(HashMap<String, Object> map) {
		
		sqlSession.update("Cook.CountUpdate", map);
		
	}

	@Override
	public void userRecipe(User_RecipeVo vo) {
			
		 String manual01 = vo.getMANUAL01();
		 String manual02 = vo.getMANUAL02();
		 String manual03 = vo.getMANUAL03();
		 String manual04 = vo.getMANUAL04();
		 String manual05 = vo.getMANUAL05();
		 String manual06 = vo.getMANUAL06();
		
		// SQL문을 선택
		 String sqlId = null;

		 if (manual06 != null) {
		        sqlId = "Cook.UserRecipeWithManual06";
		    } else if (manual05 != null) {
		        sqlId = "Cook.UserRecipeWithManual05";
		    } else if (manual04 != null) {
		        sqlId = "Cook.UserRecipeWithManual04";
		    } else if (manual03 != null) {
		        sqlId = "Cook.UserRecipeWithManual03";
		    } else if (manual02 != null) {
		        sqlId = "Cook.UserRecipeWithManual02";
		    } else if (manual01 != null) {
		        sqlId = "Cook.UserRecipeWithManual01";
		    } 
		 
		 
		 System.out.println("vo값" + vo);
		 System.out.println("USERID값" + vo.getUSERID());
		 System.out.println("RCP_NM값" + vo.getRCP_NM());
		 System.out.println("RCP_PARTS_DTLS값" + vo.getRCP_PARTS_DTLS());
		 System.out.println("ATT_FILE_NO_MAIN값" + vo.getATT_FILE_NO_MAIN());
		 System.out.println("USERID값" + vo.getUSERID());
		 System.out.println("MANUAL01값" + vo.getMANUAL01());
		 System.out.println("MANUAL02값" + vo.getMANUAL02());
		 System.out.println("MANUAL03값" + vo.getMANUAL03());
		 System.out.println("MANUAL04값" + vo.getMANUAL04());
		 System.out.println("MANUAL05값" + vo.getMANUAL05());
		 System.out.println("MANUAL06값" + vo.getMANUAL06());
		 System.out.println("MANUAL01값" + vo.getMANUAL_IMG01());
		 System.out.println("MANUAL02값" + vo.getMANUAL_IMG02());
		 System.out.println("MANUAL03값" + vo.getMANUAL_IMG03());
	

		System.out.println(sqlId);
		    if (sqlId != null) {
		        sqlSession.update(sqlId, vo);
		    }


	}

	@Override
	public List<User_RecipeVo2> getUserRecipe() {
        List<User_RecipeVo2> recipeList = sqlSession.selectList("Cook.UserRecipe");
        System.out.println( "다오 :" + recipeList);
		return recipeList;
	}

	@Override
	public List<User_RecipeVo2> getUserRecipeByTitle(String recipeTitle) {
		List<User_RecipeVo2> recipeList = sqlSession.selectList("Cook.UserRecipeTitle", recipeTitle);
		return recipeList;
	}

	@Override
	public List<RecipeVo> getRecipeList2(String mat) {
		List<RecipeVo> recipeList = sqlSession.selectList("Cook.getRecipeList", mat);	
		return recipeList;
	}

	@Override
	public List<RecipecntVo> getTitle() {
		List<RecipecntVo> recipeList = sqlSession.selectList("getTitle");	
		return recipeList;
	}

	@Override
	public void insertTitle1(String recipeTitle) {
		sqlSession.update("Cook.insertTitle1", recipeTitle);		
	}

	@Override
	public void insertTitle2(String recipeTitle, String userId) {
		
		Map<String, Object> params = new HashMap<>();
		params.put("recipeTitle", recipeTitle);
		params.put("userId", userId);
		
		sqlSession.update("Cook.insertTitle2", params);		
		
	}

	@Override
	public List<RecipecntVo> FinalList() {
		List<RecipecntVo> FinalList = sqlSession.selectList("getFinalList");	
		return FinalList;
	}

	@Override
	public List<RecipeVo> getFinalRecipe(String rCP_NM) {
		List<RecipeVo> recipeList = sqlSession.selectList("Cook.getFinalRecipe", rCP_NM);	
		return recipeList;
	}

	@Override
	public void deleteRecipe(String userId) {
		sqlSession.delete("Cook.deleteRecipe", userId);
		
	}

	
   

}















