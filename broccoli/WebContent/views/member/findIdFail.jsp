<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>아이디 찾기 실패</title>
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
        text-align: center;
        width: 360px;
        margin-top: 100px;
    }
    .icon{padding-bottom: 20px;}
    .result{padding-bottom: 20px;}
    .result1{color:mediumseagreen;}
    button{
        font-family: 'Nanum Gothic', serif;
        width: 100%;
        height: 54px;
        font-size: 14px;
    }
    p{font-size: 30px;padding: 10px;}
</style>
</head>

<body>
<div class="container">
  <p>아이디 찾기</p>
  <script src="https://kit.fontawesome.com/a076d05399.js"></script>
  <div class=icon><i class='fas fa-address-card' style='font-size:48px;color:mediumseagreen'></i></div>
  <div class="result result1">
    고객님께서 입력하신 정보가 <br> 정확한지 확인 후 다시 시도해 주세요. 
  </div>
    <button type="submit" class="btn btn-success">아이디 다시 찾기</button>
</div>
</body>
</html>