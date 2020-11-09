package com.kh.recipe.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.recipe.model.dao.RecipeDao;
import com.kh.recipe.model.vo.Recipe;
import com.kh.recipe.model.vo.RecipeAttach;

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
	
	public int increaseCount(int rco) {
		
		Connection conn = getConnection();
		
		int result = new RecipeDao().increaseCount(conn, rco);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		
		return result;
	}



	public Recipe selectDetailRecipe(int rco) {
		
		Connection conn = getConnection();
		
		Recipe r = new RecipeDao().selectDetailRecipe(conn, rco);
		
		close(conn);
		
		return r;
	}



	public ArrayList<RecipeAttach> selectRecipeSequence(int rco) {
		Connection conn = getConnection();
		
		ArrayList<RecipeAttach> list = new RecipeDao().selectRecipeSequence(conn, rco);
		
		close(conn);
		
		return list;
	}
	
}
