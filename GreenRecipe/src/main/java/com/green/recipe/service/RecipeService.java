package com.green.recipe.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.green.recipe.vo.MatarialVo;
import com.green.recipe.vo.RecipeVo;
import com.green.recipe.vo.RecipecntVo;
import com.green.recipe.vo.User_RecipeVo;
import com.green.recipe.vo.User_RecipeVo2;

public interface RecipeService {
	
	List<MatarialVo> getMetarialList(String key);

	List<RecipeVo> getRecipeList(List<String> mList);
	
	List<RecipeVo> getRecipeByHashTag(String hashTag);

	List<RecipeVo> getRecipeByTitle(String recipeTitle);

	List<RecipeVo> getRecipeByquery(String query);
	
	List<RecipeVo> getRecipeList();

	List<RecipeVo> getRecipeByTitle(HashMap<String, Object> map);

	void setCountUpdate(HashMap<String, Object> map);

	void userRecipe(User_RecipeVo vo);

	List<User_RecipeVo2> getUserRecipe();

	List<User_RecipeVo2> getUserRecipeByTitle(String recipeTitle);

	List<RecipeVo> getRecipeList2(String mat);

	List<RecipecntVo> getTitle();

	void insertTitle1(String recipeTitle);

	List<RecipecntVo> getFinalList();

	List<RecipeVo> getFinalRecipe(String rCP_NM);

	void insertTitle2(String recipeTitle, String userId);

	void deleteRecipe(String userId);







}







