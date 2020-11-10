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

import com.kh.common.Pagination;
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
	
	/**
	 * 회원가입 아이디 중복체크 
	 * @param conn
	 * @param idCheck
	 * @return
	 */
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
	
	
	/**
	 * 회원가입 이메일 중복체크 
	 * @param conn
	 * @param emailCheck
	 * @return
	 */
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
	
	
	/**
	 * 회원가입용 
	 * @param conn
	 * @param m
	 * @return
	 */
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
	
	public Member findId(Connection conn, String memName, String email) {
		
		Member findId = null; 
		PreparedStatement pstmt = null; 
		ResultSet rset = null; 
		
		String sql = prop.getProperty("findId"); 
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memName);
			pstmt.setString(2, email);
			
			rset = pstmt.executeQuery(); 
			
			
			if(rset.next()) { 
				findId = new Member(rset.getInt("MEM_NO")
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
		
		return findId;
		
	}
	
	public Member findPwd(Connection conn, String memName, String memId, String email) {
		
		Member findPwd = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("findPwd");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memName);
			pstmt.setString(2, memId);
			pstmt.setString(3, email);

			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				findPwd = new Member(rset.getString("MEM_NAME")
									 ,rset.getString("MEM_ID")
									 ,rset.getString("EMAIL")
									 );
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return findPwd;
				
	}

	public int updatePwdMember(Connection conn, String memNewPwd, String memId, String memName) {
		//결과->1행 
		
		System.out.println("다오단 : "+ memId + memName + memNewPwd);
		int result = 0;		
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updatePwd");
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memNewPwd);
			pstmt.setString(2, memId);
			pstmt.setString(3, memName);
			
			result = pstmt.executeUpdate();
			System.out.println("여기선 값이 얼마야?" + result);		//왜 자꾸 여기서 0 이 나오지??
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
		
		
	}
	
	public Member reselectMember(Connection conn, String memId) {
		
		Member m = null; 
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql= prop.getProperty("reselectMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memId);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				
				m = new Member(rset.getInt("MEM_NO")
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
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return m;
		
	}


}
