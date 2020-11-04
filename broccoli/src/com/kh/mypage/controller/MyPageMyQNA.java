package com.kh.mypage.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.mypage.model.service.MyQNAService;
import com.kh.mypage.model.vo.MyPagePageInfo;
import com.kh.mypage.model.vo.MyQNA;

/**
 * Servlet implementation class MyPageMyQNA
 */
@WebServlet("/myPageMyQNA.my")
public class MyPageMyQNA extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyPageMyQNA() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		int listCount;   // 현재 일반 게시판 총 갯수
		int currentPage; // 사용자가 요청한 페이지 (즉, 현재 페이지)
		int pageLimit;   // 한 페이지 하단에 보여질 페이지 최대 갯수
		int boardLimit;  // 한 페이지 내에 보여질 게시글 최대갯수
		int maxPage;     // 전체 페이지들 중에서 가장 마지막 페이지 수
		int startPage;    // 현재 사용자가 요청한페이지에 하단에 보여질 페이징 바의 시작수
		int endPage;     // 현재 사용자가 요청한페이지에 하단에 보여질 페이징 바의 끝수
		
		//* listCount : 현재 내 문의  총 문의 갯수
		listCount = new MyQNAService().selectListCount();
		
		// * currentPage : 사용자가 요청한 페이지 (즉, 현재 페이지)
		currentPage = Integer.parseInt(request.getParameter("currentPage"));
		
		//* pageLimit: 한 페이지 하단에 보여질 페이지최대갯수 (몇 개 단위씩 보여지게할껀지)
		pageLimit = 5;
				
		//* boardLimit : 한 페이지 내에 보여질 문의 최대갯수( 몇 개 단위 씩 보여지게할건지)
		boardLimit = 5;
		//* maxPage:제일 마지막 페이지 수
		maxPage = (int)Math.ceil((double)listCount/boardLimit);
		// *startPage: 현재 사용자가 요청한페이지에 하단에 보여질 페이징 바의 시작수
		startPage = (currentPage - 1)/ pageLimit * pageLimit +1;
		
		endPage = startPage + pageLimit -1;
		
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		MyPagePageInfo pi = new MyPagePageInfo(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);
	
		ArrayList<MyQNA> list = new MyQNAService().selectList(pi);
		
		request.setAttribute("pi",pi);
		request.setAttribute("list", list);
		
		request.getRequestDispatcher("views/mypage/myPageMyQNA.jsp").forward(request, response);
		
		
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
