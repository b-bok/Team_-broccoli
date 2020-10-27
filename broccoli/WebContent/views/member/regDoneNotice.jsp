<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>회원가입완료안내</title>
<!-- 김근희 작성 : 사용자 메뉴바 앉히면 제거하기 -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 메인페이지 파일명 알게되면 수정하기 -->
<meta http-equiv="refresh" content="5;url=index.html">
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
</style>
</head>
<body>
<%@ include file="../common/menubar.jsp" %>
    <div class=container><img src="../resources/image/pngkey.com-broccoli-png-1490408.png" width="300px" alt="logo"></div>
    <div class=container>회원가입이 완료되었습니다. <br>회원인증을 위해 등록한 이메일을 확인부탁드리겠습니다..</div>
</body>
</html>