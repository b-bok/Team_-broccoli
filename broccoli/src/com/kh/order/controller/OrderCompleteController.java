package com.kh.order.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.member.model.vo.Member;
import com.kh.order.model.service.OrderService;
import com.kh.order.model.vo.Order;

/**
 * Servlet implementation class OrderCompleteController
 */
@WebServlet("/orderPay.or")
public class OrderCompleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderCompleteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		
		Member m = (Member)request.getSession().getAttribute("login");
		int mno = m.getMemNo(); 	// 회원번호
		String add1 = request.getParameter("inputadd");					// 주소1
		String add2 = request.getParameter("inputadd2");					// 주소2
		String name = request.getParameter("name");					// 받는이
		String mobile = request.getParameter("inputmobile");					// 연락처
		int point = Integer.parseInt(request.getParameter("point"));						// 적립금
		
		String receiveHow = request.getParameter("receiveHow");					// 수령방법
		int totalamt = Integer.parseInt(request.getParameter("totalamt")); 					// 총금액
		int dfee = Integer.parseInt(request.getParameter("dfee"));					// 배송비
		
		
//		System.out.println(name);
//		System.out.println(mno);
//		System.out.println(add1);
//		System.out.println(add2);
//		System.out.println(mobile);
//		System.out.println(point);
//		System.out.println(receiveHow);
//		System.out.println(totalamt);
//		System.out.println(dfee);
//		
		Order o = new Order();
		o.setMemNo(mno);
		o.setAddress1(add1);
		o.setAddress2(add2);
		o.setMemName(name);
		o.setMobile(mobile);
		String yn;
		if(point > 0) {
			yn = "Y";
		}else {
			yn = "N";
		}
		o.setPointYn(yn);
		o.setRecieve(receiveHow);
		o.setTotalAmt(totalamt);
		o.setDeliveryFee(dfee);
		
		int result = new OrderService().insertOrder(o);
		
		if(result>0) {
			Order order = new OrderService().orderComplete(mno);
			request.setAttribute("order", order);
			request.getRequestDispatcher("views/order/orderComplete.jsp").forward(request, response);
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
