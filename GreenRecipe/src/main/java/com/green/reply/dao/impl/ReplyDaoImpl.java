package com.green.reply.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.reply.dao.ReplyDao;
import com.green.reply.vo.ReplyVo;

@Repository("replyDao")
public class ReplyDaoImpl implements ReplyDao {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<ReplyVo> getReplyList(ReplyVo vo) {
		List<ReplyVo> replyList = sqlSession.selectList("Reply.replyList", vo);
		return replyList;
	}

	@Override
	public void insertReply(ReplyVo vo) {
		sqlSession.insert("Reply.insertReply",vo);

	}

	@Override
	public List<ReplyVo> getReplyList(int idx) {
		List<ReplyVo> replyList = sqlSession.selectList("Reply.replyList", idx);
		return replyList;
	}

	@Override
	public void updateReply(ReplyVo vo) {
		sqlSession.update("Reply.updateReply",vo);
	}

	@Override
	public void deleteReply(ReplyVo vo) {
		sqlSession.delete("Reply.deleteReply",vo);
		
	}

}