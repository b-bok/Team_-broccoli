package com.kh.review.model.service;

import static com.kh.common.JDBCTemplate.*;


import java.sql.Connection;

import com.kh.review.model.dao.ReviewDao;
import com.kh.review.model.vo.Review;

public class ReviewService {

	
	public int increaseCount(int rno) {
		
		Connection conn = getConnection();
		
		int result = new ReviewDao().increaseCount(conn, rno);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		

		return result;
		
	}
	
	
	public Review selectUserReview(int rno) {
		
		Connection conn = getConnection();
		
		Review r = new ReviewDao().selectUserReview(conn,rno);
		
		close(conn);
		
		return r;
		
		
	}
	
	public int increaseLike(int rno) {
		
		Connection conn = getConnection();
		
		int result = new ReviewDao().increaseLike(conn, rno);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		

		return result;
		
	}
	
	
	
}
