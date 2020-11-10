package com.kh.qna.model.vo;

import java.sql.Date;

public class Qna {

	private int qnaNo;			// 상품문의 번호
	private int pno;			// 상품번호
	private String memId;		// 유저번호 유저아이디
	private String pName;		// 상품명
	private String qnaTitle;	// 문의제목
	private String qnaDetail;	// 문의내용
	private String qnaAnswer;	// 답변내용
	private Date qnaDate;		// 문의날짜
	private String qnaYn;		// 답변여부
	private String noticeYn;	// 공지사항여부
	private String secret;		// 비밀글여부

	private String email;		// 이메일
	private String mobile;		// 전화번호
	
	
	public Qna() {}


	public Qna(int qnaNo, int pno, String memId, String pName, String qnaTitle, String qnaDetail, String qnaAnswer,
			Date qnaDate, String qnaYn, String noticeYn, String secret, String email, String mobile) {
		super();
		this.qnaNo = qnaNo;
		this.pno = pno;
		this.memId = memId;
		this.pName = pName;
		this.qnaTitle = qnaTitle;
		this.qnaDetail = qnaDetail;
		this.qnaAnswer = qnaAnswer;
		this.qnaDate = qnaDate;
		this.qnaYn = qnaYn;
		this.noticeYn = noticeYn;
		this.secret = secret;
		this.email = email;
		this.mobile = mobile;
	}


	
	
	


	public Qna(int qnaNo, int pno, String pName, String memId,  String qnaTitle, String qnaDetail, String secret) {
		super();
		this.qnaNo = qnaNo;
		this.pno = pno;
		this.memId = memId;
		this.pName = pName;
		this.qnaTitle = qnaTitle;
		this.qnaDetail = qnaDetail;
		this.secret = secret;

	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getMobile() {
		return mobile;
	}


	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	
	
	public int getQnaNo() {
		return qnaNo;
	}


	public void setQnaNo(int qnaNo) {
		this.qnaNo = qnaNo;
	}


	public int getPno() {
		return pno;
	}


	public void setPno(int pno) {
		this.pno = pno;
	}


	public String getMemId() {
		return memId;
	}


	public void setMemId(String memId) {
		this.memId = memId;
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


	public Date getQnaDate() {
		return qnaDate;
	}


	public void setQnaDate(Date qnaDate) {
		this.qnaDate = qnaDate;
	}


	public String getQnaYn() {
		return qnaYn;
	}


	public void setQnaYn(String qnaYn) {
		this.qnaYn = qnaYn;
	}


	public String getNoticeYn() {
		return noticeYn;
	}


	public void setNoticeYn(String noticeYn) {
		this.noticeYn = noticeYn;
	}


	public String getSecret() {
		return secret;
	}


	public void setSecret(String secret) {
		this.secret = secret;
	}


	@Override
	public String toString() {
		return "Qna [qnaNo=" + qnaNo + ", pno=" + pno + ", memId=" + memId + ", pName=" + pName + ", qnaTitle="
				+ qnaTitle + ", qnaDetail=" + qnaDetail + ", qnaAnswer=" + qnaAnswer + ", qnaDate=" + qnaDate
				+ ", qnaYn=" + qnaYn + ", noticeYn=" + noticeYn + ", secret=" + secret + ", email=" + email
				+ ", mobile=" + mobile + "]";
	}


}
