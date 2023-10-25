package com.green.pds.vo;

public class PdsPagingVo {
	
	// Fields	
	// paging 처리를 위한 추가 정보
	// sql 문을 위한 변수
	private  int      nowpage;          // 현재 페이지
	private  int      pagecount;        // 현재 페이지에 보여줄 row 수
	private  int      totalcount;       // 전체 자료(row)수
	
	// paging.jsp 가 쓸 변수
	private  int      totalpagecount;   // 화면에 보여줄 페이지 수
	private  int      pagestartnum;     // 페이지 시작 번호
	private  int      pageendnum;       // 페이지 끝   번호
	
	// Constructor
	public PdsPagingVo(int nowpage, int pagecount, int totalcount, int totalpagecount, int pagestartnum,
			int pageendnum) {
		super();
		this.nowpage = nowpage;
		this.pagecount = pagecount;
		this.totalcount = totalcount;
		this.totalpagecount = totalpagecount;
		this.pagestartnum = pagestartnum;
		this.pageendnum = pageendnum;
	}

	// Getter / Setter

	public int getNowpage() {
		return nowpage;
	}

	public void setNowpage(int nowpage) {
		this.nowpage = nowpage;
	}

	public int getPagecount() {
		return pagecount;
	}

	public void setPagecount(int pagecount) {
		this.pagecount = pagecount;
	}

	public int getTotalcount() {
		return totalcount;
	}

	public void setTotalcount(int totalcount) {
		this.totalcount = totalcount;
	}

	public int getTotalpagecount() {
		return totalpagecount;
	}

	public void setTotalpagecount(int totalpagecount) {
		this.totalpagecount = totalpagecount;
	}

	public int getPagestartnum() {
		return pagestartnum;
	}

	public void setPagestartnum(int pagestartnum) {
		this.pagestartnum = pagestartnum;
	}

	public int getPageendnum() {
		return pageendnum;
	}

	public void setPageendnum(int pageendnum) {
		this.pageendnum = pageendnum;
	}

	// toString 
	
	@Override
	public String toString() {
		return "PdsPagingVo [nowpage=" + nowpage + ", pagecount=" + pagecount + ", totalcount=" + totalcount
				+ ", totalpagecount=" + totalpagecount + ", pagestartnum=" + pagestartnum + ", pageendnum=" + pageendnum
				+ "]";
	}
	
}



