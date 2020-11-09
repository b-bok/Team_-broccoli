package com.kh.recipe.model.vo;

public class RecipeAttach {

	private int myRecipeNo;		// 레시피별 고유번호
	private int recipeSequenceNo;	// 스텝별 레시피 번호
	private String sequenceContent;	// 스텝별 레시피 설명
	private int recipeNo;			// 해당 레시피 게시글 번호
	private String recipeAttachImg;	// 스텝별 레시피 이미지
	
	
	public RecipeAttach() {}


	public RecipeAttach(int myRecipeNo, int recipeSequenceNo, String sequenceContent, int recipeNo,
			String recipeAttachImg) {
		super();
		this.myRecipeNo = myRecipeNo;
		this.recipeSequenceNo = recipeSequenceNo;
		this.sequenceContent = sequenceContent;
		this.recipeNo = recipeNo;
		this.recipeAttachImg = recipeAttachImg;
	}


	public int getMyRecipeNo() {
		return myRecipeNo;
	}


	public void setMyRecipeNo(int myRecipeNo) {
		this.myRecipeNo = myRecipeNo;
	}


	public int getRecipeSequenceNo() {
		return recipeSequenceNo;
	}


	public void setRecipeSequenceNo(int recipeSequenceNo) {
		this.recipeSequenceNo = recipeSequenceNo;
	}


	public String getSequenceContent() {
		return sequenceContent;
	}


	public void setSequenceContent(String sequenceContent) {
		this.sequenceContent = sequenceContent;
	}


	public int getRecipeNo() {
		return recipeNo;
	}


	public void setRecipeNo(int recipeNo) {
		this.recipeNo = recipeNo;
	}


	public String getRecipeAttachImg() {
		return recipeAttachImg;
	}


	public void setRecipeAttachImg(String recipeAttachImg) {
		this.recipeAttachImg = recipeAttachImg;
	}


	@Override
	public String toString() {
		return "RecipeAttach [myRecipeNo=" + myRecipeNo + ", recipeSequenceNo=" + recipeSequenceNo
				+ ", sequenceContent=" + sequenceContent + ", recipeNo=" + recipeNo + ", recipeAttachImg="
				+ recipeAttachImg + "]";
	};
	
	
	
	
}
