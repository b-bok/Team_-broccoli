<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kh.member.model.dao.*,com.kh.member.model.vo.*" %>
<%
	//아이디를 전달받아 중복유무를 확인한 후 출력하고 전달하는 페이지 
	//=> 중복되는 경우 : 아이디 재입력 후 다시 중복유무 검사 
	//=> 중복되지 않는 경우: 아이디와 결과를 부모창으로 전달하여 출력 
%>
<%
	//전달받은 아이디를 반환받아 저장 
	String memId = request.getParameter("memId");
	//아이디를 전달하여 멤버 테이블에 해당 아이디 존재유무검사 : 아이디 중복여부 검사 
	//다오 클랙스의 loginMember() 메소드 호출
	//=>반환결과 == null ; 아이디에 해당하는 회원정보 미존재 
	//=>반환결과 == 멤버 객체 : 아이디 중복
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>중복확인메시지</title>
</head>
<body>

</body>
</html>