package com.green.recipe.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.green.recipe.dao.RecipeDao;
import com.green.recipe.service.RecipeService;
import com.green.recipe.vo.MatarialVo;
import com.green.recipe.vo.RecipeVo;
import com.green.recipe.vo.RecipecntVo;
import com.green.recipe.vo.User_RecipeVo;
import com.green.recipe.vo.User_RecipeVo2;

@Service("recipeService")
public class RecipeServiceImpl implements RecipeService{
	
	@Autowired
	RecipeDao recipeDao;



	@Override
	public List<MatarialVo> getMetarialList(String key) {
		
		List<MatarialVo> matarialList = recipeDao.getMetarialList(key);
		
		return matarialList;
	}



	@Override
	public List<RecipeVo> getRecipeList(List<String> mList) {
		
         List<RecipeVo> recipeList = recipeDao.getRecipeList(mList);
		
		return recipeList;
	}
    


	@Override
	public List<RecipeVo> getRecipeByHashTag(String hashTag) {
		List<RecipeVo>  recipeList  =  recipeDao.getRecipeByHashTag(hashTag);
		return recipeList;
	}


	@Override
	public List<RecipeVo> getRecipeByTitle(String recipeTitle) {
		List<RecipeVo>  recipeList  =  recipeDao.getRecipeByTitle(recipeTitle);
		return recipeList;
	}



	@Override
	public List<RecipeVo> getRecipeByquery(String query) {
		List<RecipeVo>  recipeList  =  recipeDao.getRecipeByquery(query);
		return recipeList;
	}
	
	@Override
	public List<RecipeVo> getRecipeList() {
		
		List<RecipeVo> recipeList = recipeDao.getRecipeList();
		
		return recipeList;
	}



	@Override
	public List<RecipeVo> getRecipeByTitle(HashMap<String, Object> map) {
		
		List<RecipeVo> recipeList = recipeDao.getRecipeByTitle(map);

		return recipeList;
	}



	@Override
	public void setCountUpdate(HashMap<String, Object> map) {
		
		recipeDao.setCountUpdate( map );
		
		
	}



	@Override
	public void userRecipe(User_RecipeVo vo) {
	    System.out.println("서비스:  " +vo);
		recipeDao.userRecipe( vo );

	}



	@Override
	public List<User_RecipeVo2> getUserRecipe() {
		List<User_RecipeVo2> recipeList = recipeDao.getUserRecipe();
		return recipeList;
	}



	@Override
	public List<User_RecipeVo2> getUserRecipeByTitle(String recipeTitle) {
		List<User_RecipeVo2>  recipeList  =  recipeDao.getUserRecipeByTitle(recipeTitle);
		return recipeList;
	}



	@Override
	public List<RecipeVo> getRecipeList2(String mat) {
		List<RecipeVo> recipeList= recipeDao.getRecipeList2(mat);
		return recipeList;
	}



	@Override
	public List<RecipecntVo> getTitle() {
		List<RecipecntVo> recipeList= recipeDao.getTitle();
		return recipeList;
	}



	@Override
	public void insertTitle1(String recipeTitle) {
		recipeDao.insertTitle1( recipeTitle );
		
	}



	@Override
	public void insertTitle2(String recipeTitle, String userId) {
		recipeDao.insertTitle2( recipeTitle ,userId);
		
	}



	@Override
	public List<RecipecntVo> getFinalList() {
		List<RecipecntVo> FinalList= recipeDao.FinalList();
		return FinalList;
	}



	@Override
	public List<RecipeVo> getFinalRecipe(String rCP_NM) {
		List<RecipeVo> recipeList= recipeDao.getFinalRecipe(rCP_NM);
		return recipeList;
	}



	@Override
	public void deleteRecipe(String userId) {
		recipeDao.deleteRecipe( userId);
		
	}










	






	
}