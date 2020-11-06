package com.kh.member.model.service;


import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.member.model.dao.MemberDao;
import com.kh.member.model.vo.Member;
import com.kh.member.model.vo.Pagination;


public class MemberService {
	
	public Member loginMember(String memId, String memPwd) {
		
		Connection conn = getConnection();
		
		Member login = new MemberDao().loginMember(conn, memId, memPwd); 
		
		close(conn);
		
		return login;
		
	}
	
	public int selectListCount() {
		
		Connection conn = getConnection();
		
		int listCount = new MemberDao().selectListCount(conn);
		
		close(conn);
		
		return listCount; 
		
	}
	
	public ArrayList<Member> selectList(Pagination p){
		
		Connection conn = getConnection();
		
		ArrayList<Member> list = new MemberDao().selectList(conn, p);
		
		close(conn);
		
		return list;
	}
	
	/**
	 * 아이디중복체크 ajax 이용 
	 * @param checkbtn1
	 * @return
	 */
	public int idCheck(String idCheck) {
		
		Connection conn = getConnection();
		int count = new MemberDao().idCheck(conn, idCheck);
		close(conn);
		return count;
	}
	
	/**
	 * 이메일중복체크 ajax 이용
	 * @param emailCheck
	 * @return
	 */
	public int emailCheck(String emailCheck) {
		
		Connection conn = getConnection();
		int count = new MemberDao().emailCheck(conn, emailCheck);
		close(conn);
		return count;
	}
	
	
	public int insertMember(Member m) {
		
		Connection conn = getConnection();
		int result = new MemberDao().insertMember(conn,m);
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
		
	}
	

}
