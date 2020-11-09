package com.kh.notice.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.getConnection;

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
	
	
	public ArrayList<Faq> selectFaqList(String num1) {
		
		Connection conn = getConnection();
		
		ArrayList<Faq> list = new NoticeDao().selectFaqList(conn,num1);
		
		close(conn);
		
		return list;
		
	}
	
}
