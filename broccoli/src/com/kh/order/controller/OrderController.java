package com.kh.order.controller;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.member.model.vo.Member;
import com.kh.order.model.service.OrderService;
import com.kh.order.model.vo.OrderList;

/**
 * Servlet implementation class OrderController
 */
@WebServlet("/dOrder.or")
public class OrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		// 상품상세페이지에서 바로 구매 클릭 후 주문페이지로 넘기기
		Member mem = (Member)request.getSession().getAttribute("login");
		int mno = mem.getMemNo();
		int totalamt = Integer.parseInt(request.getParameter("totalamt"));
		int pno = Integer.parseInt(request.getParameter("pno"));
		
//		멤버 정보, 상품 정보
		new OrderService().selectOrder(mno, pno);
		
		
		
		
		
		request.getRequestDispatcher("views/order/orderPage.jsp").forward(request, response);
		
		
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
