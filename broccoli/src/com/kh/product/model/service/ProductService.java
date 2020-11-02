package com.kh.product.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.product.model.dao.ProductDao;
import com.kh.product.model.vo.Product;

public class ProductService {
	
	public ArrayList<Product> selectAllProduct(){
		
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().selectAllProduct(conn);
		
		close(conn);
		
		return list;
		
	}
	
}
