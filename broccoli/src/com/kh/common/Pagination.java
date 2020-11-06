package com.kh.common;

public class Pagination {
	
	private int listCount;			//총 리스트개수 
	private int currentPage;		//현재페이지
	private int pageLimit;			//한 페이지 하단에 보여질 페이지개수
	private int boardLimit;			//한 페이지당 보여질 글개수  
	private int maxPage;			//가장 마지막 페이지수 
	private int startPage;			//현재페이지의 페이지 하단에 보여지는 페이지바의 첫수 
	private int endPage;			//현재페이지의 페이지 하단에 보여지는 페이지바의 끝수 
	
	public Pagination() {}

	public Pagination(int listCount, int currentPage, int pageLimit, int boardLimit, int maxPage, int startPage,
			int endPage) {
		super();
		this.listCount = listCount;
		this.currentPage = currentPage;
		this.pageLimit = pageLimit;
		this.boardLimit = boardLimit;
		this.maxPage = maxPage;
		this.startPage = startPage;
		this.endPage = endPage;
	}

	public int getListCount() {
		return listCount;
	}

	public void setListCount(int listCount) {
		this.listCount = listCount;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getPageLimit() {
		return pageLimit;
	}

	public void setPageLimit(int pageLimit) {
		this.pageLimit = pageLimit;
	}

	public int getBoardLimit() {
		return boardLimit;
	}

	public void setBoardLimit(int boardLimit) {
		this.boardLimit = boardLimit;
	}

	public int getMaxPage() {
		return maxPage;
	}

	public void setMaxPage(int maxPage) {
		this.maxPage = maxPage;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	};
	
	

}
