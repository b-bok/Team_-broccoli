package com.kh.review.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.commit;
import static com.kh.common.JDBCTemplate.getConnection;
import static com.kh.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.common.Pagination;
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
	
	
	/**
	 * 김근희 작성 -관리자(admin)단에서 리뷰카운트
	 * @return
	 */
	public int selectListCount() {
		
		Connection conn = getConnection();
		int listCount = new ReviewDao().selectListCount(conn);
		close(conn);
		return listCount;
		
	}
	
	
	/**
	 * 김근희 작성 - 관리자(admin)단에서 리뷰조회 
	 * @param p
	 * @return
	 */
	public ArrayList<Review> selectList(Pagination p){
		
		Connection conn = getConnection();
		
		ArrayList<Review> list = new ReviewDao().selectList(conn, p);
		
		close(conn);
		
		return list;
		
	}
	
	
}
