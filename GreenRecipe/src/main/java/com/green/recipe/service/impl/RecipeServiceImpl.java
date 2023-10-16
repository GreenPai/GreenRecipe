package com.green.recipe.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.recipe.dao.RecipeDao;
import com.green.recipe.service.RecipeService;
import com.green.recipe.vo.MatarialVo;
import com.green.recipe.vo.RecipeVo;

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



	






	
}