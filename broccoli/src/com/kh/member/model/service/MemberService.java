package com.kh.member.model.service;


import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.common.Pagination;
import com.kh.member.model.dao.MemberDao;
import com.kh.member.model.vo.Member;


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
	
	
	/**
	 * 회원가입용 
	 * @param m
	 * @return
	 */
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
	
	/**
	 * 아이디찾기용
	 * @param memName
	 * @param email
	 * @return
	 */
	public Member findId(String memName, String email) {
		
		Connection conn = getConnection();
		Member findId = new MemberDao().findId(conn, memName, email);
		close(conn);
		return findId;
	
		
	}
	
	/**
	 * 비밀번호 찾기용
	 * @param memName
	 * @param memId
	 * @param email
	 * @return
	 */
	public Member findPwd(String memName, String memId, String email) {
		
		Connection conn = getConnection();
		
		Member findPwd = new MemberDao().findPwd(conn,memName,memId,email);
		close(conn);
		return findPwd;
	}
	
	public Member updatePwdMember(String memNewPwd, String memId, String memName) {
		
		Connection conn = getConnection();
		
		int result = new MemberDao().updatePwdMember(conn, memNewPwd, memId, memName);
		
		System.out.println("서비스단 : "+ memId + memName + memNewPwd);
		
		Member updateMem = null;
		
		if(result > 0) {
			commit(conn);
			//업데이트된 회원정보 가져오기 
			updateMem = new MemberDao().reselectMember(conn, memId);	
			
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return updateMem;
		
	}
	

}
