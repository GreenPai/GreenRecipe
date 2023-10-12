package com.green.reply.service;

import java.util.List;

import com.green.reply.vo.ReplyVo;

public interface ReplyService {

	List<ReplyVo> getReplyList( ReplyVo vo);

	void insertReply(ReplyVo vo);

	List<ReplyVo> getReplyList(int idx);

	void replyUpdate(ReplyVo vo);

	void deleteReply(int rno);

}
