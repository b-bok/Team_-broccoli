package com.kh.member.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.common.Pagination;
import com.kh.member.model.service.MemberService;
import com.kh.report.model.service.ReportService;
import com.kh.report.model.vo.Report;

/**
 * Servlet implementation class SelectBlackConController
 */
@WebServlet("/selectBlackCon.admin")
public class SelectBlackConController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectBlackConController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int listCount = new ReportService().selectListCount();
		
		// 페이징바 
		int currentPage = Integer.parseInt(request.getParameter("currentPage"));
		int pageLimit = 10;
		int boardLimit = 30;
		int maxPage = (int) Math.ceil((double)listCount/boardLimit);
		int startPage = ((currentPage - 1)/pageLimit) * pageLimit + 1;
		int endPage = startPage + pageLimit - 1; 
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		Pagination p = new Pagination(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage); 
		
		ArrayList<Report> list= new ReportService().selectList(p); 
		
		request.setAttribute("p", p);
		request.setAttribute("list", list);
		
		request.getRequestDispatcher("views/admin/adminSelectBlackConsumer.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
