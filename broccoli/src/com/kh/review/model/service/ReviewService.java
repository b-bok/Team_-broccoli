package com.kh.review.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;

import com.kh.review.model.dao.ReviewDao;

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
	
	
	
}
