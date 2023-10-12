package com.green.reply.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.reply.dao.ReplyDao;
import com.green.reply.service.ReplyService;
import com.green.reply.vo.ReplyVo;

@Service("replyService")
public class ReplyServiceImpl implements ReplyService {
	
	@Autowired
	private ReplyDao replyDao;

	@Override
	public List<ReplyVo> getReplyList( ReplyVo vo) {
		List<ReplyVo> replyList = replyDao.getReplyList(vo);
		return replyList;
	}

	@Override
	public void insertReply(ReplyVo vo) {
		replyDao.insertReply(vo);
		
	}

	@Override
	public List<ReplyVo> getReplyList(int idx) {
		List<ReplyVo> replyList = replyDao.getReplyList(idx);
		return replyList;
	}

	@Override
	public void replyUpdate(ReplyVo vo) {
		replyDao.updateReply(vo);
		
	}

	@Override
	public void deleteReply(int rno) {
		replyDao.deleteReply(rno);
		
	}
    
}
