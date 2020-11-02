package com.kh.mypage.model.vo;

import java.sql.Date;

public class MyQNA {
	
	      private int qnaNo;
	      private int orderNo;
	      private int memNo;
	      private String mQnaTitle;
	      private int mCount;
	      private Date mRegDate;
	      private String mQnaContent;
	      private String mQnaAnswer;
	      private String mQnaCategory;
	      private String mQnaStatement;
	      
	      public MyQNA() {}

		public MyQNA(int qnaNo, int orderNo, int memNo, String mQnaTitle, int mCount, Date mRegDate, String mQnaContent,
				String mQnaAnswer, String mQnaCategory, String mQnaStatement) {
			super();
			this.qnaNo = qnaNo;
			this.orderNo = orderNo;
			this.memNo = memNo;
			this.mQnaTitle = mQnaTitle;
			this.mCount = mCount;
			this.mRegDate = mRegDate;
			this.mQnaContent = mQnaContent;
			this.mQnaAnswer = mQnaAnswer;
			this.mQnaCategory = mQnaCategory;
			this.mQnaStatement = mQnaStatement;
		}
		
		

		public MyQNA(int orderNo, String mQnaTitle, String mQnaCategory, Date mRegDate) {
			super();
			this.orderNo = orderNo;
			this.mQnaCategory = mQnaCategory;
			this.mQnaTitle = mQnaTitle;
			this.mRegDate = mRegDate;
			
		}

		public int getQnaNo() {
			return qnaNo;
		}

		public void setQnaNo(int qnaNo) {
			this.qnaNo = qnaNo;
		}

		public int getOrderNo() {
			return orderNo;
		}

		public void setOrderNo(int orderNo) {
			this.orderNo = orderNo;
		}

		public int getMemNo() {
			return memNo;
		}

		public void setMemNo(int memNo) {
			this.memNo = memNo;
		}

		public String getmQnaTitle() {
			return mQnaTitle;
		}

		public void setmQnaTitle(String mQnaTitle) {
			this.mQnaTitle = mQnaTitle;
		}

		public int getmCount() {
			return mCount;
		}

		public void setmCount(int mCount) {
			this.mCount = mCount;
		}

		public Date getmRegDate() {
			return mRegDate;
		}

		public void setmRegDate(Date mRegDate) {
			this.mRegDate = mRegDate;
		}

		public String getmQnaContent() {
			return mQnaContent;
		}

		public void setmQnaContent(String mQnaContent) {
			this.mQnaContent = mQnaContent;
		}

		public String getmQnaAnswer() {
			return mQnaAnswer;
		}

		public void setmQnaAnswer(String mQnaAnswer) {
			this.mQnaAnswer = mQnaAnswer;
		}

		public String getmQnaCategory() {
			return mQnaCategory;
		}

		public void setmQnaCategory(String mQnaCategory) {
			this.mQnaCategory = mQnaCategory;
		}

		public String getmQnaStatement() {
			return mQnaStatement;
		}

		public void setmQnaStatement(String mQnaStatement) {
			this.mQnaStatement = mQnaStatement;
		}

		@Override
		public String toString() {
			return "MyQNA [qnaNo=" + qnaNo + ", orderNo=" + orderNo + ", memNo=" + memNo + ", mQnaTitle=" + mQnaTitle
					+ ", mCount=" + mCount + ", mRegDate=" + mRegDate + ", mQnaContent=" + mQnaContent + ", mQnaAnswer="
					+ mQnaAnswer + ", mQnaCategory=" + mQnaCategory + ", mQnaStatement=" + mQnaStatement + "]";
		}
	      
	      
	

}
