package com.green.recipe.vo;

public class MatarialVo {
	private String menu_id;
	private String menu_name;
	
	public MatarialVo() {}
	public MatarialVo(String menu_id, String menu_name) {
		this.menu_id = menu_id;
		this.menu_name = menu_name;
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
	
	@Override
	public String toString() {
		return "MenuVo [menu_id=" + menu_id + ", menu_name=" + menu_name + "]";
	}
	
	
	
	
	
	}