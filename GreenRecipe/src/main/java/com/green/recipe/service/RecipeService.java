package com.green.recipe.service;

import java.util.List;


import com.green.recipe.vo.MatarialVo;
import com.green.recipe.vo.RecipeVo;

public interface RecipeService {
	
	List<MatarialVo> getMetarialList(String key);

	List<RecipeVo> getRecipeList(List<String> mList);
	
	List<RecipeVo> getRecipeByHashTag(String hashTag);

}







