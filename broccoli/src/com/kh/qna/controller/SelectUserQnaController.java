package com.kh.qna.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.kh.qna.model.service.QnaService;
import com.kh.qna.model.vo.Qna;
import com.kh.recipe.model.service.RecipeService;

/**
 * Servlet implementation class SelectUserQnaController
 */
@WebServlet("/selectQna.qa")
public class SelectUserQnaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectUserQnaController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int pno = Integer.parseInt(request.getParameter("pno"));
		String sort = request.getParameter("sort");
		
		ArrayList<Qna> list = new ArrayList<>();
		
		if(sort.equals("all")) {
			
			list = new QnaService().selectUserQna(pno);
			
		}else {
			
			list = new QnaService().selectSortQna(pno,sort);
		
		}
		
		

		response.setContentType("application/json; charset=utf-8");
		
		Gson gson = new Gson();
		
		gson.toJson(list, response.getWriter());
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
