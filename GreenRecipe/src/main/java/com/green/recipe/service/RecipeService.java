package com.green.recipe.service;

import java.util.List;

import com.green.recipe.vo.RecipeVo;

public interface RecipeService {

	List<RecipeVo> getRecipeList(String re_no);

	
}
