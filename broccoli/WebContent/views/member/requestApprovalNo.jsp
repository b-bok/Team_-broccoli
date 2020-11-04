<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>이메일 주소인증 </title>
<meta charset="UTF-8">
<style>
.container {
	padding: 16px;
	margin: auto;
	margin-top: 100px;
	width: 480px;
}

.form-group input[type=number] {
	width: 98%;
	height:100%;
	padding: 15px;
	display: inline-block;
	border: none;
	background: #f1f1f1;
}

.form-group input[type=number]:focus
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

.form-group, .result{
	font-size: 12px;
	margin-bottom: 20px;
}
.result2{
	text-align:center;
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
		  <div class="result result1">이메일 주소인증</div>
		  
		  <form action="<%= broccoli%>/regNewPwd.me" class="was-validated" method="post">
		  
		    <div class="form-group">
		      <input type="number" class="form-control" id="approvalNo" placeholder="전송된 인증번호를 입력해 주세요" name="approvalNo" required>
		    </div>
		    <div class="result result2"> 인증번호를 못받았다면? <a id="resend">인증번호 재전송></a>  
		    </div>
		    <script>
		    	$(function(){
		    		$("#resend").click(function(){
		    			window.alert("인증번호를 재전송하시겠습니까? *인증번호를 재전송하시면 이전에 전송되었던 인증번호는 사용하실 수 없습니다.");
		    			// 다시 reload 하는거 --> 이게 필요한지 안한지는 최종적 테스트해보고 뺄지말지 정하기로! 
		    			location.href="<%=broccoli%>/approve.me";
		    		})
		    	})
		    </script>
		    <button type="submit" class="btn btn-success">확인</button>
		    
		  </form>
	    </div>
		<div class="col-sm-4"></div>
	</div>
</div>

<%@ include file="../common/footer.jsp"%>
</body>
</html>