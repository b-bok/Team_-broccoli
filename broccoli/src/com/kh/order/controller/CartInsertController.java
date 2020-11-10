package com.kh.order.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.member.model.vo.Member;
import com.kh.order.model.service.OrderService;
import com.kh.order.model.vo.OrderList;

/**
 * Servlet implementation class CartInsertController
 */
@WebServlet("/ajaxCart.or")
public class CartInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartInsertController() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Member mem = (Member)request.getSession().getAttribute("login");
		int mno = mem.getMemNo();
		int pno = Integer.parseInt(request.getParameter("pno"));
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		int price = Integer.parseInt(request.getParameter("price"));
		int totalamount = quantity * price;
		
		OrderList olist = new OrderList();
		olist.setpNo(pno);
		olist.setMemNo(mno);
		olist.setQuantity(quantity);
		olist.setpPrice(price);
		olist.setTotalAmt(totalamount);;
		
//		System.out.println(olist);
		String str = "";
		int result = new OrderService().selectCart(pno, mno);
		
		if(result > 0) {	// 중복인경우
			str = new OrderService().updateCart(olist);
		}else {				// 아닌경우
			str = new OrderService().insertCart(olist);
		}
		
		
		response.setCharacterEncoding("UTF-8");
		response.getWriter().print(str);
		
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
