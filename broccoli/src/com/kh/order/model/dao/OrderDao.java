package com.kh.order.model.dao;

import static com.kh.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Properties;

import com.kh.order.model.vo.DeliverRegister;
import com.kh.order.model.vo.Order;
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
	
	
	public HashMap<String, String> selectOrder(Connection conn, int mno, int pno) {
		
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = prop.getProperty("selectOrder");
		HashMap<String, String> map = new HashMap<>();
		
		try {
			
			ps = conn.prepareStatement(sql);
			
			ps.setInt(1, mno);
			ps.setInt(2, pno);
			
			rs = ps.executeQuery();
			
			if(rs.next()) {
				map.put("pno", String.valueOf(rs.getInt(1)));
				map.put("pname", rs.getString(2));
				map.put("thumb", rs.getString(3));
				map.put("price", String.valueOf(rs.getInt(4)));
				map.put("mname", rs.getString(5));
				map.put("mobile", rs.getString(6));
				map.put("add1", rs.getString(7));
				map.put("add2", rs.getString(8));
				map.put("addex", rs.getString(9));
				map.put("point", rs.getString(10));
				map.put("zipcode", rs.getString(11));
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(ps);
		}
		
		return map;
		
	}
	
	
	
	
	
	public ArrayList<DeliverRegister> selectDeliveryList(Connection conn, int mno) {
		
		PreparedStatement ps = null;
		String sql = prop.getProperty("selectDeliveryList");
		ResultSet rs = null;
		ArrayList<DeliverRegister> list = new ArrayList<>();
		
		try {
			
			ps = conn.prepareStatement(sql);
			
			ps.setInt(1, mno);
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				list.add(new DeliverRegister(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), 
											 rs.getString(5), rs.getString(6), rs.getString(7), 
											 rs.getString(8), rs.getString(9)));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(ps);
		}
		
		return list;
	}
	
	
	public int selectAddressNo(Connection conn, int mno) {
		
		PreparedStatement ps = null;
		ResultSet rs = null;
		int result = 0;
		String sql = prop.getProperty("selectAddressNo");
		
		try {
			
			ps = conn.prepareStatement(sql);
			
			ps.setInt(1, mno);
			
			rs = ps.executeQuery();
			
			rs.next();
			
			result = rs.getInt(1);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
		
	}
	
	public int insertDeliverRegister(Connection conn, DeliverRegister dr) {

		PreparedStatement ps = null;
		String sql = prop.getProperty("insertDeliverRegister");
		int result = 0;
		
		try {
			
			ps = conn.prepareStatement(sql);
			
			ps.setInt(1, dr.getMemNo());
			ps.setString(2, dr.getAddress());
			ps.setString(3, dr.getAddress2());
			ps.setString(4, dr.getDeliverName());
			ps.setString(5, dr.getReceiver());
			ps.setString(6, dr.getAddressYN());
			ps.setString(7, dr.getMobile());
			
			result = ps.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(ps);
		}
		
		return result;
	}
	
	
	public int updateAddressNo(Connection conn, int mno) {
		
		PreparedStatement ps = null;
		int result = 0;
		String sql = prop.getProperty("updateAddressNo");
		
		try {
			
			ps = conn.prepareStatement(sql);
			
			ps.setInt(1, mno);
			
			result = ps.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(ps);
		}
		return result;
		
	}
	
	
	public int deleteDeliverRegister(Connection conn, int dno) {
		
		PreparedStatement ps = null;
		String sql = prop.getProperty("deleteDeliverRegister");
		int result = 0;
		
		try {
			
			ps = conn.prepareStatement(sql);
			
			ps.setInt(1, dno);
			
			result = ps.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(ps);
		}
		return result;
		
	}
	
	
	public int minusAddressNo(Connection conn, int mno) {
		
		PreparedStatement ps = null;
		int result = 0;
		String sql = prop.getProperty("minusAddressNo");
		
		try {
			
			ps = conn.prepareStatement(sql);
			
			ps.setInt(1, mno);
			
			result = ps.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(ps);
		}
		
		return result;
		
	}
	
	
	
	public ArrayList<Order> selectOrderList(Connection conn, int mno) {
		
		PreparedStatement ps = null;
		String sql = prop.getProperty("selectOrderList");
		ResultSet rs = null;
		ArrayList<Order> list = new ArrayList<>();
		
		try {
			
			ps = conn.prepareStatement(sql);
			
			ps.setInt(1, mno);
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				String str = rs.getString("addrextra");
				if(str == null) {
					str = " ";
				}
				list.add(new Order(rs.getInt("mem_no"), rs.getString("mem_name"), rs.getString("zipcode"),
									rs.getString("address1"), rs.getString("address2"), str,
									rs.getString("mobile"), rs.getInt("total_amt"), rs.getInt("p_no"),
									rs.getString("p_name"), rs.getString("p_thumbnail"), rs.getInt("point"), 
									rs.getInt("quantity"), rs.getInt("p_price"))
						);
			}
					
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(ps);
		}
		
		return list;
	}
	
	
	public int insertOrder(Connection conn, Order o) {
		
		PreparedStatement ps = null;
		int result = 0;
		String sql = prop.getProperty("insertOrder");
		
		try {
			
			ps = conn.prepareStatement(sql);
			
			ps.setInt(1, o.getMemNo());
			ps.setString(2, o.getMemName());
			ps.setString(3, o.getAddress1());
			ps.setString(4, o.getAddress2());
			ps.setString(5, o.getMobile());
			ps.setString(6, o.getMemName());
			ps.setString(7, o.getMobile());
			ps.setString(8, o.getRecieve());
			ps.setInt(9, o.getDeliveryFee());
			ps.setInt(10, o.getTotalAmt());
			ps.setString(11, o.getPointYn());
			
			result = ps.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(ps);
		}
		
		return result;
	}
	
	
	public Order orderComplete(Connection conn, int mno) {
		
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = prop.getProperty("orderComplete");
		Order order = null;
		
		try {
			
			ps = conn.prepareStatement(sql);
			
			ps.setInt(1, mno);
			
			rs = ps.executeQuery();
			
			if(rs.next()) {
				order = new Order(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getDate(4),
								  rs.getString(5), rs.getString(6), rs.getString(7), 
								  rs.getString(8), rs.getString(9), rs.getString(10),
								  rs.getString(11), rs.getString(12), rs.getInt(13),
								  rs.getString(14), rs.getString(15), rs.getInt(16)
						);
			}
			
			
					
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(ps);
		}
		
		return order;
		
		
	}

}
