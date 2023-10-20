package com.green.pds.vo;

public class PdsVo {
	// Board 자료
	private  int      idx;
	private  String   title;
	private  String   cont;
	private  String   writer;
	private  String   regdate;
	private  int      readcount;
	
	// Board 답변 관련 자료
	private  int      bnum;
	private  int      lvl;
	private  int      step;
	private  int      nref;
	
	// Board 추천 관련 자료
	private int      boardboomup;
	private int      boardboomdown;
	private int      bno;
	
	// File 정보 - 파일 자료수
	private  int      filescount;
	
	// 메뉴 정보
	private  String   menu_id;
	private  String   menu_name;
	private  int      menu_seq;
	
	// 댓글 정보
	private int      rno;
	private String   replywriter;
	private String   reply;
	private String   replydate;
	
	// 유저관련 
	private String userid;
	private String passwd;
	private String username;
	private String userbirth;
	private String email;
	private String indate;
	private String nickname;
	
	public PdsVo() {}

	public PdsVo(int idx, String title, String cont, String writer, String regdate, int readcount, int bnum, int lvl,
			int step, int nref, int boardboomup, int boardboomdown, int bno, int filescount,
			String menu_id, String menu_name, int menu_seq, int rno, String replywriter, String reply, String replydate,
			String userid, String passwd, String username, String userbirth, String email, String indate,
			String nickname) {
		super();
		this.idx = idx;
		this.title = title;
		this.cont = cont;
		this.writer = writer;
		this.regdate = regdate;
		this.readcount = readcount;
		this.bnum = bnum;
		this.lvl = lvl;
		this.step = step;
		this.nref = nref;
		this.boardboomup = boardboomup;
		this.boardboomdown = boardboomdown;
		this.bno = bno;
		this.filescount = filescount;
		this.menu_id = menu_id;
		this.menu_name = menu_name;
		this.menu_seq = menu_seq;
		this.rno = rno;
		this.replywriter = replywriter;
		this.reply = reply;
		this.replydate = replydate;
		this.userid = userid;
		this.passwd = passwd;
		this.username = username;
		this.userbirth = userbirth;
		this.email = email;
		this.indate = indate;
		this.nickname = nickname;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getCont() {
		return cont;
	}

	public void setCont(String cont) {
		this.cont = cont;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public int getReadcount() {
		return readcount;
	}

	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}

	public int getBnum() {
		return bnum;
	}

	public void setBnum(int bnum) {
		this.bnum = bnum;
	}

	public int getLvl() {
		return lvl;
	}

	public void setLvl(int lvl) {
		this.lvl = lvl;
	}

	public int getStep() {
		return step;
	}

	public void setStep(int step) {
		this.step = step;
	}

	public int getNref() {
		return nref;
	}

	public void setNref(int nref) {
		this.nref = nref;
	}

	public int getBoardboomup() {
		return boardboomup;
	}

	public void setBoardboomup(int boardboomup) {
		this.boardboomup = boardboomup;
	}

	public int getBoardboomdown() {
		return boardboomdown;
	}

	public void setBoardboomdown(int boardboomdown) {
		this.boardboomdown = boardboomdown;
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}


	public int getFilescount() {
		return filescount;
	}

	public void setFilescount(int filescount) {
		this.filescount = filescount;
	}

	public String getMenu_id() {
		return menu_id;
	}

	public void setMenu_id(String menu_id) {
		this.menu_id = menu_id;
	}

	public String getMenu_name() {
		return menu_name;
	}

	public void setMenu_name(String menu_name) {
		this.menu_name = menu_name;
	}

	public int getMenu_seq() {
		return menu_seq;
	}

	public void setMenu_seq(int menu_seq) {
		this.menu_seq = menu_seq;
	}

	public int getRno() {
		return rno;
	}

	public void setRno(int rno) {
		this.rno = rno;
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

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUserbirth() {
		return userbirth;
	}

	public void setUserbirth(String userbirth) {
		this.userbirth = userbirth;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getIndate() {
		return indate;
	}

	public void setIndate(String indate) {
		this.indate = indate;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	@Override
	public String toString() {
		return "PdsVo [idx=" + idx + ", title=" + title + ", cont=" + cont + ", writer=" + writer + ", regdate="
				+ regdate + ", readcount=" + readcount + ", bnum=" + bnum + ", lvl=" + lvl + ", step=" + step
				+ ", nref=" + nref + ", boardboomup=" + boardboomup + ", boardboomdown=" + boardboomdown + ", bno="
				+ bno + ", filescount=" + filescount + ", menu_id=" + menu_id + ", menu_name=" + menu_name
				+ ", menu_seq=" + menu_seq + ", rno=" + rno + ", replywriter=" + replywriter + ", reply=" + reply
				+ ", replydate=" + replydate + ", userid=" + userid + ", passwd=" + passwd + ", username=" + username
				+ ", userbirth=" + userbirth + ", email=" + email + ", indate=" + indate + ", nickname=" + nickname
				+ "]";
	}
	
}
	
	