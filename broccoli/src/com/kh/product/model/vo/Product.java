package com.kh.product.model.vo;

public class Product {
	
	private int pno;			// 상품번호
	private String category;	// 카테고리 번호 (번호로도, 문자로도 사용가능할것 같아 String으로)
	private int eno;			// 이벤트 번호
	private String pName;		// 상품명
	private int price;			// 상품가격
	private int discount;		// 할인가격
	private String img1;		// 기본이미지	
	private String img2;		// 추가이미지
	private int inventory;		// 재고
	private String company; 	// 업체명
	private String unit;		// 판매단위
	private String weight;		// 중량
	private String detail;		// 상품상세정보
	private String disYn;		// 할인여부
	private String eYn;			// 이벤트 여부
	private String smallDetail;	// 상품 간단 설명
	private String deli;		// 배송구분
	private String nation;		// 원산지
	private String packtype; 	// 포장타입
	private String thumbnail;	// 썸네일 저장경로
	private int out;			// 판매량
	
	public Product() {}

	public Product(int pno, String category, int eno, String pName, int price, int discount, String img1, String img2,
			int inventory, String company, String unit, String weight, String detail, String disYn, String eYn,
			String smallDetail, String deli, String nation, String packtype, String thumbnail, int out) {
		super();
		this.pno = pno;
		this.category = category;
		this.eno = eno;
		this.pName = pName;
		this.price = price;
		this.discount = discount;
		this.img1 = img1;
		this.img2 = img2;
		this.inventory = inventory;
		this.company = company;
		this.unit = unit;
		this.weight = weight;
		this.detail = detail;
		this.disYn = disYn;
		this.eYn = eYn;
		this.smallDetail = smallDetail;
		this.deli = deli;
		this.nation = nation;
		this.packtype = packtype;
		this.thumbnail = thumbnail;
		this.out = out;
	}
	
	
	
	
	
	
	public Product(int pno, String pName, int price, int discount, String smallDetail, String thumbnail) {
		super();
		this.pno = pno;
		this.pName = pName;
		this.price = price;
		this.discount = discount;
		this.smallDetail = smallDetail;
		this.thumbnail = thumbnail;
	}

	public int getPno() {
		return pno;
	}

	public void setPno(int pno) {
		this.pno = pno;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public int getEno() {
		return eno;
	}

	public void setEno(int eno) {
		this.eno = eno;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getDiscount() {
		return discount;
	}

	public void setDiscount(int discount) {
		this.discount = discount;
	}

	public String getImg1() {
		return img1;
	}

	public void setImg1(String img1) {
		this.img1 = img1;
	}

	public String getImg2() {
		return img2;
	}

	public void setImg2(String img2) {
		this.img2 = img2;
	}

	public int getInventory() {
		return inventory;
	}

	public void setInventory(int inventory) {
		this.inventory = inventory;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getUnit() {
		return unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	public String getWeight() {
		return weight;
	}

	public void setWeight(String weight) {
		this.weight = weight;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public String getDisYn() {
		return disYn;
	}

	public void setDisYn(String disYn) {
		this.disYn = disYn;
	}

	public String geteYn() {
		return eYn;
	}

	public void seteYn(String eYn) {
		this.eYn = eYn;
	}

	public String getSmallDetail() {
		return smallDetail;
	}

	public void setSmallDetail(String smallDetail) {
		this.smallDetail = smallDetail;
	}

	public String getDeli() {
		return deli;
	}

	public void setDeli(String deli) {
		this.deli = deli;
	}

	public String getNation() {
		return nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	public String getPacktype() {
		return packtype;
	}

	public void setPacktype(String packtype) {
		this.packtype = packtype;
	}

	public String getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}

	public int getOut() {
		return out;
	}

	public void setOut(int out) {
		this.out = out;
	}

	@Override
	public String toString() {
		return "Product [pno=" + pno + ", category=" + category + ", eno=" + eno + ", pName=" + pName + ", price="
				+ price + ", discount=" + discount + ", img1=" + img1 + ", img2=" + img2 + ", inventory=" + inventory
				+ ", company=" + company + ", unit=" + unit + ", weight=" + weight + ", detail=" + detail + ", disYn="
				+ disYn + ", eYn=" + eYn + ", smallDetail=" + smallDetail + ", deli=" + deli + ", nation=" + nation
				+ ", packtype=" + packtype + ", thumbnail=" + thumbnail + ", out=" + out + "]";
	};
	
	
	
	
	

}
