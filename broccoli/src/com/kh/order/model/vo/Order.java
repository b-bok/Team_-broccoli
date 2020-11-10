package com.kh.order.model.vo;

import java.sql.Date;

public class Order {
	
	private int orderNo;			// 주문번호
	private int memNo;				// 회원번호
	private int deliverNo;			// 배송지번호
	private Date orderdate;			// 주문날짜
	private String orderCondition;	// 주문상태 - 결제전/결제완료
	private String memName;			// 주문자명
	private String zipcode;			// 우편번호
	private String address1;		// 주소
	private String address2;		// 상세주소
	private String mobile;			// 연락처
	private String receiver;		// 수령인
	private String recieverPhone;	// 수령인연락처
	private String recieve;			// 수령방법
	private int deliveryFee;		// 배송비
	private String pointYn;			// 적립금사용유무
	private String payment;			// 결제방법		
	private int totalAmt;			// 결제금액
	private String category;		// 구분 - 주문/반품/취소/교환
	private int invoiceNo;			// 운송장번호
	private String delYn;			// 배송상태 - 배송전/배송중/배송완료
	private String delCom;			// 택배회사
	private String driver;			// 택배기사
	
	public Order() {}

	public Order(int orderNo, int memNo, int deliverNo, Date orderdate, String orderCondition, String memName,
			String zipcode, String address1, String address2, String mobile, String receiver, String recieverPhone,
			String recieve, int deliveryFee, String pointYn, String payment, int totalAmt, String category,
			int invoiceNo, String delYn, String delCom, String driver) {
		super();
		this.orderNo = orderNo;
		this.memNo = memNo;
		this.deliverNo = deliverNo;
		this.orderdate = orderdate;
		this.orderCondition = orderCondition;
		this.memName = memName;
		this.zipcode = zipcode;
		this.address1 = address1;
		this.address2 = address2;
		this.mobile = mobile;
		this.receiver = receiver;
		this.recieverPhone = recieverPhone;
		this.recieve = recieve;
		this.deliveryFee = deliveryFee;
		this.pointYn = pointYn;
		this.payment = payment;
		this.totalAmt = totalAmt;
		this.category = category;
		this.invoiceNo = invoiceNo;
		this.delYn = delYn;
		this.delCom = delCom;
		this.driver = driver;
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

	public int getDeliverNo() {
		return deliverNo;
	}

	public void setDeliverNo(int deliverNo) {
		this.deliverNo = deliverNo;
	}

	public Date getOrderdate() {
		return orderdate;
	}

	public void setOrderdate(Date orderdate) {
		this.orderdate = orderdate;
	}

	public String getOrderCondition() {
		return orderCondition;
	}

	public void setOrderCondition(String orderCondition) {
		this.orderCondition = orderCondition;
	}

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getReceiver() {
		return receiver;
	}

	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}

	public String getRecieverPhone() {
		return recieverPhone;
	}

	public void setRecieverPhone(String recieverPhone) {
		this.recieverPhone = recieverPhone;
	}

	public String getRecieve() {
		return recieve;
	}

	public void setRecieve(String recieve) {
		this.recieve = recieve;
	}

	public int getDeliveryFee() {
		return deliveryFee;
	}

	public void setDeliveryFee(int deliveryFee) {
		this.deliveryFee = deliveryFee;
	}

	public String getPointYn() {
		return pointYn;
	}

	public void setPointYn(String pointYn) {
		this.pointYn = pointYn;
	}

	public String getPayment() {
		return payment;
	}

	public void setPayment(String payment) {
		this.payment = payment;
	}

	public int getTotalAmt() {
		return totalAmt;
	}

	public void setTotalAmt(int totalAmt) {
		this.totalAmt = totalAmt;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public int getInvoiceNo() {
		return invoiceNo;
	}

	public void setInvoiceNo(int invoiceNo) {
		this.invoiceNo = invoiceNo;
	}

	public String getDelYn() {
		return delYn;
	}

	public void setDelYn(String delYn) {
		this.delYn = delYn;
	}

	public String getDelCom() {
		return delCom;
	}

	public void setDelCom(String delCom) {
		this.delCom = delCom;
	}

	public String getDriver() {
		return driver;
	}

	public void setDriver(String driver) {
		this.driver = driver;
	}

	@Override
	public String toString() {
		return "Order [orderNo=" + orderNo + ", memNo=" + memNo + ", deliverNo=" + deliverNo + ", orderdate="
				+ orderdate + ", orderCondition=" + orderCondition + ", memName=" + memName + ", zipcode=" + zipcode
				+ ", address1=" + address1 + ", address2=" + address2 + ", mobile=" + mobile + ", receiver=" + receiver
				+ ", recieverPhone=" + recieverPhone + ", recieve=" + recieve + ", deliveryFee=" + deliveryFee
				+ ", pointYn=" + pointYn + ", payment=" + payment + ", totalAmt=" + totalAmt + ", category=" + category
				+ ", invoiceNo=" + invoiceNo + ", delYn=" + delYn + ", delCom=" + delCom + ", driver=" + driver + "]";
	}
	
	
	

}
