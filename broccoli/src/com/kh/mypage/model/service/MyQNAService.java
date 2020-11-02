package com.kh.mypage.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.mypage.model.dao.MyQNADao;
import com.kh.mypage.model.vo.MyPagePageInfo;
import com.kh.mypage.model.vo.MyQNA;

public class MyQNAService {
	
	public int selectListCount() {
		
		Connection conn = getConnection();
		
		int listCount = new MyQNADao().selectListCount(conn);
		
		close(conn);
		
		return listCount;
	}
	
	public ArrayList<MyQNA> selectList(MyPagePageInfo pi){
		
        Connection conn = getConnection();
		
		ArrayList<MyQNA> list = new MyQNADao().selectList(conn,pi);
		
		close(conn);
		
		return list;
		
	}

}
