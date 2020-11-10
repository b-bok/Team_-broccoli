package com.kh.notice.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.notice.model.service.NoticeService;
import com.kh.notice.model.vo.Faq;

/**
 * Servlet implementation class FaqCategoryController
 */
@WebServlet("/category.faq")
public class FaqCategoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FaqCategoryController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("컨트롤러1차 접근");
		System.out.println("카테고리값은 : " + request.getParameter("qCategory"));
		int num1 = Integer.parseInt(request.getParameter("qCategory"));
		ArrayList<Faq> list = new NoticeService().selectFaqList(num1);
		

		request.setAttribute("list", list);
		
		System.out.println(list.size());
		System.out.println(list.isEmpty());
		request.getRequestDispatcher("views/notice/faqList.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
