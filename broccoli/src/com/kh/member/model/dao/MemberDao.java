package com.kh.member.model.dao;

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

import com.kh.member.model.vo.Member;
import com.kh.member.model.vo.Pagination;


public class MemberDao {
	
	private Properties prop = new Properties(); 
	
	public MemberDao() {
		
		String fileName = MemberDao.class.getResource("/sql/member/member-mapper.xml").getPath();
		try {
			prop.loadFromXML(new FileInputStream(fileName));
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	
	public Member loginMember(Connection conn, String memId, String memPwd) {
		
		Member login = null;
		PreparedStatement pstmt = null; 
		ResultSet rset = null; 
		
		String sql = prop.getProperty("login"); 
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memId);
			pstmt.setString(2, memPwd);
			
			rset = pstmt.executeQuery(); 
			
			if(rset.next()) { 
				login = new Member(rset.getInt("MEM_NO")
								   ,rset.getString("MEM_ID")
								   ,rset.getString("MEM_NAME")
								   ,rset.getString("MEM_PWD")
								   ,rset.getString("EMAIL")
								   ,rset.getString("MOBILE")
								   ,rset.getString("ZIPCODE")
								   ,rset.getString("ADDRESS1")
								   ,rset.getString("ADDRESS2")
								   ,rset.getString("ADDREXTRA")
								   ,rset.getString("GENDER")
								   ,rset.getDate("BIRTH_DATE")
								   ,rset.getDate("REG_DATE")
								   ,rset.getInt("POINT")
								   ,rset.getString("STATUS")
								   ,rset.getInt("ADDRESS_NO")
								   ,rset.getString("MEM_CATEGORY")
								  ); 
			} 
		} catch (SQLException e) {
			e.printStackTrace();
		} finally { 
			close(rset);
			close(pstmt); 
		}
		
		return login;
		
		
	}
	
	//회원가입 
	//아이디 중복확인
//	public Member getMember(String memId) {
//		Member m = null;
//		Statement stmt = null;
//		ResultSet rset = null; 
//		
//		String sql = prop.getProperty("");
//		
//		
//	}
	
	//로그인 
	public int selectListCount(Connection conn) {
		
		int listCount = 0; 
		Statement stmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectListCount");
		
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(sql);
			if(rset.next()) {
				listCount = rset.getInt("LISTCOUNT");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		
		return listCount;
		
	}
	
	public ArrayList<Member> selectList(Connection conn, Pagination p){
		
		ArrayList<Member> list = new ArrayList<>();
		PreparedStatement pstmt = null;  
		ResultSet rset = null; 
		String sql = prop.getProperty("selectList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (p.getCurrentPage()-1) * p.getBoardLimit() + 1; 
			int endRow = startRow + p.getBoardLimit() - 1; 
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			rset = pstmt.executeQuery(); 
			while(rset.next()) {
					list.add(new Member(rset.getInt("mem_no")
									   ,rset.getString("MEM_ID")
									   ,rset.getString("MEM_NAME")
									   ,rset.getString("MEM_PWD")
									   ,rset.getString("EMAIL")
									   ,rset.getString("MOBILE")
									   ,rset.getString("ZIPCODE")
									   ,rset.getString("ADDRESS1")
									   ,rset.getString("ADDRESS2")
									   ,rset.getString("ADDREXTRA")
									   ,rset.getString("GENDER")
									   ,rset.getDate("BIRTH_DATE")
									   ,rset.getDate("REG_DATE")
									   ,rset.getInt("POINT")
									   ,rset.getString("STATUS")
									   ,rset.getInt("ADDRESS_NO")
									   ,rset.getString("MEM_CATEGORY")
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
	
	public int idCheck(Connection conn, String idCheck) {
		
		int count = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("idCheck");
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, idCheck);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				count = rset.getInt(1);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return count;
	}
	
	public int emailCheck(Connection conn, String emailCheck) {
		
		int count =0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("emailCheck");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, emailCheck);

			rset = pstmt.executeQuery();
			if(rset.next()) {
				count = rset.getInt(1);
			}
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(conn);
		}
				
		return count;
		
	}
	
	public int insertMember(Connection conn, Member m) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertMember");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, m.getMemId());
			pstmt.setString(2, m.getMemName());
			pstmt.setString(3, m.getMemPwd());
			pstmt.setString(4, m.getEmail());
			pstmt.setString(5, m.getMobile());
			pstmt.setString(6, m.getZipcode());
			pstmt.setString(7, m.getAddress1());
			pstmt.setString(8, m.getAddress2());
			pstmt.setString(9, m.getAddrExtra());
			pstmt.setString(10, m.getGender());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
		
		
		
		
	}
	
	


}
