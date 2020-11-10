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
	
	
	
	/**
	 * 	장바구니에 없는 상품을 담을 경우 새로 삽입
	 * @param olist
	 * @return
	 */
	public String insertCart(OrderList olist) {
		
		Connection conn = getConnection();
		
		int result = new OrderDao().insertCart(conn, olist);			
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return "추가";
	}
	
	
	/**
	 * 	장바구니에 이미 담겨있는 상품이 있는지 확인하는 메소드
	 * @param pno
	 * @param mno
	 * @return
	 */
	public int selectCart(int pno, int mno) {
		
		Connection conn = getConnection();
		
		int result = new OrderDao().selectCart(conn, pno, mno);
		
		close(conn);
		
		return result;
		
	}
	
	/**
	 * 장바구니에 이미 상품이 있는데 또 장바구니에 담으면 수량 추가
	 * @param olist
	 * @return
	 */
	public String updateCart(OrderList olist) {
		
		Connection conn = getConnection();
	
		int result = new OrderDao().updateCart(conn, olist);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return "중복";
	}
	
	
	/**
	 * 	장바구니 조회화면
	 * @param mno
	 * @return
	 */
	public ArrayList<OrderList> selectCartList(int mno){
		
		Connection conn = getConnection();
		ArrayList<OrderList> list = new OrderDao().selectCartList(conn, mno);			
		
		close(conn);
		
		return list;
	}
	
	
	/**
	 * 	장바구니에 담은 상품을 장바구니 조회화면에서 수량을 변경하여 주문하는 경우
	 * @param olist
	 * @param mno
	 * @return
	 */
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
	
	
	/**
	 * 	장바구니에서 선택한 상품을 삭제처리하는 메소드
	 * @param mno
	 * @param pno
	 * @return
	 */
	public int deleteCart(int mno, int pno) {
		
		Connection conn = getConnection();
		
		int result = new OrderDao().deleteCart(conn, mno, pno);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
	
	
	/**
	 * 	상품상세페이지에서 바로구매 버튼을 클릭시 주문서화면에서 조회처리할 메소드
	 */
	public void selectOrder(int mno, int pno) {
		
		Connection conn = getConnection();
		
		new OrderDao().selectOrder(conn, mno, pno);
		
		close(conn);
		
	}
	
	

}
