package com.green.recipe.vo;

public class RecipecntVo {
     
	private String RCP_NM;
	private String RECIPE_ID;
	private int    CNT;
	
	public String getRCP_NM() {
		return RCP_NM;
	}
	public void setRCP_NM(String rCP_NM) {
		RCP_NM = rCP_NM;
	}
	public String getRECIPE_ID() {
		return RECIPE_ID;
	}
	public void setRECIPE_ID(String rECIPE_ID) {
		RECIPE_ID = rECIPE_ID;
	}
	public int getCNT() {
		return CNT;
	}
	public void setCNT(int cNT) {
		CNT = cNT;
	}
	@Override
	public String toString() {
		return "RecipecntVo [RCP_NM=" + RCP_NM + ", RECIPE_ID=" + RECIPE_ID + ", CNT=" + CNT + "]";
	}
	public RecipecntVo(String rCP_NM, String rECIPE_ID, int cNT) {
		super();
		RCP_NM = rCP_NM;
		RECIPE_ID = rECIPE_ID;
		CNT = cNT;
	}
	public RecipecntVo() {
		super();
	}
		
	


	}
	
	
	









