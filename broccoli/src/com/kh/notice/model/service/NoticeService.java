package com.kh.notice.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.getConnection;
import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.notice.model.dao.NoticeDao;
import com.kh.notice.model.vo.Faq;
import com.kh.notice.model.vo.Notice;

public class NoticeService {


	
	public ArrayList<Notice> selectNoticeList() {
		Connection conn = getConnection();
		
		ArrayList<Notice> list = new NoticeDao().selectNoticeList(conn);
		
		close(conn);
		
		return list;
		
	}
	
	
	public ArrayList<Faq> selectFaqList(int num1) {
		
		Connection conn = getConnection();
		
		ArrayList<Faq> list = new NoticeDao().selectFaqList(conn,num1);
		
		close(conn);
		
		return list;
		
		
		
	}
	
	public int increaseCount(int nno) {
		
		Connection conn = getConnection();
		
		
		int result = new NoticeDao().increaseCount(conn, nno);
		
		if(result > 0) {
			commit(conn);
		}else { //실패
			rollback(conn);
		}
		
		close(conn);
		return result;
		
	}


	public Notice selectNotice(int nno) {
		
		Connection conn = getConnection();
		
		Notice n = new NoticeDao().selectNotice(conn, nno);
		
		close(conn);
		
		return n;
	
	}


	public int insertNotice(Notice n) {

		Connection conn = getConnection();
		
		int result = new NoticeDao().insertNotice(conn, n);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		
		return result;
	}
}
