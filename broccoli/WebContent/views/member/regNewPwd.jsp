<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>비밀번호 재등록</title>
<!-- 김근희 작성 : 사용자 메뉴바 앉히면 제거하기 -->
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
        text-align: center;
        width: 360px;
        margin-top: 100px;
    }
    .condition{font-size: 12px;text-align: left;}
    .form-control, button{
        font-family: 'Nanum Gothic', serif;
        width: 100%;
        height: 54px;
        font-size: 14px;
    }
    p{padding: 10px;}
</style>
</head>
<body>
<%@ include file="../common/menubar.jsp" %>
<div class="container">
  <p>비밀번호 찾기</p>
  <form action="/findPwd.me" class="was-validated" method="post">
    <div class="form-group">
      <input type="password" class="form-control" id="userPwd" placeholder="새 비밀번호를 입력해주세요" name="userPwd" required>
      <div class="condition">최소 10글자 이상/영문, 숫자, 특수문자 2개이상 조합 <br>동일한 숫자 3개이상 연속 사용불가</div>
    </div>
    <div class="form-group">
      <input type="password" class="form-control" id="userPwdRe" placeholder="새 비밀번호를 한 번 더 입력해 주세요" name="userPwdRe" required>
    </div>
    <button type="submit" class="btn btn-success">확인</button>
  </form>
</div>
</body>
</html>