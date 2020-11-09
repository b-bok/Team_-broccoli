package com.kh.notice.model.dao;

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

import com.kh.notice.model.vo.Faq;
import com.kh.notice.model.vo.Notice;

public class NoticeDao {

	private Properties prop = new Properties();
	
	
	public NoticeDao() {
		
		String fileName = NoticeDao.class.getResource("/sql/notice/notice-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	public ArrayList<Notice> selectNoticeList(Connection conn){
		
		ArrayList<Notice> list = new ArrayList<>();
		
		Statement stmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectNoticeList");
		
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(sql);
			
			while(rset.next()) {
				list.add(new Notice(rset.getInt("notice_no"),
									rset.getString("notice_title"),
									rset.getInt("notice_views"),
									rset.getDate("notice_enroll")));
			}
		
		} catch (SQLException e) {

			e.printStackTrace();
		}finally {
			close(rset);
			close(stmt);
		}
		return list;
		
	}
	
	public ArrayList<Faq> selectFaqList(Connection conn,String num1) {
		
		ArrayList<Faq> list = new ArrayList<Faq>();
		
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectFaqList");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num1);
			rset = pstmt.executeQuery();
			
			
			while(rset.next()) {
				Faq q = new Faq();
				q.setFaqNo(rset.getInt("faq_no"));
				q.setFaqTitle(rset.getString("faq_title"));
				q.setFaqContent(rset.getString("faq_content"));
				q.setFaqEnroll(rset.getDate("faqEnroll"));
				q.setGrFaqName(rset.getInt("grFaqName"));
				list.add(q);
						
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rset);
		}
		
		return list;
	}
}
