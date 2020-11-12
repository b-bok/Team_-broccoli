package com.kh.report.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.common.Pagination;
import com.kh.report.model.service.ReportService;
import com.kh.report.model.vo.Report;

/**
 * Servlet implementation class SelectReportController
 */
@WebServlet("/selectReport.admin")
public class SelectReportController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectReportController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 김근희 작성 - 어드민 레시피 페이징바 
		int listCount = new ReportService().selectListCount();
		
		int currentPage = Integer.parseInt(request.getParameter("currentPage"));
		int pageLimit = 2;
		int boardLimit = 5;
		int maxPage = (int) Math.ceil((double)listCount/boardLimit);
		int startPage = ((currentPage - 1)/pageLimit) * pageLimit + 1; 
		int endPage = startPage + pageLimit -1 ;
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		Pagination p = new Pagination(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);
		ArrayList<Report> list = new ReportService().selectList(p);
		
		System.out.println(list);
		
		request.setAttribute("p", p);
		request.setAttribute("list", list);
		
		request.getRequestDispatcher("views/admin/adminSelectReport.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
