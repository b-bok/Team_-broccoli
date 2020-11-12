package com.kh.report.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.report.model.service.ReportService;
import com.kh.report.model.vo.Report;
import com.sun.xml.internal.ws.api.message.Attachment;

/**
 * Servlet implementation class ReportDetailController
 */
@WebServlet("/detail.rep")
public class ReportDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReportDetailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int repno = Integer.parseInt(request.getParameter("repno"));
		
		int result = new ReportService().increaseCount(repno);
		
		if(result > 0) {
			
			Report rp = new ReportService().selectReport(repno);
			
			request.setAttribute("rp", rp);
			request.getRequestDispatcher("views/admin/adminSelectReportMore.jsp").forward(request, response);
			
		}else {
			
			request.setAttribute("errorMsg", "연결이 실패했습니다. 다시 시도해주세요!");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
