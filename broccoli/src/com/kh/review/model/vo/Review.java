package com.kh.review.model.vo;

import java.sql.Date;

public class Review {
	private int reviewNo;	// 리뷰 번호
	private int pno;		// 상품번호
	private String mem;		// 회원번호 or 회원 아이디
	private Date regDate;	// 등록일
	private String reviewTitle;	// 리뷰제목
	private String reviewContent;	// 리뷰 내용
	private int clickNo;			// 조회수
	private int reviewRate;			//평점
	private int like;
	private String reviewAttach;	// 리뷰첨부파일 ex 이미지
	
	public Review() {}


	public Review(int reviewNo, int pno, String mem, Date regDate, String reviewTitle, String reviewContent, int clickNo,
			int reviewRate, int like, String reviewAttach) {
		super();
		this.reviewNo = reviewNo;
		this.pno = pno;
		this.mem = mem;
		this.regDate = regDate;
		this.reviewTitle = reviewTitle;
		this.reviewContent = reviewContent;
		this.clickNo = clickNo;
		this.reviewRate = reviewRate;
		this.like = like;
		this.reviewAttach = reviewAttach;
	}
	
	
	

	public String getReviewAttach() {
		return reviewAttach;
	}


	public void setReviewAttach(String reviewAttach) {
		this.reviewAttach = reviewAttach;
	}


	public int getReviewNo() {
		return reviewNo;
	}


	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
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


	public String getReviewTitle() {
		return reviewTitle;
	}


	public void setReviewTitle(String reviewTitle) {
		this.reviewTitle = reviewTitle;
	}


	public String getReviewContent() {
		return reviewContent;
	}


	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}


	public int getClickNo() {
		return clickNo;
	}


	public void setClickNo(int clickNo) {
		this.clickNo = clickNo;
	}


	public int getReviewRate() {
		return reviewRate;
	}


	public void setReviewRate(int reviewRate) {
		this.reviewRate = reviewRate;
	}


	public int getLike() {
		return like;
	}


	public void setLike(int like) {
		this.like = like;
	}


	@Override
	public String toString() {
		return "Review [reviewNo=" + reviewNo + ", pno=" + pno + ", mem=" + mem + ", regDate=" + regDate
				+ ", reviewTitle=" + reviewTitle + ", reviewContent=" + reviewContent + ", clickNo=" + clickNo
				+ ", reviewRate=" + reviewRate + ", like=" + like + ", reviewAttach=" + reviewAttach + "]";
	}



	
	
	
}
