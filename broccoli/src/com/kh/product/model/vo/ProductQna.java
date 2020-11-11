package com.kh.product.model.vo;

import java.sql.Date;

public class ProductQna {
//상품문의 테이블 객체
	private int qnaNo;			// 문의번호
	private int pNo;			// 상품번호
	private String memNo;		// 작성자회원번호
	private String pName;		// 상품명
	private String qnaTitle;	// 문의제목
	private String qnaDetail;	// 문의내용
	private String qnaAnswer;	// 답변내용
	private String yesNo;		// 답변여부
	private Date qnaDate;		// 작성일
	private String npticeYn;	// 공지여부
	private String secret;		// 비밀글여부
	
	public ProductQna() {}

	public ProductQna(int qnaNo, int pNo, String memNo, String pName, String qnaTitle, String qnaDetail, String qnaAnswer,
			String yesNo, Date qnaDate, String npticeYn, String secret) {
		super();
		this.qnaNo = qnaNo;
		this.pNo = pNo;
		this.memNo = memNo;
		this.pName = pName;
		this.qnaTitle = qnaTitle;
		this.qnaDetail = qnaDetail;
		this.qnaAnswer = qnaAnswer;
		this.yesNo = yesNo;
		this.qnaDate = qnaDate;
		this.npticeYn = npticeYn;
		this.secret = secret;
	}

	public int getQnaNo() {
		return qnaNo;
	}

	public void setQnaNo(int qnaNo) {
		this.qnaNo = qnaNo;
	}

	public int getpNo() {
		return pNo;
	}

	public void setpNo(int pNo) {
		this.pNo = pNo;
	}

	public String getMemNo() {
		return memNo;
	}

	public void setMemNo(String memNo) {
		this.memNo = memNo;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public String getQnaTitle() {
		return qnaTitle;
	}

	public void setQnaTitle(String qnaTitle) {
		this.qnaTitle = qnaTitle;
	}

	public String getQnaDetail() {
		return qnaDetail;
	}

	public void setQnaDetail(String qnaDetail) {
		this.qnaDetail = qnaDetail;
	}

	public String getQnaAnswer() {
		return qnaAnswer;
	}

	public void setQnaAnswer(String qnaAnswer) {
		this.qnaAnswer = qnaAnswer;
	}

	public String getYesNo() {
		return yesNo;
	}

	public void setYesNo(String yesNo) {
		this.yesNo = yesNo;
	}

	public Date getQnaDate() {
		return qnaDate;
	}

	public void setQnaDate(Date qnaDate) {
		this.qnaDate = qnaDate;
	}

	public String getNpticeYn() {
		return npticeYn;
	}

	public void setNpticeYn(String npticeYn) {
		this.npticeYn = npticeYn;
	}

	public String getSecret() {
		return secret;
	}

	public void setSecret(String secret) {
		this.secret = secret;
	}

	@Override
	public String toString() {
		return "ProductQna [qnaNo=" + qnaNo + ", pNo=" + pNo + ", memNo=" + memNo + ", pName=" + pName + ", qnaTitle="
				+ qnaTitle + ", qnaDetail=" + qnaDetail + ", qnaAnswer=" + qnaAnswer + ", yesNo=" + yesNo + ", qnaDate="
				+ qnaDate + ", npticeYn=" + npticeYn + ", secret=" + secret + "]";
	}
	
	
}
