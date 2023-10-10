package com.green.reply.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.green.pds.service.PdsService;
import com.green.pds.vo.PdsVo;
import com.green.reply.service.ReplyService;
import com.green.reply.vo.ReplyVo;

@RestController
@RequestMapping("/Reply")
public class ReplyController {

	@Autowired
	private   ReplyService replyService ;
	
	// 댓글 조회
	@RequestMapping("/ReplyList")
	@ResponseBody
	public  List<ReplyVo>  replylist( ReplyVo vo) {		
		// db 조회 정보가지고 온다
		List<ReplyVo>  replyList = replyService.getReplyList(vo);		
		System.out.println("reply :" + replyList);
		return  replyList; 
	}
   			
	@RequestMapping("/Write")
	@ResponseBody
	public String write(ReplyVo vo) {
	    System.out.println(vo);
	    replyService.insertReply(vo);
	    String result = "{\"result\":1}";
	    		
	    return result;
	}	

 }

