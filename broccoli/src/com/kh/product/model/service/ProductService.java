package com.kh.product.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.product.model.dao.ProductDao;
import com.kh.product.model.vo.PageInfo;
import com.kh.product.model.vo.Product;

public class ProductService {
	
	public ArrayList<Product> selectAllProduct(PageInfo pi){
		
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().selectAllProduct(conn, pi);
		
		close(conn);
		
		return list;
		
	}
	
	public int selectListCount() {
		Connection conn = getConnection();
		
		int listCount = new ProductDao().selectListCount(conn);
		
		close(conn);
		
		return listCount;
	}
	
	
	public ArrayList<Product> selectBestProduct(PageInfo pi) {
		
		Connection conn = getConnection();
		
		
		ArrayList<Product> list = new ProductDao().selectBestProduct(conn, pi);
		
		close(conn);
		
		return list;
	}
	
	
	public ArrayList<Product> selectNewProduct(PageInfo pi) {
		
		Connection conn = getConnection();
		
		
		ArrayList<Product> list = new ProductDao().selectNewProduct(conn, pi);
		
		close(conn);
		
		return list;
	}
	
	
	public ArrayList<Product> selectEventProduct(int eno) {
		
		Connection conn = getConnection();
		
		
		ArrayList<Product> list = new ProductDao().selectEventProduct(conn,eno);
		
		close(conn);
		
		return list;
	}
	
	/**
	 * 관리자 상품조회 리스트용 
	 * @param pi 페이지정보
	 * @return 상품전체조회 리스트
	 */
	public ArrayList<Product> selectAdminProductList(PageInfo pi){
		
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().selectAdminProductList(conn, pi);
		
		close(conn);
		
		return list;
	}
	
	
}
