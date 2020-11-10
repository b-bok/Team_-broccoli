<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.kh.member.model.vo.Member " %>
<%
	Member findPwd = (Member) session.getAttribute("findPwd");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 발송 안내메세지</title>
<style>
.container {
	text-align: center;
	padding: 16px;
	margin: auto;
	margin-top: 100px;
	width: 480px;
}

.icon {
	padding-bottom: 20px;
}

.result {
	padding-bottom: 20px;
}

.result1 {
	color: mediumseagreen;
}

.result2 {
	font-size: 12px;
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

p {
	font-size: 30px;
	padding: 10px;
}
</style>
</head>

<body>
	<%@ include file="../common/menubar.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-sm-4"></div>
			<div class="col-sm-4">
				<h2 align="center">비밀번호 찾기</h2>
				<br>
				<form action="<%=broccoli %>/approveNo.me" method="post">
					<script src="https://kit.fontawesome.com/a076d05399.js"></script>
					<div class="icon">
						<i class="far fa-envelope-open"	style="font-size: 48px; color: mediumseagreen" aria-hidden="true"></i>
					</div>
					<div class="result result1">
						이메일로 인증 완료후 <br> 비밀번호를 재발급 받으세요!
					</div>
					<!-- 이메일 전송에 필요한 값 히든처리  -->
					<input type="hidden" name="memName" value="<%=findPwd.getMemName()%>">
					<input type="hidden" name="memId" value="<%=findPwd.getMemId()%>">
					<input type="hidden" name="memPwd" value="<%=findPwd.getMemPwd()%>">
					<input type="hidden" name="email" value="<%=findPwd.getEmail()%>">		

					<div class="result result2">
						입력하신 <b> <%=findPwd.getEmail() %></b> 으로 인증번호가 발송되어, <br>인증 후 비밀번호가 재발급됩니다.<br>
						전송량이 많은 경우 이메일 전송이 지연될 수 있습니다.
					</div>
					<button type="submit" class="btn btn-success" onclick="notice1();">인증번호받기</button>
				</form>
				<script>
				        function notice1(){
				            
				        	alert("인증번호가 고객님의 메일주소로 전송되었습니다.");
							}
				</script>
			</div>
		</div>
	</div>
</body>
</html>