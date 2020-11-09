package com.kh.order.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.commit;
import static com.kh.common.JDBCTemplate.getConnection;
import static com.kh.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.order.model.dao.OrderDao;
import com.kh.order.model.vo.OrderList;

public class OrderService {
	
	
	
	public String insertOrderList(OrderList olist) {
		
		Connection conn = getConnection();
		
		int result = new OrderDao().insertOrderList(conn, olist);			
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return "추가";
	}
	
	
	public int selectOrderList(int pno, int mno) {
		
		Connection conn = getConnection();
		
		int result = new OrderDao().selectOrderList(conn, pno, mno);
		
		close(conn);
		
		return result;
		
	}
	
	public String updateOrderList(OrderList olist) {
		
		Connection conn = getConnection();
	
		int result = new OrderDao().updateOrderList(conn, olist);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return "중복";
	}
	
	
	public ArrayList<OrderList> selectOrder(int mno){
		
		Connection conn = getConnection();
		ArrayList<OrderList> list = new OrderDao().selectOrder(conn, mno);			
		
		close(conn);
		
		return list;
	}
	
	
	public int updateOrder(OrderList olist, int mno) {
		
		Connection conn = getConnection();
		int result = new OrderDao().updateOrder(conn, olist, mno);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
	
	

}
