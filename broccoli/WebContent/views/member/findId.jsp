<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>아이디찾기</title>

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
<div class="container">
  <p>아이디 찾기</p>
  <form action="/findId.me" class="was-validated" method="post">
    <div class="form-group">
      <input type="text" class="form-control" id="userName" placeholder="고객님의 이름을 입력해주세요" name="userName" required>
    </div>
    <div class="form-group">
      <input type="email" class="form-control" id="email" placeholder="가입시 등록한 이메일을 입력해주세요" name="email" required>
    </div>
    <button type="submit" class="btn btn-success">확인</button>
  </form>
</div>
</body>
</html>