package com.kh.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.member.model.service.MemberService;
import com.kh.member.model.vo.Member;

/**
 * Servlet implementation class FindIdResultController
 */
@WebServlet("/idResult.me")
public class FindIdResultController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindIdResultController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String memName = request.getParameter("memName");
		String email = request.getParameter("email");
		
		Member findId = new MemberService().findId(memName, email);
		
		if(findId == null) {//일치하는 아이디를 찾을 수 없음
			
			request.getRequestDispatcher("views/member/findIdFail.jsp").forward(request, response);
			
		}else {
			
			HttpSession session = request.getSession();
			session.setAttribute("findId", findId);
			
			request.getRequestDispatcher("views/member/findIdSuccess.jsp").forward(request, response);
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
