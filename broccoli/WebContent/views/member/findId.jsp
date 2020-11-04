<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>아이디찾기</title>
<style>
.container {
	padding: 16px;
	margin: auto;
	margin-top: 100px;
	width: 480px;
}

.form-group input[type=text], .form-group input[type=email] {
	width: 98%;
	height:100%;
	padding: 15px;
	display: inline-block;
	border: none;
	background: #f1f1f1;
}

.form-group input[type=text]:focus, .form-group input[type=email]:focus
	{
	background-color: #dddddd;
	outline: none;
}

.btn-success {
	color: white;
    height: 54px;
    margin-bottom: 10px;
	border: none;
	cursor: pointer;
	width: 100%;
	opacity: 0.9;
}

.form-group, {
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
		  
		  <form action="<%=broccoli %>/idResult.me" class="was-validated" method="post">
		    <div class="form-group">
		      <input type="text" class="form-control" id="name" placeholder="고객님의 이름을 입력해주세요" name="memName" required>
		      <div class="name regEx"></div>
		    </div>

		    
		    <div class="form-group">
		      <input type="email" class="form-control" id="email" placeholder="가입시 등록한 이메일을 입력해주세요" name="email" required>
		      <div class="email regEx"></div>
		    </div>

		    
		    
		    <button type="submit" class="btn btn-success">확인</button>
		  </form>
		  
		</div>
		
  		<div class="col-sm-4"></div>
  		</div>
  	</div>
</body>
</html>