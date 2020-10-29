<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="com.kh.member.model.vo.*" %>    
<%
	Member login = (Member) session.getAttribute("login");
	String broccoli = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<title>브로콜리 관리자 로그인</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&family=Nanum+Myeongjo:wght@800&display=swap" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
    .container{
        font-family: 'Nanum Gothic', serif;
        font-size: 30px;
        font-weight: 700;
        width: 360px;
        margin-top: 100px;
    }
    .form-control, button{
        width: 100%;
        height: 54px;
        margin-bottom: 10px;
    }
    .form-group{font-size: 12px;}
    .login-search{margin-bottom: 20px;}
    
</style>
</head>
<body>
<div class="container">
  <p align="center">관리자 로그인</p>
  <form action="<%= broccoli %>/adminLogin.me" class="was-validated" method="post">
    <div class="form-group">
      <input type="text" class="form-control" id="memId" placeholder="아이디를 입력해주세요" name="memId" required>
    </div>
    <div class="form-group">
      <input type="password" class="form-control" id="memPwd" placeholder="비밀번호를 입력해주세요" name="memPwd" required>
    </div>
    <div class="form-group form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="checkbox" name="remember" value="remember-me"> 아이디 저장
      </label>
    </div>
    <button type="submit" class="btn btn-success">로그인</button>
  </form>
</div>
</body>
</html>