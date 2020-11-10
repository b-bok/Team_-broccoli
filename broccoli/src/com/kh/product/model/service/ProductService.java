package com.kh.product.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.getConnection;
import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.product.model.dao.ProductDao;
import com.kh.product.model.vo.PageInfo;
import com.kh.product.model.vo.Product;
import com.kh.review.model.vo.Review;

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
	
	
	public Product selectDetailProduct(int pno) {
		Connection conn = getConnection();
		
		Product p = new ProductDao().selectDetailProduct(conn, pno);
		
		close(conn);
		
		return p;
	}
	
	public ArrayList<Review> selectUserReview(int pno){
		
		Connection conn = getConnection();
		
		ArrayList<Review> list = new ProductDao().selectUserReview(conn, pno);
		
		close(conn);
		
		return list;
		
	};
	
	
	public ArrayList<Review> selectPhotoReview(int pno){
		
		Connection conn = getConnection();
		
		ArrayList<Review> list = new ProductDao().selectPhotoReview(conn, pno);
		
		close(conn);
		
		return list;
		
	};
	
	public ArrayList<Review> selectSortReview(int pno, String sort){
		
		Connection conn = getConnection();
		
		ArrayList<Review> list = new ProductDao().selectSortReview(conn, pno, sort);
		
		close(conn);
		
		return list;
		
	};
	
	
	
	
	/**
	 * 관리자 상품상세조회 페이지
	 * @param pno 상품번호
	 * @return 상품정보
	 */
	public Product selectAdminProductDetail(int pno) {
		Connection conn = getConnection();
		
		Product p = new ProductDao().selectAdminProductDetail(conn, pno);
		
		close(conn);
		
		return p;
	}
	
	
	
	/**
	 * 상품등록하기용 서비스
	 * @param p 상품정보담은 상품객체
	 * @return 실행결과
	 */
	public int insertProduct(Product p) {
		Connection conn = getConnection();
		
		int result = new ProductDao().insertProduct(conn, p);
		
		if(result >0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
	
	public ArrayList<Product> selectAdminProductBySearch(PageInfo pi, String searchCat, String searchWord){
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().selectAdminProductBySearch(conn, pi,searchCat, searchWord);
		
		close(conn);
		
		return list;
	}
	
	
}
