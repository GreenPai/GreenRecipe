package com.green.recipe.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.green.recipe.service.RecipeService;
import com.green.recipe.vo.RecipeVo;

@Controller
public class RecipeController {
	
	@Autowired
	private RecipeService recipeService;
	
	// 레시피 조회
	@RequestMapping("/Cook/List")
	public ModelAndView list(
			@RequestParam HashMap<String, Object> map ) {
		
		
		String          re_no     =  String.valueOf( map.get("re_no") );
		
		// 레시피 목록
		List<RecipeVo> recipeList = recipeService.getRecipeList(re_no);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("cook/list");		
		mv.addObject("recipeList", recipeList);
		mv.addObject("map", map);
		
		return mv;
	}
	
	
	
	
	
	
	/*
	 * // 열량 조회
	 * 
	 * @RequestMapping("Recipe/Infom") public ModelAndView list(
	 * 
	 * @RequestParam HashMap<String, Object> map ) {
	 * 
	 * 
	 * // 열량 목록 List<KcalVo> foodList = recipeService.getFoodList();
	 * 
	 * String menu_name = recipeService.getMenu_name();
	 * 
	 * ModelAndView mv = new ModelAndView(); mv.setViewName("recipe/inform");
	 * mv.addObject("foodList", foodList ); mv.addObject("map", map ); return mv;
	 * 
	 * }
	 */

}
