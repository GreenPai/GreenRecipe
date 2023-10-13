package com.green.recipe.dao;

import java.util.List;

import com.green.recipe.vo.MatarialVo;
import com.green.recipe.vo.RecipeVo;

public interface RecipeDao {

	List<MatarialVo> getMetarialList(String key);

	List<RecipeVo> getRecipeList(List<String> mList);
	
	List<RecipeVo> getRecipeByHashTag(String hashTag);

	List<RecipeVo> getRecipeByTitle(String recipeTitle);

	List<RecipeVo> getRecipeByquery(String query);

}