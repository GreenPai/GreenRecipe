package com.green.recipe.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.green.recipe.service.RecipeService;
import com.green.recipe.vo.MatarialVo;
import com.green.recipe.vo.RecipeVo;

@Controller
public class RecipeController {
	
	@Autowired
	private RecipeService recipeService;
	
	@RequestMapping("/getRecipe")
	public ModelAndView recipe() {
	@RequestMapping("/getRecipe")
	public ModelAndView recipe() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("cook/recipe1");		
		
		return mv;
	}

	 @RequestMapping("/Cook/View")
	 public ModelAndView view(
			 @RequestParam HashMap<String, Object> map
			 ){
		
		 System.out.println(map);
			
			String    meats        =  String.valueOf( map.get("meats") );
			String [] meatArr      =  meats.split(",");
			
			String    mades        =  String.valueOf( map.get("mades") );
			String [] madeArr      =  mades.split(",");
			
			String    grains       =  String.valueOf( map.get("graines") );
			String [] grainArr     =  grains.split(",");
			
			String    seefoods     =  String.valueOf( map.get("seefoods") );
			String [] seefoodArr   =  seefoods.split(",");
			
			String    vegitables   =  String.valueOf( map.get("vegitables") );
			String [] vegitableArr =  vegitables.split(",");

		
		 // 재료 목록
		 List<MatarialVo> meatList      = recipeService.getMetarialList("MEAT");
		 List<MatarialVo> madeList      = recipeService.getMetarialList("MADE");
		 List<MatarialVo> grainList     = recipeService.getMetarialList("GRAIN");
		 List<MatarialVo> seefoodList   = recipeService.getMetarialList("SEEFOOD");
		 List<MatarialVo> vegitableList = recipeService.getMetarialList("VEGITABLE");
	@RequestMapping("/getRecipe")
	public ModelAndView recipe() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("cook/recipe1");		
		
		return mv;
	}

	 @RequestMapping("/Cook/View")
	 public ModelAndView view(
			 @RequestParam HashMap<String, Object> map
			 ){
		
		 System.out.println(map);
			
			String    meats        =  String.valueOf( map.get("meats") );
			String [] meatArr      =  meats.split(",");
			
			String    mades        =  String.valueOf( map.get("mades") );
			String [] madeArr      =  mades.split(",");
			
			String    grains       =  String.valueOf( map.get("graines") );
			String [] grainArr     =  grains.split(",");
			
			String    seefoods     =  String.valueOf( map.get("seefoods") );
			String [] seefoodArr   =  seefoods.split(",");
			
			String    vegitables   =  String.valueOf( map.get("vegitables") );
			String [] vegitableArr =  vegitables.split(",");

		
		 // 재료 목록
		 List<MatarialVo> meatList      = recipeService.getMetarialList("MEAT");
		 List<MatarialVo> madeList      = recipeService.getMetarialList("MADE");
		 List<MatarialVo> grainList     = recipeService.getMetarialList("GRAIN");
		 List<MatarialVo> seefoodList   = recipeService.getMetarialList("SEEFOOD");
		 List<MatarialVo> vegitableList = recipeService.getMetarialList("VEGITABLE");
	@RequestMapping("/getRecipe")
	public ModelAndView recipe() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("cook/recipe1");		
		
		return mv;
	}

	 @RequestMapping("/Cook/View")
	 public ModelAndView view(
			 @RequestParam HashMap<String, Object> map
			 ){
		
		 System.out.println(map);
			
			String    meats        =  String.valueOf( map.get("meats") );
			String [] meatArr      =  meats.split(",");
			
			String    mades        =  String.valueOf( map.get("mades") );
			String [] madeArr      =  mades.split(",");
			
			String    grains       =  String.valueOf( map.get("graines") );
			String [] grainArr     =  grains.split(",");
			
			String    seefoods     =  String.valueOf( map.get("seefoods") );
			String [] seefoodArr   =  seefoods.split(",");
			
			String    vegitables   =  String.valueOf( map.get("vegitables") );
			String [] vegitableArr =  vegitables.split(",");

		
		 // 재료 목록
		 List<MatarialVo> meatList      = recipeService.getMetarialList("MEAT");
		 List<MatarialVo> madeList      = recipeService.getMetarialList("MADE");
		 List<MatarialVo> grainList     = recipeService.getMetarialList("GRAIN");
		 List<MatarialVo> seefoodList   = recipeService.getMetarialList("SEEFOOD");
		 List<MatarialVo> vegitableList = recipeService.getMetarialList("VEGITABLE");
	@RequestMapping("/getRecipe")
	public ModelAndView recipe() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("cook/recipe1");		
		
		return mv;
	}

