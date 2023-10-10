package com.green.recipe.dao;

import java.util.List;

import com.green.recipe.vo.RecipeVo;

public interface RecipeDao {

	List<RecipeVo> getRecipeList(String re_no);

}
