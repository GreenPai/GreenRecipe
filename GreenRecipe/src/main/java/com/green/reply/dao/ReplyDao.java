package com.green.reply.dao;

import java.util.List;

import com.green.reply.vo.ReplyVo;

public interface ReplyDao {

	List<ReplyVo> getReplyList( ReplyVo vo);

	void insertReply(ReplyVo vo);

	List<ReplyVo> getReplyList(int idx);

	void updateReply(ReplyVo vo);

	void deleteReply(ReplyVo vo);

}
