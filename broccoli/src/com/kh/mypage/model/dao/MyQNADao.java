package com.kh.mypage.model.dao;

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

import com.kh.mypage.model.vo.MyPagePageInfo;
import com.kh.mypage.model.vo.MyQNA;

public class MyQNADao {
	
	private Properties prop = new Properties();
	
	public MyQNADao() {
		try {
			prop.loadFromXML(new FileInputStream(MyQNADao.class.getResource("/sql/mypage/myqna-mapper/myqna-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public int selectListCount(Connection conn) {
		//select문 => int(총 갯수)
		
      int listCount = 0;
		
		Statement stmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectListCount");
		
		try {
			stmt = conn.createStatement();
			
            rset = stmt.executeQuery(sql);
			
			if(rset.next()) {
				listCount = rset.getInt("LISTCOUNT");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		
		return listCount;
		
		
	}
	
	public ArrayList<MyQNA> selectList(Connection conn, MyPagePageInfo pi){
		// select문 => 여러행 => ArrayList
				ArrayList<MyQNA>list = new ArrayList<>();
				
				PreparedStatement pstmt = null;
				ResultSet rset = null;
				
				String sql = prop.getProperty("selectList");
				
				try {
					pstmt = conn.prepareStatement(sql);
					
					int startRow = (pi.getCurrentPage()-1)* pi.getBoardLimit()+1;
					int endRow = startRow + pi.getBoardLimit()-1;
					
					pstmt.setInt(1,  startRow);
					pstmt.setInt(2, endRow);
					
					rset = pstmt.executeQuery();
					
					
					
					while(rset.next()) {
						list.add(new MyQNA(rset.getInt("order_no"),
								           rset.getString("m_qna_category"),
								           rset.getString("m_qna_title"),
								           rset.getDate("m_reg_date")));
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
