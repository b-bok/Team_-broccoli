package com.kh.review.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import static com.kh.common.JDBCTemplate.*;

public class ReviewDao {

		Properties prop = new Properties();
		
	public ReviewDao() {
		
		String fileName = ReviewDao.class.getResource("/sql/review/review-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName));

		} catch (IOException e) {
			
			e.printStackTrace();
		}
		
	}
	
	
	public int increaseCount(Connection conn, int rno) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("increaseCount");
		
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, rno);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		
		return result;
	}
	
}
