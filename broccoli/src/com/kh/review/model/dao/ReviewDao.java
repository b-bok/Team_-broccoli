package com.kh.review.model.dao;

import static com.kh.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.kh.review.model.vo.Review;

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
	
	
	public Review selectUserReview(Connection conn, int rno) {
		
		Review r = new Review();
		
		ResultSet rset = null;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("selectUserReview");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, rno);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				r.setReviewNo(rset.getInt("REVIEW_BOARD_NO"));
				r.setReviewTitle(rset.getString("REVIEW_TITLE"));
				r.setMem(rset.getString("MEM_ID"));
				r.setRegDate(rset.getDate("REG_DATE"));
				r.setClickNo(rset.getInt("click_no"));
				r.setReviewAttach(rset.getString("RV_ATTACH_IMG"));
				r.setReviewContent(rset.getString("REVIEW_CONTENT"));
				r.setLike(rset.getInt("like_count"));
			}
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		

		
		return r;
	}
	
	
	public int increaseLike(Connection conn, int rno) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("increaseLike");
		
		
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
