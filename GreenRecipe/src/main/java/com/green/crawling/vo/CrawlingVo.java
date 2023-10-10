package com.green.crawling.vo;

public class CrawlingVo {
	
	    private String title;       // 제목
	    private String ingredients; // 재료
	    private String cont;      // 레시피
	    private String imageUrl;    // 이미지 URL

	    public String getTitle() {
			return title;
		}
		public void setTitle(String title) {
			this.title = title;
		}
		public String getIngredients() {
			return ingredients;
		}
		public void setIngredients(String ingredients) {
			this.ingredients = ingredients;
		}
		public String getCont() {
			return cont;
		}
		public void setCont(String cont) {
			this.cont = cont;
		}
		public String getImageUrl() {
			return imageUrl;
		}
		public void setImageUrl(String imageUrl) {
			this.imageUrl = imageUrl;
		}
		
		//생성자
		public CrawlingVo(String title, String ingredients, String cont, String imageUrl) {
			super();
			this.title = title;
			this.ingredients = ingredients;
			this.cont = cont;
			this.imageUrl = imageUrl;
		}
		
		
		//tostring
		@Override
		public String toString() {
			return "CrawlingVo [title=" + title + ", ingredients=" + ingredients + ", cont=" + cont + ", imageUrl="
					+ imageUrl + "]";
		}
		public CrawlingVo() {}
		
		
	
		
		
		
	
		
		
		
	    
}
