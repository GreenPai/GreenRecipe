package com.green.recipe.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.recipe.dao.RecipeDao;
import com.green.recipe.vo.MatarialVo;
import com.green.recipe.vo.RecipeVo;


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



}















