package com.green.recipe.vo;

public class RecipeVo {
	private int    re_no;
	private String re_title;
	private String re_ingred;
	private String re_cont;
	private String re_img;
	private String recipe_category;
	private int    readcount;
	private int    kcal;
	
	public RecipeVo() {}
	public RecipeVo(int re_no, String re_title, String re_ingred, String re_cont, String re_img, String recipe_category,
			int readcount, int kcal) {

		this.re_no = re_no;
		this.re_title = re_title;
		this.re_ingred = re_ingred;
		this.re_cont = re_cont;
		this.re_img = re_img;
		this.recipe_category = recipe_category;
		this.readcount = readcount;
		this.kcal = kcal;
	}
	public int getRe_no() {
		return re_no;
	}
	public void setRe_no(int re_no) {
		this.re_no = re_no;
	}
	public String getRe_title() {
		return re_title;
	}
	public void setRe_title(String re_title) {
		this.re_title = re_title;
	}
	public String getRe_ingred() {
		return re_ingred;
	}
	public void setRe_ingred(String re_ingred) {
		this.re_ingred = re_ingred;
	}
	public String getRe_cont() {
		return re_cont;
	}
	public void setRe_cont(String re_cont) {
		this.re_cont = re_cont;
	}
	public String getRe_img() {
		return re_img;
	}
	public void setRe_img(String re_img) {
		this.re_img = re_img;
	}
	public String getRecipe_category() {
		return recipe_category;
	}
	public void setRecipe_category(String recipe_category) {
		this.recipe_category = recipe_category;
	}
	public int getReadcount() {
		return readcount;
	}
	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}
	public int getKcal() {
		return kcal;
	}
	public void setKcal(int kcal) {
		this.kcal = kcal;
	}
	@Override
	public String toString() {
		return "RecipeVo [re_no=" + re_no + ", re_title=" + re_title + ", re_ingred=" + re_ingred + ", re_cont="
				+ re_cont + ", re_img=" + re_img + ", recipe_category=" + recipe_category + ", readcount=" + readcount
				+ ", kcal=" + kcal + "]";
	}
	
	
	}
	
	
	









