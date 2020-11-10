package com.kh.notice.model.vo;

import java.util.Date;

public class Notice {

	private int noticeNo;
	private String noticeTitle;
	private String noticeContent;
	private Date noticeEnroll;
	private int noticeViews;
	
	public Notice() {}

	public Notice(int noticeNo, String noticeTitle, String noticeContent, Date noticeEnroll, int noticeViews) {
		super();
		this.noticeNo = noticeNo;
		this.noticeTitle = noticeTitle;
		this.noticeContent = noticeContent;
		this.noticeEnroll = noticeEnroll;
		this.noticeViews = noticeViews;
	}
	
	

	public Notice(int noticeNo, String noticeTitle, int noticeViews, Date noticeEnroll) {
		super();
		this.noticeNo = noticeNo;
		this.noticeTitle = noticeTitle;
		this.noticeEnroll = noticeEnroll;
		this.noticeViews = noticeViews;
	}
	

	public Notice(int noticeNo, String noticeTitle, String noticeContent, Date noticeEnroll) {
		super();
		this.noticeNo = noticeNo;
		this.noticeTitle = noticeTitle;
		this.noticeContent = noticeContent;
		this.noticeEnroll = noticeEnroll;
	}

	public int getNoticeNo() {
		return noticeNo;
	}

	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}

	public String getNoticeTitle() {
		return noticeTitle;
	}

	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}

	public String getNoticeContent() {
		return noticeContent;
	}

	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}

	public Date getNoticeEnroll() {
		return noticeEnroll;
	}

	public void setNoticeEnroll(Date noticeEnroll) {
		this.noticeEnroll = noticeEnroll;
	}

	public int getNoticeViews() {
		return noticeViews;
	}

	public void setNoticeViews(int noticeViews) {
		this.noticeViews = noticeViews;
	}

	@Override
	public String toString() {
		return "Notice [noticeNo=" + noticeNo + ", noticeTitle=" + noticeTitle + ", noticeContent=" + noticeContent
				+ ", noticeEnroll=" + noticeEnroll + ", noticeViews=" + noticeViews + "]";
	}

	
	
	
}
