package com.kh.product.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.product.model.service.ProductService;

/**
 * 관리자 상품조회 페이지
 * Servlet implementation class ProductSelectListController
 */
@WebServlet("/selectProduct.admin")
public class ProductSelectListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductSelectListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int listCount;		// 현재 일반게시판 총 상품 갯수
		int currentPage;	// 사용자가 요청한 페이지(즉, 현재페이지)
		int pageLimit;		// 한 페이지 하단에 보여질 페이지 최대갯수
		int BoardLimit;		// 한 페이지 내에 보여질 게시글 최대갯수
		
		int maxPage;		// 전체 페이지들 중에서 가장 마지막 페이지수
		int startPage;		// 현재 사용자가 요청한 페이지에 하단에 보여질 페이징 바의 시작수
		int endPage;		// 현재 사용자가 요청한 페이지에 하단에 보여질 페이징 바의 끝수
		
		// * listCount : 현재 일반 게시판 총 상품 갯수
		listCount = new ProductService().selectListCount();
		
		
		
		
		
		
		request.getRequestDispatcher("views/admin/adminSelectProduct.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
