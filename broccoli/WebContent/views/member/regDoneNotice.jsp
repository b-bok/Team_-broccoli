<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="utf-8">
<head>
<title>회원가입완료안내</title>
<style>
    .container{
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
    <div class=container><img src="<%=broccoli %>/resources/image/pngkey.com-broccoli-png-1490408.png" width="300px" alt="logo"></div>
    <div class=container>회원가입이 완료되었습니다. <br>회원인증을 위해 등록한 이메일을 확인부탁드리겠습니다..</div>
    
    <%@ include file="../common/footer.jsp"%>
</body>
</html>