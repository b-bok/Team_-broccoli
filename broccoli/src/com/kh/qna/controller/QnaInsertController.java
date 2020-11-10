package com.kh.qna.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.qna.model.service.QnaService;
import com.kh.qna.model.vo.Qna;

/**
 * Servlet implementation class QnaInsertController
 */
@WebServlet("/qnaInsert.qa")
public class QnaInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QnaInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		int pno = Integer.parseInt(request.getParameter("pno"));
		String pName = request.getParameter("pName");
		String mem = request.getParameter("mem");

		String secret = request.getParameter("secretYn");
		
		String qnaTitle = request.getParameter("qnaTitle");
		String qnaDetail = request.getParameter("qnaDetail");
		
		if(secret.equals("on")) {
			secret = "Y";
		}else {
			secret = "N";
		}
		
		// 28은 나중에 시퀀스로 대체할 예정
		Qna q = new Qna(28, pno, pName, mem, qnaTitle,  qnaDetail,  secret);
		
		int result = new QnaService().insertQna(q);
		
		if(result>0) {
			
			
			HttpSession session = request.getSession();
			
			session.setAttribute("alert", "문의접수 성공!");
			
			response.sendRedirect(request.getContextPath() + "/detail.pb?pno=" + pno);
			
		}else {
			
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
