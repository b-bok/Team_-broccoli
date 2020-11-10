package com.kh.order.model.dao;

import static com.kh.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.order.model.vo.OrderList;

public class OrderDao {
	
	private Properties prop = new Properties();
	
	public OrderDao() {
		
		String fileName = OrderDao.class.getResource("/sql/order/order-mapper.xml").getPath();
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	
	/**
	 * 		장바구니에 담기 전에 orderlist테이블에서 중복된 컬럼이 있는지 확인
	 * @param conn
	 * @param pno
	 * @param mno
	 * @return
	 */
	public int selectCart(Connection conn, int pno, int mno) {
		
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = prop.getProperty("selectCart");
		int result = 0;
		
		try {
			
			ps = conn.prepareStatement(sql);
			
			ps.setInt(1, mno);
			ps.setInt(2, pno);
			
			rs = ps.executeQuery();
			
			if(rs.next()) {
				result = 1;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(ps);
		}
		
		return result;
	}
	
	
	public int insertCart(Connection conn, OrderList olist) {
		
		PreparedStatement ps = null;
		String sql = prop.getProperty("insertCart");
		int result = 0;
		
		try {
			
			ps = conn.prepareStatement(sql);
			
			ps.setInt(1, olist.getMemNo());
			ps.setInt(2, olist.getpNo());
			ps.setInt(3, olist.getTotalAmt());
			ps.setInt(4, olist.getpPrice());
			ps.setInt(5, olist.getQuantity());
			
			result = ps.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(ps);
		}
		
		
		return result;
	}
	
	
	public int updateCart(Connection conn, OrderList olist) {
		
		PreparedStatement ps = null;
		String sql = prop.getProperty("updateCart");
		int result = 0;
		
		
		try {
			
			ps = conn.prepareStatement(sql);
			
			ps.setInt(1, olist.getQuantity());
			ps.setInt(2, olist.getQuantity());
			ps.setInt(3, olist.getMemNo());
			ps.setInt(4, olist.getpNo());
			
			result = ps.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(ps);
		}
		
		
		return result;
		
	}
	
	
	
	public ArrayList<OrderList> selectCartList(Connection conn, int mno) {
		
		PreparedStatement ps = null;
		ResultSet rs = null;
		ArrayList<OrderList> list = new ArrayList<>();
		String sql = prop.getProperty("selectCartList");
		
		try {

			ps = conn.prepareStatement(sql);
			
			ps.setInt(1, mno);
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				list.add(new OrderList(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), 
									   rs.getInt(5), rs.getInt(6), rs.getInt(7), rs.getInt(8)
						));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(ps);
		}
		
		
		return list;
	}
	
	
	public int updateOrder(Connection conn, OrderList olist, int mno) {
		PreparedStatement ps = null;
		String sql = prop.getProperty("updateOrder");
		int result = 0;
		
		try {
			
			ps = conn.prepareStatement(sql);
			
			ps.setInt(1, olist.getQuantity());
			ps.setInt(2, olist.getTotalAmt());
			ps.setInt(3, olist.getMemNo());
			ps.setInt(4, olist.getpNo());
			
			result = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(ps);
		}
		
		return result;
	}
	
	
	public int deleteCart(Connection conn, int mno, int pno) {
		
		PreparedStatement ps = null;
		int result = 0;
		String sql = prop.getProperty("deleteCart");
		
		try {
			
			ps = conn.prepareStatement(sql);
			
			ps.setInt(1, mno);
			ps.setInt(2, pno);
			
			result = ps.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(ps);
		}
		
		return result;
		
	}
	
	
	public void selectOrder(Connection conn, int mno, int pno) {
		
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = prop.getProperty("selectOrder");
		
		try {
			
			ps = conn.prepareStatement(sql);
			
			ps.setInt(1, mno);
			ps.setInt(2, pno);
			
			rs = ps.executeQuery();
			
			if(rs.next()) {
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
	}

}
