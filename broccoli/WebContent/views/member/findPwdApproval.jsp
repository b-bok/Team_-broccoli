<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>이메일 주소인증</title>
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
		  <h2 align="center">비밀번호 찾기</h2><br>
			  <script src="https://kit.fontawesome.com/a076d05399.js"></script>
			  <div class="result result1">이메일 주소인증</div><br>
			  <form action="findId.me" class="was-validated" method="post">
			    <div class="form-group">
			      <input type="number" class="form-control" id="approvalNo" placeholder="전송된 인증번호를 입력해 주세요" name="approvalNo" required style="width:100%;">
			    </div>
			    <div class="result result2">
			        	인증번호를 못받았다면? <a href="">인증번호 재전송></a>  
			    </div><br>
			    <button type="submit" class="btn btn-success">확인</button>
			  </form>
		</div>
		<div class="col-sm-4"></div>
	</div>		 
</div>

<%@ include file="../common/footer.jsp"%>
</body>
</html>