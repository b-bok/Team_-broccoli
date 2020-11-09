package com.kh.recipe.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.recipe.model.service.RecipeService;
import com.kh.recipe.model.vo.Recipe;
import com.kh.recipe.model.vo.RecipeAttach;

/**
 * Servlet implementation class recipeDetailController
 */
@WebServlet("/detail.rc")
public class recipeDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public recipeDetailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int rco = Integer.parseInt(request.getParameter("rco"));
		
		int result = new RecipeService().increaseCount(rco);
		
		Recipe r = new Recipe();
		ArrayList<RecipeAttach> list = new ArrayList<>();
		
		
		if(result > 0) {
			
			//System.out.println("조회수 증가");
			
			r = new RecipeService().selectDetailRecipe(rco);
			list = new RecipeService().selectRecipeSequence(rco);

		}
		
		request.setAttribute("r", r);
		request.setAttribute("list", list);
		
		request.getRequestDispatcher("views/userRecipeBoard/recipeDetailPage.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
