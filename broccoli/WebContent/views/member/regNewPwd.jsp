<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>비밀번호 재등록</title>
<meta charset="UTF-8">
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
			  <form action="/findPwd.me" class="was-validated" method="post">
			    <div class="form-group">
			      <input type="password" class="form-control" id="userPwd" placeholder="새 비밀번호를 입력해주세요" name="userPwd" required><br>
			      <div class="condition"><b>최소 10글자 이상/영문, 숫자, 특수문자 2개이상 조합 <br>동일한 숫자 3개이상 연속 사용불가</b></div>
			    </div>
			    <div class="form-group">
			      <input type="password" class="form-control" id="userPwdRe" placeholder="새 비밀번호를 한 번 더 입력해 주세요" name="userPwdRe" required>
			    </div>
			    <button type="submit" class="btn btn-success">확인</button>
			  </form>
		</div>
  		<div class="col-sm-4"></div>
 	</div>
</div>
</body>
</html>