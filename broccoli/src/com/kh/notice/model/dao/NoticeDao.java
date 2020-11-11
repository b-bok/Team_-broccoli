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
	
	public ArrayList<Faq> selectFaqList(Connection conn,int num1) {
		
		ArrayList<Faq> list = new ArrayList<Faq>();
		System.out.println("어레이리스트 num1값:"+num1);
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectFaqList");
		
		System.out.println(sql);
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num1);

			rset = pstmt.executeQuery();
			
			
			while(rset.next()) {
			
				Faq q = new Faq();
				q.setFaqNo(rset.getInt("faq_no"));
				System.out.println("번호:"+q.getFaqNo());
				q.setFaqTitle(rset.getString("faq_title"));
				System.out.println("제목 : "+ q.getFaqTitle());
				q.setFaqContent(rset.getString("faq_content"));
				System.out.println("내용 : " + q.getFaqContent());
				q.setFaqEnroll(rset.getDate("faq_enroll"));
				System.out.println("등록일 : " + q.getFaqEnroll());
				q.setGrFaqName(rset.getInt("gr_faq_name"));
				System.out.println("분류명 : " + q.getGrFaqName());
			
				list.add(q);					
			 } 
			
			System.out.println("dao어레이리스트 추가후"+list.size());
			
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}finally {
			close(pstmt);
			close(rset);
		}
		
		return list;
	}
	
	
	public int increaseCount(Connection conn, int nno) {
		
		// update문 실행 > 처리된 행 수 
		int result = 0;
		
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("increaseCount");
		
		try {
			pstmt= conn.prepareStatement(sql);
			
			pstmt.setInt(1, nno);
			
			result = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
		
	}
	
	public Notice selectNotice(Connection conn, int nno) {
		// select문 조회 > 한 행만 조회
		Notice n = null;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectNotice");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, nno);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				n = new Notice(rset.getInt("notice_no"),
							   rset.getString("notice_title"),
							   rset.getString("notice_content"),
							   rset.getDate("notice_enroll"));
			}
			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally { 
			close(rset);
			close(pstmt);
		}
		return n;
	
	
	}

	public int insertNotice(Connection conn, Notice n) {

		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertNotice");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, n.getNoticeTitle());
			pstmt.setString(2, n.getNoticeContent());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {

			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		
		
		return result;
	}	
}
