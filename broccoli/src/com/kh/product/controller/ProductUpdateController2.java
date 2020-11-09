package com.kh.product.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.product.model.service.ProductService;
import com.kh.product.model.vo.PageInfo;
import com.kh.product.model.vo.Product;

/**
 * 상품수정 검색결과 페이지
 * Servlet implementation class ProductUpdateController2
 */
@WebServlet("/updateProduct2.admin")
public class ProductUpdateController2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductUpdateController2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String searchCat = request.getParameter("searchCategory");
		String searchWord = request.getParameter("searchWord");
		
		int listCount;		// 현재 일반게시판 총 상품 갯수
		int currentPage;	// 사용자가 요청한 페이지(즉, 현재페이지)
		int pageLimit;		// 한 페이지 하단에 보여질 페이지 최대갯수
		int boardLimit;		// 한 페이지 내에 보여질 게시글 최대갯수
		
		int maxPage;		// 전체 페이지들 중에서 가장 마지막 페이지수
		int startPage;		// 현재 사용자가 요청한 페이지에 하단에 보여질 페이징 바의 시작수
		int endPage;		// 현재 사용자가 요청한 페이지에 하단에 보여질 페이징 바의 끝수
		
		// * listCount : 현재 일반 게시판 총 상품 갯수
		listCount = new ProductService().selectListCount();
		
		// *currentPage : 사용자가 요청한 현재 페이지
		currentPage = Integer.parseInt(request.getParameter("currentPage"));

		
		// * pageLimit : 한 페이지 하단에 보여질 페이지 최대갯수(몇 개 단위씩 보여지게 할 건지)
		pageLimit = 10;
		
		// * boardLimit : 한 페이지 내에 보여질 게시글 최대갯수 (몇 개 단위씩 보여지게 할 건지)
		boardLimit = 10;
		
		// * 총게시글갯수(실수)/boardLimit => 올림처리Math.ceil() => maxPage
		maxPage = (int)Math.ceil((double)listCount/boardLimit);
		
		startPage = (currentPage -1)/ pageLimit *pageLimit +1;
		
		endPage = startPage + pageLimit -1;
		
		if(endPage> maxPage) {
			endPage = maxPage;
		}
		
		PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);
		
		
		
			ArrayList<Product> list = new ProductService().selectAdminProductBySearch(pi,searchCat, searchWord);
			
			request.setAttribute("searchCat", searchCat);
			request.setAttribute("searchWord", searchWord);
			request.setAttribute("pi", pi);
			request.setAttribute("list", list);
			
			request.getRequestDispatcher("views/admin/adminUpdateProduct.jsp").forward(request, response);
			
		
			
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
