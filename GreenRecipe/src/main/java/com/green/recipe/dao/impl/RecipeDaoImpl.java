package com.green.recipe.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.recipe.dao.RecipeDao;
import com.green.recipe.vo.RecipeVo;


@Repository("recipeDao")
public class RecipeDaoImpl implements RecipeDao {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<RecipeVo> getRecipeList(String re_no) {
		
		List<RecipeVo> recipeList = sqlSession.selectList("Cook.RecipeList", re_no);
		
		return recipeList;
	}

	@Override
	public List<RecipeVo> getRecipeByHashTag(String hashTag) {
		 List<RecipeVo> recipeList = sqlSession.selectList("Cook.RecipeHan", hashTag);

		    return recipeList;
	}

	
	
	  

}