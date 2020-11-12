package com.kh.report.model.dao;

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
import com.kh.report.model.vo.Report;

public class ReportDao {
	
	private Properties prop = new Properties();
	
	public ReportDao() {
		
		String fileName = ReportDao.class.getResource("/sql/report/report-mapper.xml").getPath();
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public int selectListCount(Connection conn) {
		int listCount = 0;
		Statement stmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectListCount");
		
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(sql);
			
			if(rset.next()) {
				listCount = rset.getInt("listcount");
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(stmt);
		}
		
		return listCount;
	}
	
	public ArrayList<Report> selectList(Connection conn, Pagination p){
		
		ArrayList<Report> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (p.getCurrentPage() - 1) * p.getBoardLimit() + 1;
			int endRow = startRow + p.getBoardLimit() - 1;
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);

			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				list.add(new Report(rset.getInt("report_no")
									,rset.getString("mem_no")
									,rset.getString("report_category")
									,rset.getInt("report_board_no")
									,rset.getDate("report_date")
									,rset.getString("report_contents")
									,rset.getString("report_result")
									,rset.getString("bc_yn")
									,rset.getString("blinding")
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
	
	public int increaseCount(Connection conn, int repno) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("increaseCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, repno);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}
	
	public Report selectReport(Connection conn, int repno) {
		
		Report rp = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectReport");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, repno);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				
				rp = new Report(rset.getInt("report_no")
						,rset.getString("mem_no")
						,rset.getString("report_category")
						,rset.getInt("report_board_no")
						,rset.getDate("report_date")
						,rset.getString("report_contents")
						,rset.getString("report_result")
						,rset.getString("bc_yn")
						,rset.getString("blinding")
						);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			
			close(rset);
			close(pstmt);
		}
		
		return rp;
		
	}

}
