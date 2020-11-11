package com.kh.review.model.dao;

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

import com.kh.common.Pagination;
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
	
	
	/**
	 * 김근희 작성 : 관리자(admin) 리뷰 카운트 
	 * @param conn
	 * @return
	 */
	public int selectListCount(Connection conn) {
		
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
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		
		return listCount;
		
	}
	
	/**
	 * 김근희 작성 - 관리자(admin)단 리뷰조회
	 * @param conn
	 * @param p
	 * @return
	 */
	public ArrayList<Review> selectList(Connection conn, Pagination p){
		
		ArrayList<Review> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			int startRow = (p.getCurrentPage() -1)*p.getBoardLimit() + 1;
			int endRow = startRow + p.getBoardLimit() -1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				list.add(new Review(rset.getInt("review_board_no")
									,rset.getInt("p_no")
									,rset.getString("mem_no")
									,rset.getDate("reg_date")
									,rset.getString("review_title")
									,rset.getString("review_content")
									,rset.getInt("click_no")
									,rset.getInt("review_rate")
									,rset.getInt("like")
									));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
		
	}
	
}
