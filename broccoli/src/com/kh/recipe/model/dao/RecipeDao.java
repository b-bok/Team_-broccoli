package com.kh.recipe.model.dao;

import static com.kh.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.common.Pagination;
import com.kh.recipe.model.vo.Recipe;
import com.kh.recipe.model.vo.RecipeAttach;

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
	
	
	public int increaseCount(Connection conn,int rco) {
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("increaseCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, rco);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}

	public Recipe selectDetailRecipe(Connection conn, int rco) {
		
		Recipe r = new Recipe();
		
		ResultSet rset = null;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("selectDetailRecipe");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, rco);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				r.setRecipeNo(rset.getInt("RECIPE_BOARD_NO"));
				r.setRecipeTitle(rset.getString("RECIPE_TITLE"));
				r.setMem(rset.getString("MEM_ID"));
				r.setRegDate(rset.getDate("REG_DATE"));
				r.setClickNo(rset.getInt("CLICK_NO"));
				r.setRecipeIng(rset.getString("RECIPE_ING"));
				
			}
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return r;
	}

	public ArrayList<RecipeAttach> selectRecipeSequence(Connection conn, int rco) {
	
		ArrayList<RecipeAttach> list = new ArrayList<>();
		
		String sql = prop.getProperty("selectRecipeSequence");
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, rco);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				RecipeAttach ra = new RecipeAttach();
				
				ra.setRecipeAttachImg(rset.getString("recipe_attach_img"));
				ra.setSequenceContent(rset.getString("sequence_content"));

				list.add(ra);
				
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		
		return list;
	}
	
	/**
	 * 김근희 작성 - 어드민 레시피 조회 카운트 
	 * @param conn
	 * @return
	 */
	public int selectListCount(Connection conn) {
		
		int listCount = 0;
		Statement stmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectListCount");
		
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(sql);
			
			while(rset.next()) {
				listCount = rset.getInt("LISTCOUNT");
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		
		return listCount;
	}
	
	
	public ArrayList<Recipe> selectList(Connection conn, Pagination p){
		
		ArrayList<Recipe> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			int startRow = (p.getCurrentPage() -1)*p.getBoardLimit() +1 ;
			int endRow = startRow + p.getBoardLimit() - 1;
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				list.add(new Recipe(rset.getInt("recipe_board_no")
									,rset.getInt("p_no")
									,rset.getString("mem_no")
									,rset.getDate("reg_date")
									,rset.getString("recipe_title")
									,rset.getString("recipe_ing")
									,rset.getInt("click_no")
									,rset.getString("recipe_main_img")
									));
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
		
	}
	

}
