package com.kh.member.model.vo;

import java.sql.Date;

public class Member {
	
	
	private int memNo; 				// 회원번호(PK)
	private String memId;			// 아이디
	private String memName;			// 회원명
	private String memPwd; 			// 비밀번호
	private String email;			// 이메일
	private String mobile;			// 핸드폰
	private String zipcode; 		// 우편번호
	private String address1;		// 주소 
	private String address2;		// 상세주소
	private String addrExtra;		// 주소 참고사항
	private String gender;			// 성별 
	private Date birthDate;			// 생년월일
	private Date regDate;			// 가입일
	private int point; 				// 축하적립금(5000 default)
	private String status; 			// 가입여부(가입 == Y, 탈퇴 == N)
	private int addressNo; 			// 배송지갯수
	private String memCategory;		// 회원유형(관리자, 회원, 블랙컨슈머) 
	
	public Member() {}

	public Member(int memNo, String memId, String memName, String memPwd, String email, String mobile, String zipcode,
			String address1, String address2, String addrExtra, String gender, Date birthDate, Date regDate, int point,
			String status, int addressNo, String memCategory) {
		super();
		this.memNo = memNo;
		this.memId = memId;
		this.memName = memName;
		this.memPwd = memPwd;
		this.email = email;
		this.mobile = mobile;
		this.zipcode = zipcode;
		this.address1 = address1;
		this.address2 = address2;
		this.addrExtra = addrExtra;
		this.gender = gender;
		this.birthDate = birthDate;
		this.regDate = regDate;
		this.point = point;
		this.status = status;
		this.addressNo = addressNo;
		this.memCategory = memCategory;
	}
	
	//회원가입용 
	public Member(String memId, String memName, String memPwd, String email, String mobile, String zipcode,
			String address1, String address2, String addrExtra, String gender) {
		super();
		this.memId = memId;
		this.memName = memName;
		this.memPwd = memPwd;
		this.email = email;
		this.mobile = mobile;
		this.zipcode = zipcode;
		this.address1 = address1;
		this.address2 = address2;
		this.addrExtra = addrExtra;
		this.gender = gender;
	}
	
	
	


	public int getMemNo() {
		return memNo;
	}



	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}

	public String getMemPwd() {
		return memPwd;
	}

	public void setMemPwd(String memPwd) {
		this.memPwd = memPwd;
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

	public String getAddrExtra() {
		return addrExtra;
	}

	public void setAddrExtra(String addrExtra) {
		this.addrExtra = addrExtra;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getAddressNo() {
		return addressNo;
	}

	public void setAddressNo(int addressNo) {
		this.addressNo = addressNo;
	}

	public String getMemCategory() {
		return memCategory;
	}

	public void setMemCategory(String memCategory) {
		this.memCategory = memCategory;
	}
	


	@Override
	public String toString() {
		return "Member [memNo=" + memNo + ", memId=" + memId + ", memName=" + memName + ", memPwd=" + memPwd
				+ ", email=" + email + ", mobile=" + mobile + ", zipcode=" + zipcode + ", address1=" + address1
				+ ", address2=" + address2 + ", addrExtra=" + addrExtra + ", gender=" + gender + ", birthDate="
				+ birthDate + ", regDate=" + regDate + ", point=" + point + ", status=" + status + ", addressNo="
				+ addressNo + ", memCategory=" + memCategory + "]";
	}
	

	

}
