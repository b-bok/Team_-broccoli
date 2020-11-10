<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="utf-8">
<head>
<title>비밀번호완료안내</title>
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
    <div class=container><span class="glyphicon glyphicon-ok-sign" style="font-size:80px;color:green;text-shadow:2px 2px 4px #000000;"></div>
    <div class=container>비밀번호가 변경되었습니다. 다시 로그인해주세요</div>
    
    <%@ include file="../common/footer.jsp"%>
</body>
</html>