package com.kh.recipe.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.recipe.model.dao.RecipeDao;
import com.kh.recipe.model.vo.Recipe;

public class RecipeService {

	public ArrayList<Recipe> selectUserRecipe(int pno){
		
		Connection conn = getConnection();
		
		ArrayList<Recipe> list = new RecipeDao().selectUserRecipe(conn, pno);
		
		close(conn);
		
		return list;
		
	};
	
	
	
	public ArrayList<Recipe> selectSortRecipe(int pno, String sort){
		
		Connection conn = getConnection();
		
		ArrayList<Recipe> list = new RecipeDao().selectSortRecipe(conn, pno, sort);
		
		close(conn);
		
		return list;
		
	};
	
}
