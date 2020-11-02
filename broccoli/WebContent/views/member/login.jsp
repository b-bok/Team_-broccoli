<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>브로콜리 회원 로그인</title>
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
	<%@ include file="../common/menubar.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-sm-4"></div>
			<div class="col-sm-4">
				<h2 align="center">회원 로그인</h2><br>
				<form action="<%=broccoli%>/memLogin.me" class="was-validated" method="post">
					<div class="form-group">
						<input type="text" class="form-control" id="userName" placeholder="아이디를 입력해주세요" name="memId" required>
					</div>
					<div class="form-group">
						<input type="password" class="form-control" id="userPwd" placeholder="비밀번호를 입력해주세요" name="memPwd" required>
					</div>
					<div class="form-group form-check">
						<label class="form-check-label"> <input	class="form-check-input" type="checkbox" name="remember" value="remember-me"> 아이디 저장</label>
					</div>
					<div class="login-search">
						<a href="<%=broccoli%>/findId.me"><span>아이디찾기</span> </a> 
						<span>|</span> 
						<a href="<%=broccoli%>/findPwd.me"><span>비밀번호찾기</span> </a>
					</div>
					<button type="submit" class="btn btn-success" id="loginBtn">로그인</button>
				</form>


				<div>
					<button class="btn btn-dark" id="regBtn">회원가입</button>
				</div>
				<script>
				  	$(function(){
				  		$("#regBtn").click(function(){
				  			location.href = "<%=broccoli%>/registration.me";
										})
									})
				</script>
			</div>
		</div>
	</div>
	<%@ include file="../common/footer.jsp"%>
</body>
</html>