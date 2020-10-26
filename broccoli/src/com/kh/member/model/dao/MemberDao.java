package com.kh.member.model.dao;

import static com.kh.common.JDBCTemplate.*;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.kh.member.model.vo.Member;


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
								   ,rset.getString("ADDRESS1")
								   ,rset.getString("ADDRESS2")
								   ,rset.getString("ZIPCODE")
								   ,rset.getDate("BIRTH_DATE")
								   ,rset.getString("GENDER")
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

}
