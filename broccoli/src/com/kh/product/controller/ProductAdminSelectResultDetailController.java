package com.kh.product.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.product.model.service.ProductService;
import com.kh.product.model.vo.Product;

/**
 * 관리자 상품상세조회 결과 페이지
 * Servlet implementation class ProductAdminSelectResultDetailController
 */
@WebServlet("/productDetailResult.admin")
public class ProductAdminSelectResultDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductAdminSelectResultDetailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int pno = Integer.parseInt(request.getParameter("pno"));
		
		Product p = new ProductService().selectAdminProductDetail(pno);
		
		if(p != null) {
		
			request.setAttribute("p", p);
			
			request.getRequestDispatcher("views/admin/adminProductDetail.jsp").forward(request, response);
		
		}else { // 유효한 상품번호 x => 에러문구 담아서 포워딩
			
			request.setAttribute("errorMsg", "유효한 상품이 없습니다");
			request.getRequestDispatcher("views/common/adminErrorPage.jsp").forward(request, response);
			
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
