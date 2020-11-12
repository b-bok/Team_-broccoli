package com.kh.review.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.common.Pagination;
import com.kh.review.model.service.ReviewService;
import com.kh.review.model.vo.Review;

/**
 * Servlet implementation class SelectReviewController
 */
@WebServlet("/selectReview.admin")
public class SelectReviewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectReviewController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 김근희작성  - 어드민 리뷰 페이징바 
				int listCount = new ReviewService().selectListCount();
				System.out.println("controller " + listCount); 	//-->이게 0
				
				int currentPage = Integer.parseInt(request.getParameter("currentPage")); //currentPage NumberFormatException Null 값으로 오류남!! 아직 페이지가 세팅안되어 있음!
				int pageLimit = 10;
				int boardLimit = 10;
				int maxPage = (int) Math.ceil((double)listCount/boardLimit);
				int startPage = ((currentPage - 1)/pageLimit) * pageLimit + 1;
				int endPage = startPage + pageLimit - 1; 
				if(endPage > maxPage) {
					endPage = maxPage;
				}
				
				Pagination p = new Pagination(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage); 
				
				ArrayList<Review> list= new ReviewService().selectList(p); 
				
				request.setAttribute("p", p);
				request.setAttribute("list", list);
				
				request.getRequestDispatcher("views/admin/adminSelectReview.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
