package com.kh.recipe.model.vo;

import java.sql.Date;

public class Recipe {
	
	private int recipeNo;			//레시피번호 
	private int pno;				//상품번호
	private String mem;				//회원번호 or 회원 아이디
	private Date regDate;			//등록일
	private String recipeTitle;		//레시피제목 
	private String recipeIng;		//레시피재료
	private int clickNo;			//조회수
	private String recipeMainImg;	//레시피메인이미지
	
	public Recipe() {}

	public Recipe(int recipeNo, int pno, String mem, Date regDate, String recipeTitle, String recipeIng, int clickNo,
			String recipeMainImg) {
		this.recipeNo = recipeNo;
		this.pno = pno;
		this.mem = mem;
		this.regDate = regDate;
		this.recipeTitle = recipeTitle;
		this.recipeIng = recipeIng;
		this.clickNo = clickNo;
		this.recipeMainImg = recipeMainImg;
	}

	
	public int getRecipeNo() {
		return recipeNo;
	}

	public void setRecipeNo(int recipeNo) {
		this.recipeNo = recipeNo;
	}

	public int getPno() {
		return pno;
	}

	public void setPno(int pno) {
		this.pno = pno;
	}

	public String getMem() {
		return mem;
	}

	public void setMem(String mem) {
		this.mem = mem;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public String getRecipeTitle() {
		return recipeTitle;
	}

	public void setRecipeTitle(String recipeTitle) {
		this.recipeTitle = recipeTitle;
	}

	public String getRecipeIng() {
		return recipeIng;
	}

	public void setRecipeIng(String recipeIng) {
		this.recipeIng = recipeIng;
	}

	public int getClickNo() {
		return clickNo;
	}

	public void setClickNo(int clickNo) {
		this.clickNo = clickNo;
	}

	public String getRecipeMainImg() {
		return recipeMainImg;
	}

	public void setRecipeMainImg(String recipeMainImg) {
		this.recipeMainImg = recipeMainImg;
	}

	@Override
	public String toString() {
		return "Recipe [recipeNo=" + recipeNo + ", pno=" + pno + ", mem=" + mem + ", regDate=" + regDate
				+ ", recipeTitle=" + recipeTitle + ", recipeIng=" + recipeIng + ", clickNo=" + clickNo
				+ ", recipeMainImg=" + recipeMainImg + "]";
	}
	
	

}
