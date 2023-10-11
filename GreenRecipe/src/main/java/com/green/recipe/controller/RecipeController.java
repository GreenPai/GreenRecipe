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
	
	// -------------------------- 여기부터 수정
	
	
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

	
	
	
	
	
	
	/*
	 @RequestMapping("/Cook/Han")
	    public ModelAndView Han(
	    		@RequestParam HashMap<String, Object> map) {
		
		 String RCP_NM = String.valueOf(map.get("RCP_NM"));
		 String RCP_PARTS_DTLS = String.valueOf(map.get("RCP_PARTS_DTLS"));
		 String MANUAL01 = String.valueOf(map.get("MANUAL01"));
		 String MANUAL02 = String.valueOf(map.get("MANUAL02"));
		 String MANUAL03 = String.valueOf(map.get("MANUAL03"));
		 String MANUAL04 = String.valueOf(map.get("MANUAL04"));
		 String MANUAL05 = String.valueOf(map.get("MANUAL05"));
		 String MANUAL06 = String.valueOf(map.get("MANUAL06"));
		 String MANUAL07 = String.valueOf(map.get("MANUAL07"));
		 String MANUAL08 = String.valueOf(map.get("MANUAL08"));
		 String MANUAL09 = String.valueOf(map.get("MANUAL09"));
		
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("cook/han");
	     mv.addObject("RCP_NM", RCP_NM);
	     mv.addObject("RCP_PARTS_DTLS", RCP_PARTS_DTLS);
	     mv.addObject("MANUAL01", MANUAL01);
	     mv.addObject("MANUAL02", MANUAL02);
	     mv.addObject("MANUAL03", MANUAL03);
	     mv.addObject("MANUAL04", MANUAL04);
	     mv.addObject("MANUAL05", MANUAL05);
	     mv.addObject("MANUAL06", MANUAL06);
	     mv.addObject("MANUAL07", MANUAL07);
	     mv.addObject("MANUAL08", MANUAL08);
	     mv.addObject("MANUAL09", MANUAL09);

	     return mv;
	    }
     */
	
}



