package com.kh.notice.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.notice.model.service.NoticeService;
import com.kh.notice.model.vo.Notice;

/**
 * Servlet implementation class NoticeDetailViewController
 */
@WebServlet("/detail.no")
public class NoticeDetailViewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticeDetailViewController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int nno = Integer.parseInt(request.getParameter("nno"));
		
		int result = new NoticeService().increaseCount(nno);
		
		if(result > 0) {	// 유효한 공지사항 번호일 경우 -> 해당 공지사항 상세조회 후 -> 상세페이지 띄우기
			
			Notice n = new NoticeService().selectNotice(nno);
			
			request.setAttribute("n", n);
			
			request.getRequestDispatcher("views/notice/noticeDetailView.jsp").forward(request, response);
			
		}else {				// 유효한 공지사항이 아닐경우	 -> 에러페이지
			
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
