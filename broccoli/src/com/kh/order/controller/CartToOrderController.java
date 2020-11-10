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
 * Servlet implementation class CartToOrderController
 */
@WebServlet("/order.or")
public class CartToOrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartToOrderController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		// 장바구니에서 수량,금액 변경돼서 주문하는 경우
		Member mem = (Member)request.getSession().getAttribute("login");
		int mno = mem.getMemNo();
		
		int[] quantity = Arrays.stream(request.getParameterValues("quantity")).mapToInt(Integer::parseInt).toArray();
		int[] pno = Arrays.stream(request.getParameterValues("pno")).mapToInt(Integer::parseInt).toArray();
		int[] price = Arrays.stream(request.getParameterValues("price")).mapToInt(Integer::parseInt).toArray();
		
		System.out.println(quantity.length);
		System.out.println(pno.length);
		System.out.println(price.length);
		
		
		if(quantity.length == pno.length && pno.length == price.length) {
			
			for(int i=0; i<pno.length; i++) {
				OrderList olist = new OrderList();
				olist.setQuantity(quantity[i]);
				olist.setpNo(pno[i]);
				olist.setpPrice(price[i]);
				int result = new OrderService().updateOrder(olist, mno);		// 오더리스트 테이블 업뎃 후 주문페이지에서 다시조회
				
				if(result > 0) {
					//new OrderService().selectOrderList(mno);
					
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
