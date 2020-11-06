package com.kh.report.model.vo;

import java.sql.Date;

public class Report {
	
	private int reportNo;			//신고번호(PK)
	private String mem;				//회원번호 --> Review VO 에 작성된 데이터타입기준으로 작성 
	private String reportCategory;	//리포트카테고리(리뷰, 레시피)
	private int boardNo;			//리뷰번호, 레시피번호
	private Date reportDate;		//신고일자
	private String reportContent;	//신고내용
	private String reportResult;	//신고결과
	private String blackConYn;		//블랙컨슈머유무(Y:블랙컨슈머, N:아님)
	private String blidingYn;		//게시글 블라인딩유무(Y:신고한 게시글 블라인딩, N:아님)
	
	
	public Report() {}
	public Report(int reportNo, String mem, String reportCategory, int boardNo, Date reportDate, String reportContent,
			String reportResult, String blackConYn, String blidingYn) {
		this.reportNo = reportNo;
		this.mem = mem;
		this.reportCategory = reportCategory;
		this.boardNo = boardNo;
		this.reportDate = reportDate;
		this.reportContent = reportContent;
		this.reportResult = reportResult;
		this.blackConYn = blackConYn;
		this.blidingYn = blidingYn;
	}
	
	
	public int getReportNo() {
		return reportNo;
	}
	public void setReportNo(int reportNo) {
		this.reportNo = reportNo;
	}
	public String getMem() {
		return mem;
	}
	public void setMem(String mem) {
		this.mem = mem;
	}
	public String getReportCategory() {
		return reportCategory;
	}
	public void setReportCategory(String reportCategory) {
		this.reportCategory = reportCategory;
	}
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public Date getReportDate() {
		return reportDate;
	}
	public void setReportDate(Date reportDate) {
		this.reportDate = reportDate;
	}
	public String getReportContent() {
		return reportContent;
	}
	public void setReportContent(String reportContent) {
		this.reportContent = reportContent;
	}
	public String getReportResult() {
		return reportResult;
	}
	public void setReportResult(String reportResult) {
		this.reportResult = reportResult;
	}
	public String getBlackConYn() {
		return blackConYn;
	}
	public void setBlackConYn(String blackConYn) {
		this.blackConYn = blackConYn;
	}
	public String getBlidingYn() {
		return blidingYn;
	}
	public void setBlidingYn(String blidingYn) {
		this.blidingYn = blidingYn;
	}
	
	
	@Override
	public String toString() {
		return "Report [reportNo=" + reportNo + ", mem=" + mem + ", reportCategory=" + reportCategory + ", boardNo="
				+ boardNo + ", reportDate=" + reportDate + ", reportContent=" + reportContent + ", reportResult="
				+ reportResult + ", blackConYn=" + blackConYn + ", blidingYn=" + blidingYn + "]";
	}
	
	
	
	
	

}
