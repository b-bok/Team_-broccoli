<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String errorMsg = (String)request.getAttribute("errorMsg");
	String broccoli = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>에러페이지</title>
<style>
	img{margin-top: 50px;}
	h4{font-weight:800;}
</style>
</head>
<body>
<div align="center">
<img src = "<%=broccoli %>/resources/image/clipart-of-the-Oops-sign.jpg" width="200px;">
<br><br>
<h4><%=errorMsg %></h4>

</div>
</body>
</html>