package com.green.recipe.dao;

import java.util.HashMap;
import java.util.List;

import com.green.recipe.vo.MatarialVo;
import com.green.recipe.vo.RecipeVo;

public interface RecipeDao {

	List<MatarialVo> getMetarialList(String key);

	List<RecipeVo> getRecipeList(List<String> mList);
	
	List<RecipeVo> getRecipeByHashTag(String hashTag);

	List<RecipeVo> getRecipeByTitle(String recipeTitle);

	List<RecipeVo> getRecipeByquery(String query);
	
	List<RecipeVo> getRecipeList();

	List<RecipeVo> getRecipeByTitle(HashMap<String, Object> map);

	void setCountUpdate(HashMap<String, Object> map);




}