package com.green.reply.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
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
   	
	// 댓글 추가
	@RequestMapping("/Write")
	@ResponseBody
	public String write(ReplyVo vo) {
	    replyService.insertReply(vo);
	    String result = "{\"result\":1}";
	    		
	    return result;
	}	
	
	// 댓글 수정
	@RequestMapping("/Update")
	@ResponseBody
	public String update(ReplyVo vo) {
		replyService.replyUpdate(vo);
	    String result = "{\"result\":1}";
		
	    return result;
	}
	
	// 댓글 삭제
	@RequestMapping("/Delete")
	@ResponseBody
	public String delete(ReplyVo vo) {
		replyService.deleteReply(vo);
		String result = "{\"result\":1}";
		
		return result;
	}
 }

