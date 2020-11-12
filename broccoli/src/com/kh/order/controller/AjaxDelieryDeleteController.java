package com.kh.order.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.member.model.vo.Member;
import com.kh.order.model.service.OrderService;
import com.kh.order.model.vo.DeliverRegister;

/**
 * Servlet implementation class AjaxDelieryUpdateController
 */
@WebServlet("/ajaxUpdateAddr.or")
public class AjaxDelieryDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AjaxDelieryDeleteController() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		Member m = (Member)request.getSession().getAttribute("login");
		int mno = m.getMemNo();
		int dno = Integer.parseInt(request.getParameter("dno"));
		
		int result = new OrderService().minusAddressNo(mno);
		
		response.setCharacterEncoding("UTF-8");
		int result2 = 0;
		if(result > 0) {
			result2 = new OrderService().deleteDeliverRegister(dno);
		}

		response.getWriter().print(result2);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
