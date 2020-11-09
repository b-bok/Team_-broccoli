package com.kh.qna.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.qna.model.dao.QnaDao;
import com.kh.qna.model.vo.Qna;
import com.kh.recipe.model.dao.RecipeDao;


public class QnaService {

	public ArrayList<Qna> selectUserQna(int pno) {
		
		
		Connection conn = getConnection();
		
		ArrayList<Qna> list = new QnaDao().selectUserQna(conn, pno);
		
		close(conn);
		
		return list;

	}

	public ArrayList<Qna> selectSortQna(int pno, String sort) {
			

		Connection conn = getConnection();
		
		ArrayList<Qna> list = new QnaDao().selectSortQna(conn, pno, sort);
		
		close(conn);
		
		return list;
		

		
		
	}
	
	
	
	
	

}
