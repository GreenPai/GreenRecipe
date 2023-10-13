package com.green.recipe.controller;

import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.Base64;
import java.util.HashMap;
import java.util.List;
import javax.imageio.ImageIO;

import net.coobird.thumbnailator.Thumbnails;

import org.imgscalr.Scalr;
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
		
		
		 String           menu_id       = String.valueOf( map.get("menu_id") );		
		 map.put("menu_id", menu_id);
		
		 ModelAndView mv = new ModelAndView();
		 mv.setViewName("cook/view");
		 mv.addObject("meatArr",       meatArr);
		 mv.addObject("madeArr",       madeArr);
		 mv.addObject("grainArr",      grainArr);
		 mv.addObject("seefoodArr",    seefoodArr);
		 mv.addObject("vegitableArr",  vegitableArr);
		 mv.addObject("meatList",      meatList);
		 mv.addObject("madeList",      madeList);
		 mv.addObject("grainList",     grainList);
		 mv.addObject("seefoodList",   seefoodList);
		 mv.addObject("vegitableList", vegitableList);
		 mv.addObject("map", map);
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
	

	 // 한식
	    @RequestMapping("/Cook/Han")
	    public ModelAndView getRecipeByHashTag() {
	        String hashTag = "한식"; // 한식 태그에 대한 값을 들고오기 위한 초기값

	        // 해당 해시태그에 대한 레시피 가져오기
	        List<RecipeVo> recipeList = recipeService.getRecipeByHashTag(hashTag);

	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("cook/han");
	        mv.addObject("recipeList", recipeList);
	 //       System.out.println(recipeList);
	        return mv;
	    }	
	    
	 // 일식
	    @RequestMapping("/Cook/Jap")
	    public ModelAndView getRecipeByHashTag2() {
	        String hashTag = "일식"; // 한식 태그에 대한 값을 들고오기 위한 초기값

	        // 해당 해시태그에 대한 레시피 가져오기
	        List<RecipeVo> recipeList = recipeService.getRecipeByHashTag(hashTag);

	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("cook/jap");
	        mv.addObject("recipeList", recipeList);
	 //       System.out.println(recipeList);
	        return mv;
	    }	
	    
	 // 양식
	    @RequestMapping("/Cook/Yang")
	    public ModelAndView getRecipeByHashTag3() {
	        String hashTag = "양식"; // 한식 태그에 대한 값을 들고오기 위한 초기값

	        // 해당 해시태그에 대한 레시피 가져오기
	        List<RecipeVo> recipeList = recipeService.getRecipeByHashTag(hashTag);

	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("cook/yang");
	        mv.addObject("recipeList", recipeList);
	 //       System.out.println(recipeList);
	        return mv;
	    }	
	    
	    
	 // 중식
	    @RequestMapping("/Cook/Chi")
	    public ModelAndView getRecipeByHashTag4() {
	        String hashTag = "중식"; // 한식 태그에 대한 값을 들고오기 위한 초기값

	        // 해당 해시태그에 대한 레시피 가져오기
	        List<RecipeVo> recipeList = recipeService.getRecipeByHashTag(hashTag);

	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("cook/chi");
	        mv.addObject("recipeList", recipeList);
	 //       System.out.println(recipeList);
	        return mv;
	    }	
	    
	 // 그림을 눌렀을때 맞는 레시피 호출  
	    @RequestMapping("/Cook/Select")
	    public ModelAndView han2(@RequestParam("title") String recipeTitle) {
	    	
	    	List<RecipeVo> recipeList = recipeService.getRecipeByTitle(recipeTitle);
	        	
	    	ModelAndView mv = new ModelAndView();
	    	mv.setViewName("cook/select");
	    	mv.addObject("recipeList", recipeList);
	   //   	System.out.println(recipeList);
	    	return mv;
	    }
	    
	   // 검색한 레시피 호출
	    @RequestMapping("/Cook/Search")
	    public ModelAndView searchRecipes(@RequestParam("query") String query) {
	    	
	    	System.out.println(query);
	    	List<RecipeVo> recipeList = recipeService.getRecipeByquery(query);  
	            		
	    	ModelAndView mv = new ModelAndView();
	    	mv.setViewName("cook/search");
	    	mv.addObject("recipeList", recipeList);
	    //	System.out.println(recipeList);
	    	return mv;
	        }
}






































