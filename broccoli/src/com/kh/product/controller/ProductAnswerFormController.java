package com.kh.product.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.product.model.service.ProductService;
import com.kh.product.model.vo.ProductQna;

/**
 * 관리자 상품문의 답변달기 페이지
 * Servlet implementation class ProductAnswerFormController
 */
@WebServlet("/productAnswer.admin")
public class ProductAnswerFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductAnswerFormController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int qnaNo = Integer.parseInt(request.getParameter("qnaNo"));
		
		ProductQna pq = new ProductService().selectAdminProductQnaDetail(qnaNo);
		
		if(pq != null) {
			request.setAttribute("pq", pq);
			
			request.getRequestDispatcher("views/admin/adminProductAnswer.jsp").forward(request, response);
		}else { // 유효한 상품번호 x => 에러문구 담아서 포워딩
			
			request.setAttribute("errorMsg", "유효한 상품문의가 없습니다");
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
