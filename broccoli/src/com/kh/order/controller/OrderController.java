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
@WebServlet("/order.or")
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
		
		Member mem = (Member)request.getSession().getAttribute("login");
		int mno = mem.getMemNo();
		int totalamt = Integer.parseInt(request.getParameter("totalamt"));
		
		int[] quantity = Arrays.stream(request.getParameterValues("quantity")).mapToInt(Integer::parseInt).toArray();
		int[] pno = Arrays.stream(request.getParameterValues("pno")).mapToInt(Integer::parseInt).toArray();
		int[] price = Arrays.stream(request.getParameterValues("price")).mapToInt(Integer::parseInt).toArray();
		
		
		if(quantity.length == pno.length && pno.length == price.length) {
			
			for(int i=0; i<pno.length; i++) {
				OrderList olist = new OrderList();
				olist.setQuantity(quantity[i]);
				olist.setpNo(pno[i]);
				olist.setpPrice(price[i]);
				int result = new OrderService().updateOrder(olist, mno);
				
				if(result > 0) {
					
					request.getRequestDispatcher("views/order/orderPage.jsp").forward(request, response);
					
				}
			}
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
