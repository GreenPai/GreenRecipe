package com.green.recipe.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.green.recipe.dao.RecipeDao;
import com.green.recipe.service.RecipeService;
import com.green.recipe.vo.RecipeVo;

@Service("recipeService")
public class RecipeServiceImpl implements RecipeService{
	
	@Autowired
	RecipeDao recipeDao;

	@Override
	public List<RecipeVo> getRecipeList(String re_no) {
		
        List<RecipeVo>  recipeList  =  recipeDao.getRecipeList( re_no );  
		
		return recipeList;
	}
}
