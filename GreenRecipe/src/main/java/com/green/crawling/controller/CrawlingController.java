package com.green.crawling.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.green.crawling.service.CrawlingService;
import com.green.crawling.vo.CrawlingVo;

@Controller
public class CrawlingController {

    @Autowired
    private CrawlingService crawlingService;
    
    @RequestMapping("/Tip")
    public ModelAndView tip() {
    	ModelAndView mv = new ModelAndView();
    	mv.setViewName("crw/tip");
    	return mv;
    }
    
    @RequestMapping("/Crw")
    public ModelAndView crawl() {
    	ModelAndView mv = new ModelAndView();
    	mv.setViewName("crw/list");
    	return mv;
    }
    
    
    @RequestMapping("/Crw/Start")
    public ModelAndView crawlAndDownload() {
        ModelAndView mv = new ModelAndView();

        // CrawlingService를 사용하여 크롤링 및 이미지 다운로드 로직 실행
        CrawlingVo result = crawlingService.crawlAndDownload("https://www.10000recipe.com/recipe/6880684");
        
        System.out.println( result);
        
        mv.addObject("title", result.getTitle());
        mv.addObject("ingredients", result.getIngredients());
        mv.addObject("cont", result.getCont());
        mv.addObject("imageUrl", result.getImageUrl());
      //  mv.setViewName("crw/list"); // 결과를 보여줄 뷰 이름
        mv.setViewName("crw/list");
        
        return mv;
    }
}


