package com.kh.product.model.dao;

import static com.kh.common.JDBCTemplate.*;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.product.model.vo.PageInfo;
import com.kh.product.model.vo.Product;


public class ProductDao {
	
	private Properties prop = new Properties();
	
	public ProductDao() {
		
		String fileName = ProductDao.class.getResource("/sql/product/product_mapper.xml").getPath();
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
		
			e.printStackTrace();
		}

		
	}
	
	public int selectListCount(Connection conn) {
		
		int listCount = 0;

		Statement stmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectListCount");
		
		try {
			stmt = conn.createStatement();
			
			rset = stmt.executeQuery(sql);
			
			while(rset.next()) {
				
				listCount = rset.getInt(1);
			}
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}

		
		return listCount;
	}
	
	
	public ArrayList<Product> selectAllProduct(Connection conn, PageInfo pi) {
		
		ArrayList<Product> list = new ArrayList<>();
		
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("selectAllProduct");
		
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (pi.getCurrentPage() -1) * pi.getBoardLimit() +1;
			int endRow = startRow + pi.getBoardLimit() -1;
			
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			
			rset = pstmt.executeQuery();

			
			
			while(rset.next()) {
				
				list.add(new Product(
									   rset.getInt("p_no")
									 , rset.getString("p_name")
									 , rset.getInt("p_price")
									 , rset.getInt("p_discount")
									 , rset.getString("p_detail")
									 , rset.getString("thumbnail")
						             )
						);
				
			}
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		
		return list;
	}

	
	public ArrayList<Product> selectBestProduct(Connection conn, PageInfo pi) {
		ArrayList<Product> list = new ArrayList<>();
		
		PreparedStatement pstmt  = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectBestProduct");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (pi.getCurrentPage() -1)* pi.getBoardLimit() +1 ;
			int endRow = startRow + pi.getBoardLimit() -1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list.add(new Product(
									 rset.getInt("p_no")
									 , rset.getString("p_name")
									 , rset.getInt("p_price")
									 , rset.getInt("p_discount")
									 , rset.getString("p_detail")
									 , rset.getString("thumbnail")
									)
						);
				
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return list;
	}
	
	public ArrayList<Product> selectNewProduct(Connection conn, PageInfo pi) {
		ArrayList<Product> list = new ArrayList<>();
		
		PreparedStatement pstmt  = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectNewProduct");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (pi.getCurrentPage() -1)* pi.getBoardLimit() +1 ;
			int endRow = startRow + pi.getBoardLimit() -1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list.add(new Product(
									 rset.getInt("p_no")
									 , rset.getString("p_name")
									 , rset.getInt("p_price")
									 , rset.getInt("p_discount")
									 , rset.getString("p_detail")
									 , rset.getString("thumbnail")
									)
						);
				
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return list;
	}
	
	public ArrayList<Product> selectEventProduct(Connection conn,int eno) {
		ArrayList<Product> list = new ArrayList<>();
		
		PreparedStatement pstmt  = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectEventProduct");
		
		try {
			pstmt = conn.prepareStatement(sql);
			

			
			pstmt.setInt(1, eno);

			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list.add(new Product(
									 rset.getInt("p_no")
									 , rset.getString("p_name")
									 , rset.getInt("p_price")
									 , rset.getInt("p_discount")
									 , rset.getString("p_detail")
									 , rset.getString("thumbnail")
									)
						);
				
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
