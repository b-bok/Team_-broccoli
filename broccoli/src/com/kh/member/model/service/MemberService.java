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
	
	public int idCheck(String checkbtn1) {
		
		Connection conn = getConnection();
		
		int count = new MemberDao().idCheck(conn, checkbtn1);
		
		close(conn);
		
		return count;
		
		
	}

}
