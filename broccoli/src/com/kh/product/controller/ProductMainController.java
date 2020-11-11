package com.kh.product.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.kh.product.model.service.ProductService;
import com.kh.product.model.vo.PageInfo;
import com.kh.product.model.vo.Product;

/**
 * Servlet implementation class ProductMainController
 */
@WebServlet("/main.do")
public class ProductMainController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductMainController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		// ----------------------- 페이징 처리 -----------------------
		
		int listCount;		// 현재 상품게시판 총 갯수
		int currentPage;	// 사용자가 요청한 페이지(현재 페이지)
		int pageLimit;		// 한 페이지 하단에 보여질 페이지 최대 갯수
		int boardLimit;		// 한 페이지 내에 보여질 게시글 최대 갯수
		
		int maxPage;		// 전체 페이지중 가장 마지막 페이지 수
		int startPage;		// 현재 사용자가 요청한 페이지 하단에 보여질 페이징 바의 시작 수
		int endPage;		// 현재 사용자가 요청한 페이지 하단에 보여질 페이징 바의 끝수
		
		// * listCount : 현재 일반 게시글 총 갯수
		listCount = new ProductService().selectListCount();
	
		// * currentPage : 사용자가 요청한 페이지 (현재 페이지)
		currentPage = 1;
		
		
		
		// * pageLimit : 한 페이지 하단에 보여질 페이지 최대 갯수
		pageLimit = 3;
		
		// * boardLimt : 한 페이지 내에 보여질 게시글 최대 갯수
		boardLimit = 5;
		
		// * maxPage : 제일 마지막 페이지수
		
		maxPage = (int)Math.ceil((double)listCount/boardLimit);
		
		
		// * startPage :  현재 사용자가 요청한 페이지 하단에 보여질 페이징 바 시작수
		startPage = ((currentPage -1)/ pageLimit) * pageLimit + 1;
		// * endPage : 현재 사용자가 요청한 페이지 하단에 보여질 페이징 바 끝수
		endPage = startPage + pageLimit -1;
		
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		
	
		PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);
	
		ArrayList<Product> list = new ProductService().selectAllProduct(pi);
		
		
		
		HashMap<String, Object> hm = new HashMap<String,Object>();
		
		hm.put("pageInfo", pi);
		hm.put("list",list);
		
		
		response.setContentType("application/json; charset=utf-8");
			
		Gson gson = new Gson();
		
		gson.toJson(hm,response.getWriter());

		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
