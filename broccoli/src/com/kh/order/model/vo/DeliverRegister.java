package com.kh.order.model.vo;

public class DeliverRegister {
	
	private int deliverNo;			// 배송지번호
	private int memNo;				// 회원번호
	private String address;			// 주소
	private String address2;		// 상세주소
	private String deliverName;		// 배송지명
	private String receiveHow;		// 수령방법
	private String receiver;		// 수령인
	private String mobile;			// 연락처
	private String addressYN;		// 기본배송지여부
	
	public DeliverRegister() {}

	public DeliverRegister(int deliverNo, int memNo, String address, String address2, String deliverName,
			String receiveHow, String receiver, String addressYN) {
		super();
		this.deliverNo = deliverNo;
		this.memNo = memNo;
		this.address = address;
		this.address2 = address2;
		this.deliverName = deliverName;
		this.receiveHow = receiveHow;
		this.receiver = receiver;
		this.addressYN = addressYN;
	}

	public int getDeliverNo() {
		return deliverNo;
	}

	public void setDeliverNo(int deliverNo) {
		this.deliverNo = deliverNo;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getDeliverName() {
		return deliverName;
	}

	public void setDeliverName(String deliverName) {
		this.deliverName = deliverName;
	}

	public String getReceiveHow() {
		return receiveHow;
	}

	public void setReceiveHow(String receiveHow) {
		this.receiveHow = receiveHow;
	}

	public String getReceiver() {
		return receiver;
	}

	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}

	public String getAddressYN() {
		return addressYN;
	}

	public void setAddressYN(String addressYN) {
		this.addressYN = addressYN;
	}

	@Override
	public String toString() {
		return "DeliverRegister [deliverNo=" + deliverNo + ", memNo=" + memNo + ", address=" + address + ", address2="
				+ address2 + ", deliverName=" + deliverName + ", receiveHow=" + receiveHow + ", receiver=" + receiver
				+ ", addressYN=" + addressYN + "]";
	}
	

}
