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
 * Servlet implementation class InsertMemberController
 */
@WebServlet("/member.me")
public class InsertMemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertMemberController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String memId = request.getParameter("memId");
		String memName = request.getParameter("memName");
		String memPwd = request.getParameter("memPwd");
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		String zipcode = request.getParameter("zipcode");
		String address1 = request.getParameter("address");
		String address2 = request.getParameter("addrDetail");
		String addrExtra = request.getParameter("addrExtra");
		String gender = request.getParameter("gender");
		//이용약관관련 DB 어떻게 할지 정하기 
		
		Member m = new Member(memId, memName, memPwd, email, mobile,zipcode, address1, address2, addrExtra, gender);
		
		int result = new MemberService().insertMember(m);
		
		if(result > 0) {
			request.getSession().setAttribute("alert", "브로콜리 회원이 되셨습니다. 가입축하금 5000원이 적립되었습니다.");
			response.sendRedirect(request.getContextPath());
			
		}else {
			request.setAttribute("errorMsg", "어이쿠 회원가입이 안되었습니다!");
			
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
