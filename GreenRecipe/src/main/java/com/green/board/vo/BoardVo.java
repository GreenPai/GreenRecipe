package com.green.board.vo;

public class BoardVo {
	// Fields
	private int      idx;
	private String   menu_id;
	private String   title;
	private String   cont;
	private String   writer;
	private String   regdate;
	private int      readcount;
	private int      bnum;
	private int      lvl;
	private int      step;
	private int      nref;
	private int      replyboomup;
	private int      replyboomdown;
	
	// Constructor
	public BoardVo() {}
	public BoardVo(int idx, String menu_id, String title, String cont, String writer, String regdate, int readcount,
			int bnum, int lvl, int step, int nref, int replyboomup, int replyboomdown) {
		super();
		this.idx = idx;
		this.menu_id = menu_id;
		this.title = title;
		this.cont = cont;
		this.writer = writer;
		this.regdate = regdate;
		this.readcount = readcount;
		this.bnum = bnum;
		this.lvl = lvl;
		this.step = step;
		this.nref = nref;
		this.replyboomup = replyboomup;
		this.replyboomdown = replyboomdown;
	}
	
	// Getter /Setter

	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getMenu_id() {
		return menu_id;
	}
	public void setMenu_id(String menu_id) {
		this.menu_id = menu_id;
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
	public int getReplyboomup() {
		return replyboomup;
	}
	public void setReplyboomup(int replyboomup) {
		this.replyboomup = replyboomup;
	}
	public int getReplyboomdown() {
		return replyboomdown;
	}
	public void setReplyboomdown(int replyboomdown) {
		this.replyboomdown = replyboomdown;
	}
	// toString
	@Override
	public String toString() {
		return "BoardVo [idx=" + idx + ", menu_id=" + menu_id + ", title=" + title + ", cont=" + cont + ", writer="
				+ writer + ", regdate=" + regdate + ", readcount=" + readcount + ", bnum=" + bnum + ", lvl=" + lvl
				+ ", step=" + step + ", nref=" + nref + ", replyboomup=" + replyboomup + ", replyboomdown="
				+ replyboomdown + "]";
	}
}
