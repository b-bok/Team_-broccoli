package com.kh.qna.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.commit;
import static com.kh.common.JDBCTemplate.getConnection;
import static com.kh.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.product.model.vo.PageInfo;
import com.kh.qna.model.dao.QnaDao;
import com.kh.qna.model.vo.Qna;



public class QnaService {

	public ArrayList<Qna> selectUserQna(int pno) {
		
		
		Connection conn = getConnection();
		
		ArrayList<Qna> list = new QnaDao().selectUserQna(conn, pno);
		
		close(conn);
		
		return list;

	}

	public ArrayList<Qna> selectSortQna(int pno, String sort) {
			

		Connection conn = getConnection();
		
		ArrayList<Qna> list = new QnaDao().selectSortQna(conn, pno, sort);
		
		close(conn);
		
		return list;
		

		
		
	}
	
	
	public Qna selectDetailQna(int qno) {
		

		Connection conn = getConnection();
		
		Qna q = new QnaDao().selectDetailQna(conn, qno);
		
		close(conn); 
		
		return q;
		
	}
	
	
	public int insertQna(Qna q) {
		
		Connection conn = getConnection();
		
		int result = new QnaDao().insertQna(conn, q);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		
		close(conn); 
		
		return result;
		
	}

	public ArrayList<Qna> selectAllQna(PageInfo pi) {
		
		
		Connection conn = getConnection();
		
		ArrayList<Qna> list = new QnaDao().selectAllQna(conn, pi);
		
		close(conn);
		
		return list;
		
	}

	public int selectListCount() {
	
		Connection conn = getConnection();
		
		int listCount = new QnaDao().selectListCount(conn);
		
		close(conn);
		
		return listCount;
		
	}
	
	
	

}
