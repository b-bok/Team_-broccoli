package com.kh.recipe.model.dao;

import static com.kh.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.recipe.model.vo.*;

public class RecipeDao {
	
	private Properties prop = new Properties();
	
	public RecipeDao() {
		

		String fileName = RecipeDao.class.getResource("/sql/recipe/recipe-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName));
			
			
		} catch (IOException e) {
			
			e.printStackTrace();
		}
		
	}

	public ArrayList<Recipe> selectUserRecipe(Connection conn, int pno) {
		
		ArrayList<Recipe> list = new ArrayList<>();
		
		String sql = prop.getProperty("selectUserRecipe");
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, pno);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				Recipe r = new Recipe();
				
				r.setRecipeNo(rset.getInt("Recipe_board_no"));
				r.setRecipeMainImg(rset.getString("recipe_main_img"));
				r.setRecipeTitle(rset.getString("Recipe_title"));
				r.setMem(rset.getString("mem_id"));
				r.setRegDate(rset.getDate("reg_date"));
				r.setClickNo(rset.getInt("click_no"));
				
				list.add(r);
				
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		
		return list;
	}
	

	public ArrayList<Recipe> selectSortRecipe(Connection conn, int pno, String sort) {
		
		ArrayList<Recipe> list = new ArrayList<>();
		
		String sql = prop.getProperty("selectSortRecipe") + " ORDER BY "+ sort + " DESC";
		
		
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, pno);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				Recipe r = new Recipe();
				
				r.setRecipeNo(rset.getInt("Recipe_board_no"));
				r.setRecipeMainImg(rset.getString("recipe_main_img"));
				r.setRecipeTitle(rset.getString("Recipe_title"));
				r.setMem(rset.getString("mem_id"));
				r.setRegDate(rset.getDate("reg_date"));
				r.setClickNo(rset.getInt("click_no"));
				
				list.add(r);
				
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		
		return list;
	}
	
}
