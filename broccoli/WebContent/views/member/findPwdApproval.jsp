<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>이메일 주소인증</title>
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
        font-size: 15px;
        font-weight: 700;
        width: 360px;
        margin-top: 100px;
    }
    .result{padding-bottom: 10px;}
    .result2{font-size: 12px;}
    .form-control, button{
        font-family: 'Nanum Gothic', serif;
        width: 100%;
        height: 54px;
        font-size: 14px;
    }
    p{font-size: 30px;padding: 10px;text-align: center;}
    a{color:MediumSeaGreen;text-decoration: none;}
</style>
</head>
<body>
<div class="container">
  <p>비밀번호 찾기</p>
  <script src="https://kit.fontawesome.com/a076d05399.js"></script>
  <div class="result result1">이메일 주소인증</div>
  <form action="/findId.me" class="was-validated" method="post">
    <div class="form-group">
      <input type="number" class="form-control" id="approvalNo" placeholder="전송된 인증번호를 입력해 주세요" name="approvalNo" required>
    </div>
    <div class="result result2">
        인증번호를 못받았다면? <a href="">인증번호 재전송></a>  
    </div>
    <button type="submit" class="btn btn-success">확인</button>
  </form>
</div>
</body>
</html>