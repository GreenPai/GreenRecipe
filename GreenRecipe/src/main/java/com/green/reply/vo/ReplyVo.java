package com.green.reply.vo;

public class ReplyVo {
    // FIELD
	private int      rno;
	private int      idx;
	private String   replywriter;
	private String   reply;
	private String   replydate;
	
	public ReplyVo() {}
	// CONSTRUCTOR

	public ReplyVo(int rno, int idx, String replywriter, String reply, String replydate) {
		super();
		this.rno = rno;
		this.idx = idx;
		this.replywriter = replywriter;
		this.reply = reply;
		this.replydate = replydate;
	}

	public int getRno() {
		return rno;
	}

	public void setRno(int rno) {
		this.rno = rno;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getReplywriter() {
		return replywriter;
	}

	public void setReplywriter(String replywriter) {
		this.replywriter = replywriter;
	}

	public String getReply() {
		return reply;
	}

	public void setReply(String reply) {
		this.reply = reply;
	}

	public String getReplydate() {
		return replydate;
	}

	public void setReplydate(String replydate) {
		this.replydate = replydate;
	}

	@Override
	public String toString() {
		return "ReplyVo [rno=" + rno + ", idx=" + idx + ", replywriter=" + replywriter + ", reply=" + reply
				+ ", replydate=" + replydate + "]";
	}

	
}