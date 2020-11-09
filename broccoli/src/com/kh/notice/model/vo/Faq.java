package com.kh.notice.model.vo;

import java.util.Date;

public class Faq {
	
	private int faqNo;
	private String faqTitle;
	private String faqContent;
	private Date faqEnroll;
	private int grFaqName;
	
	public Faq() {}

	public Faq(int faqNo, String faqTitle, String faqContent, Date faqEnroll, int grFaqName) {
		super();
		this.faqNo = faqNo;
		this.faqTitle = faqTitle;
		this.faqContent = faqContent;
		this.faqEnroll = faqEnroll;
		this.grFaqName = grFaqName;
	}

	public int getFaqNo() {
		return faqNo;
	}

	public void setFaqNo(int faqNo) {
		this.faqNo = faqNo;
	}

	public String getFaqTitle() {
		return faqTitle;
	}

	public void setFaqTitle(String faqTitle) {
		this.faqTitle = faqTitle;
	}

	public String getFaqContent() {
		return faqContent;
	}

	public void setFaqContent(String faqContent) {
		this.faqContent = faqContent;
	}

	public Date getFaqEnroll() {
		return faqEnroll;
	}

	public void setFaqEnroll(Date faqEnroll) {
		this.faqEnroll = faqEnroll;
	}

	public int getGrFaqName() {
		return grFaqName;
	}

	public void setGrFaqName(int grFaqName) {
		this.grFaqName = grFaqName;
	}

	@Override
	public String toString() {
		return "Faq [faqNo=" + faqNo + ", faqTitle=" + faqTitle + ", faqContent=" + faqContent + ", faqEnroll="
				+ faqEnroll + ", grFaqName=" + grFaqName + "]";
	}
	
	
	
}
