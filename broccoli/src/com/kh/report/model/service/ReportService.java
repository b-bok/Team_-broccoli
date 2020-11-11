package com.kh.report.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import static com.kh.common.JDBCTemplate.*;
import com.kh.common.Pagination;
import com.kh.report.model.dao.ReportDao;
import com.kh.report.model.vo.Report;

public class ReportService {
	
	public int selectListCount() {
		
		Connection conn = getConnection();
		int listCount = new ReportDao().selectListCount(conn);
		close(conn);
		return listCount;
		
	}
	
	public ArrayList<Report> selectList(Pagination p){
		
		Connection conn = getConnection();
		ArrayList<Report> list = new ReportDao().selectList(conn,p);
		close(conn);
		return list;
	}
	
	public int increaseCount(int repno) {
		
		Connection conn = getConnection();
		int result = new ReportDao().increaseCount(conn, repno);
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		return result;
	}
	
	
	public Report selectReport(int repno) {
		
		Connection conn = getConnection();
		Report rp = new ReportDao().selectReport(conn, repno);
		close(conn);
		return rp;
	}

}