	 @RequestMapping("/Cook/View")
	 public ModelAndView view(
			 @RequestParam HashMap<String, Object> map
			 ){
		
		 System.out.println(map);
			
			String    meats        =  String.valueOf( map.get("meats") );
			String [] meatArr      =  meats.split(",");
			
			String    mades        =  String.valueOf( map.get("mades") );
			String [] madeArr      =  mades.split(",");
			
			String    grains       =  String.valueOf( map.get("graines") );
			String [] grainArr     =  grains.split(",");
			
			String    seefoods     =  String.valueOf( map.get("seefoods") );
			String [] seefoodArr   =  seefoods.split(",");
			
			String    vegitables   =  String.valueOf( map.get("vegitables") );
			String [] vegitableArr =  vegitables.split(",");

		
		 // 재료 목록
		 List<MatarialVo> meatList      = recipeService.getMetarialList("MEAT");
		 List<MatarialVo> madeList      = recipeService.getMetarialList("MADE");
		 List<MatarialVo> grainList     = recipeService.getMetarialList("GRAIN");
		 List<MatarialVo> seefoodList   = recipeService.getMetarialList("SEEFOOD");
		 List<MatarialVo> vegitableList = recipeService.getMetarialList("VEGITABLE");
	@RequestMapping("/getRecipe")
	public ModelAndView recipe() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("cook/recipe1");		
		
		return mv;
	}

	 @RequestMapping("/Cook/View")
	 public ModelAndView view(
			 @RequestParam HashMap<String, Object> map
			 ){
		
		 System.out.println(map);
			
			String    meats        =  String.valueOf( map.get("meats") );
			String [] meatArr      =  meats.split(",");
			
			String    mades        =  String.valueOf( map.get("mades") );
			String [] madeArr      =  mades.split(",");
			
			String    grains       =  String.valueOf( map.get("graines") );
			String [] grainArr     =  grains.split(",");
			
			String    seefoods     =  String.valueOf( map.get("seefoods") );
			String [] seefoodArr   =  seefoods.split(",");
			
			String    vegitables   =  String.valueOf( map.get("vegitables") );
			String [] vegitableArr =  vegitables.split(",");

		
		 // 재료 목록
		 List<MatarialVo> meatList      = recipeService.getMetarialList("MEAT");
		 List<MatarialVo> madeList      = recipeService.getMetarialList("MADE");
		 List<MatarialVo> grainList     = recipeService.getMetarialList("GRAIN");
		 List<MatarialVo> seefoodList   = recipeService.getMetarialList("SEEFOOD");
		 List<MatarialVo> vegitableList = recipeService.getMetarialList("VEGITABLE");
	@RequestMapping("/getRecipe")
	public ModelAndView recipe() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("cook/recipe1");		
		
		return mv;
	}

	 @RequestMapping("/Cook/View")
	 public ModelAndView view(
			 @RequestParam HashMap<String, Object> map
			 ){
		
		 System.out.println(map);
			
			String    meats        =  String.valueOf( map.get("meats") );
			String [] meatArr      =  meats.split(",");
			
			String    mades        =  String.valueOf( map.get("mades") );
			String [] madeArr      =  mades.split(",");
			
			String    grains       =  String.valueOf( map.get("graines") );
			String [] grainArr     =  grains.split(",");
			
			String    seefoods     =  String.valueOf( map.get("seefoods") );
			String [] seefoodArr   =  seefoods.split(",");
			
			String    vegitables   =  String.valueOf( map.get("vegitables") );
			String [] vegitableArr =  vegitables.split(",");

		
		 // 재료 목록
		 List<MatarialVo> meatList      = recipeService.getMetarialList("MEAT");
		 List<MatarialVo> madeList      = recipeService.getMetarialList("MADE");
		 List<MatarialVo> grainList     = recipeService.getMetarialList("GRAIN");
		 List<MatarialVo> seefoodList   = recipeService.getMetarialList("SEEFOOD");
		 List<MatarialVo> vegitableList = recipeService.getMetarialList("VEGITABLE");
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("cook/recipe1");		
		 String           menu_id       = String.valueOf( map.get("menu_id") );		
		 map.put("menu_id", menu_id);
		
		return mv;
	}
	
	
	 @RequestMapping("/Cook/Menu")
	 public ModelAndView menu(
			 @RequestParam HashMap<String, Object> map) {
		
		 System.out.println(map);
		
		

		 String meats              = String.valueOf(map.get("meats"));
		 String mades              = String.valueOf(map.get("mades"));
		 String grains             = String.valueOf(map.get("grains"));
		 String seefoods           = String.valueOf(map.get("seefoods"));
		 String vegitables         = String.valueOf(map.get("vegitables"));
		
		 String materials          =    meats    + "," + mades  + "," + grains + ","
				                      + seefoods + "," + "," + vegitables;
		
		 System.out.println(materials);
		 List<String> mList = new ArrayList<>();
		 for (String mat : materials.split(",")) {
			 if(  !mat.equals("") )
			    mList.add( mat );
         }
		 System.out.println(mList);
		
		 		
		 List<RecipeVo> recipeList = recipeService.getRecipeList(mList);
		 System.out.println(recipeList);
		
		 ModelAndView  mv          = new ModelAndView();
		 mv.setViewName("cook/menu"); // 레시피 목록 페이지로 이동
		 mv.addObject("recipeList", recipeList);
		 mv.addObject("map",map);
		
		 return mv;
		
	 }
	
	 // 원하는 SQL문을 호출하는 메서드
	    @RequestMapping("/Cook/Han")
	    public ModelAndView getRecipeByHashTag() {
	        String hashTag = "한식"; // 한식 태그에 대한 값을 들고오기 위한 초기값

	        // 해당 해시태그에 대한 레시피 가져오기
	        List<RecipeVo> recipeList = recipeService.getRecipeByHashTag(hashTag);

	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("cook/han");
	        mv.addObject("recipeList", recipeList);
	        System.out.println(recipeList);
	        return mv;
	    }	

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
