<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>브로콜리 로그인페이지</title>
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
      .form-group, span{font-size: 12px;}
      .login-search{margin-bottom: 20px;}
      span{color: black;text-decoration: none;}
      
  </style>
</head>
<body>
<div class="container">
  <p align="center">회원 로그인</p>
  <form action="/login.me" class="was-validated" method="post">
    <div class="form-group">
      <input type="text" class="form-control" id="userName" placeholder="아이디를 입력해주세요" name="userName" required>
    </div>
    <div class="form-group">
      <input type="password" class="form-control" id="userPwd" placeholder="비밀번호를 입력해주세요" name="userPwd" required>
    </div>
    <div class="form-group form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="checkbox" name="remember" value="remember-me"> 아이디 저장
      </label>
    </div>
    <div class="login-search">
        <a href="findId.html"><span>아이디찾기</span> </a>
        <span> | </span>
        <a href="findPwd.html"><span>비밀번호찾기</span> </a>
    </div>
    <button type="submit" class="btn btn-success">로그인</button>
  </form>
  <div><button class="btn btn-dark">회원가입</button></div>
</div>

</body>
</html>