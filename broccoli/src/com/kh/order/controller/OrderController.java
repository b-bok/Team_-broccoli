package com.kh.order.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.member.model.vo.Member;
import com.kh.order.model.service.OrderService;
import com.kh.order.model.vo.Order;
import com.kh.order.model.vo.OrderList;

/**
 * Servlet implementation class CartToOrderController
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
		
		
		// 장바구니에서 수량,금액 변경돼서 주문하는 경우
		Member mem = (Member)request.getSession().getAttribute("login");
		int mno = mem.getMemNo();
		
		int[] quantity = Arrays.stream(request.getParameterValues("quantity")).mapToInt(Integer::parseInt).toArray();
		int[] pno = Arrays.stream(request.getParameterValues("pno")).mapToInt(Integer::parseInt).toArray();
		int totalamt = Integer.parseInt(request.getParameter("totalamt"));
		
		String addressName = request.getParameter("addressName");
		String name = request.getParameter("name");
		String mobile = request.getParameter("mobile");
		String add1 = request.getParameter("addinput");
		String add2 = request.getParameter("addinput2");
		
		
		
//		상세페이지에서 넘어오는 파라미터 : pno, quantity(수량), totalamt(금액)
//		장바구니에서 넘어오는 파라미터 : pno, quantity(수량), totalamt(금액) 
		
//		장바구니에 여러 상품이 있을 경우
		if(pno.length > 1) {
			if(quantity.length == pno.length) {
				OrderList olist = new OrderList();
				for(int i=0; i<pno.length; i++) {
					olist.setQuantity(quantity[i]);
					olist.setpNo(pno[i]);
					olist.setpPrice(totalamt);
				}
				int result = new OrderService().updateOrder(olist, mno);		// 오더리스트 테이블 업뎃 후 주문페이지에서 다시조회
				ArrayList<Order> list = new OrderService().selectOrderList(mno);
				request.setAttribute("list", list);
				request.setAttribute("totalamt", totalamt);
				request.getRequestDispatcher("views/order/orderPage2.jsp").forward(request, response);
					
			}
			
		} else {	// 바로구매한 경우 == 상품이 1개
			HashMap<String, String> map = new OrderService().selectOrder(mno, pno[0]);
			request.setAttribute("map", map);
			request.setAttribute("totalamt", totalamt);
			request.setAttribute("quantity", quantity[0]);
			request.getRequestDispatcher("views/order/orderPage.jsp").forward(request, response);
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
