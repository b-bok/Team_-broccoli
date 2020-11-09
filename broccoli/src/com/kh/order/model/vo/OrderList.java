package com.kh.order.model.vo;

public class OrderList {
	
	private int memNo;				// 회원번호
	private int pNo;				// 상품번호
	private String pName;			// 상품이름
	private String thumbnail;		// 썸네일경로
	private int totalAmt;			// 총금액
	private int pPrice;				// 상품가격
	private int quantity;			// 수량
	private int orderNo;			// 주문번호
	private String orderCon;		// 주문상태
	
	
	
	public OrderList() {}


	public OrderList(int memNo, int pNo, int totalAmt, int pPrice, int quantity, int orderNo, String orderCon) {
		super();
		this.memNo = memNo;
		this.pNo = pNo;
		this.totalAmt = totalAmt;
		this.pPrice = pPrice;
		this.quantity = quantity;
		this.orderNo = orderNo;
		this.orderCon = orderCon;
	}
	

	public OrderList(int memNo, int pNo, String pName, String thumbnail, int totalAmt, int pPrice, int quantity,
			int orderNo) {
		super();
		this.memNo = memNo;
		this.pNo = pNo;
		this.pName = pName;
		this.thumbnail = thumbnail;
		this.totalAmt = totalAmt;
		this.pPrice = pPrice;
		this.quantity = quantity;
		this.orderNo = orderNo;
	}
	
	


	public String getpName() {
		return pName;
	}


	public void setpName(String pName) {
		this.pName = pName;
	}


	public String getThumbnail() {
		return thumbnail;
	}


	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}


	public int getMemNo() {
		return memNo;
	}


	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}


	public int getpNo() {
		return pNo;
	}


	public void setpNo(int pNo) {
		this.pNo = pNo;
	}


	public int getTotalAmt() {
		return totalAmt;
	}


	public void setTotalAmt(int totalAmt) {
		this.totalAmt = totalAmt;
	}


	public int getpPrice() {
		return pPrice;
	}


	public void setpPrice(int pPrice) {
		this.pPrice = pPrice;
	}


	public int getQuantity() {
		return quantity;
	}


	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}


	public int getOrderNo() {
		return orderNo;
	}


	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}


	public String getOrderCon() {
		return orderCon;
	}


	public void setOrderCon(String orderCon) {
		this.orderCon = orderCon;
	}


	@Override
	public String toString() {
		return "OrderList [memNo=" + memNo + ", pNo=" + pNo + ", pName=" + pName + ", thumbnail=" + thumbnail
				+ ", totalAmt=" + totalAmt + ", pPrice=" + pPrice + ", quantity=" + quantity + ", orderNo=" + orderNo
				+ ", orderCon=" + orderCon + "]";
	}
	
	

}
