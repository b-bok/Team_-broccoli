<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>아이디 찾기 실패</title>
<style>
.container {
	padding: 16px;
	margin: auto;
	margin-top: 100px;
	width: 480px;
}

.form-group input[type=text], .form-group input[type=password], .form-group input[type=email] {
	width: 98%;
	height:100%;
	padding: 15px;
	display: inline-block;
	border: none;
	background: #f1f1f1;
}

.form-group input[type=text]:focus, .form-group input[type=password]:focus, .form-group input[type=email]:focus
	{
	background-color: #dddddd;
	outline: none;
}

.btn-dark, .btn-success {
	color: white;
    height: 54px;
    margin-bottom: 10px;
	border: none;
	cursor: pointer;
	width: 100%;
	opacity: 0.9;
}

.form-group, .login-search {
	font-size: 12px;
	margin-bottom: 20px;
}
</style>
</head>
<body>
<%@ include file="../common/menubar.jsp" %>
<div class="container">
	<div class="row">
		<div class="col-sm-4"></div>
		<div class="col-sm-4">
		  <h2 align="center">아이디 찾기</h2><br>
			  <script src="https://kit.fontawesome.com/a076d05399.js"></script>
			  <div class=icon align="center"><i class='fas fa-address-card' style='font-size:48px;color:mediumseagreen'></i></div>
			  <div class="result result1" align="center">
			  	  고객님께서 입력하신 정보가 <br> 정확한지 확인 후 다시 시도해 주세요.
			  </div> <br>
			    <button type="submit" class="btn btn-success">아이디 다시 찾기</button>
		</div>
		<div class="col-sm-4"></div>
	</div>
</div>

<%@ include file="../common/footer.jsp"%>
</body>
</html>