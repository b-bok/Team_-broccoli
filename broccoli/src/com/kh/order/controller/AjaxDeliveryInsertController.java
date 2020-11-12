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
 * Servlet implementation class AjaxDeliveryInsertController
 */
@WebServlet("/ajaxAddr.or")
public class AjaxDeliveryInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AjaxDeliveryInsertController() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		Member m = (Member)request.getSession().getAttribute("login");
		int mno = m.getMemNo();
		String addName = request.getParameter("addName");
		String add1 = request.getParameter("add1");
		String add2 = request.getParameter("add2");
		String name = request.getParameter("name");
		String mobile = request.getParameter("mobile");
		String defaultYN = request.getParameter("defaultYN");
		
		DeliverRegister dr = new DeliverRegister(mno, add1, add2, addName, name, mobile, defaultYN);
		
		response.setCharacterEncoding("UTF-8");

		int row = new OrderService().selectAddressNo(mno);
		int result = 0;
		if(row < 5) {
			result = new OrderService().insertDeliverRegister(dr);
		}
		
		response.getWriter().print(result);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
