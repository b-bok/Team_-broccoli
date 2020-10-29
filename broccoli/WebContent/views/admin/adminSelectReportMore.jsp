<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>신고상세조회</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>신고상세내역</title>
<style>
/* 목록버튼  */
.btn {
	border: 2px solid black;
	background-color: white;
	color: black;
	padding: 5px 20px;
	font-size: 12px;
	cursor: pointer;
}

.success {
	border-color: #4CAF50;
	color: green;
}

.success:hover {
	background-color: #4CAF50;
	color: white;
}

.danger {
	border-color: crimson;
	color: crimson;
}

.danger:hover{
	background-color: crimson;
	color: white;
}
</style>
</head>
<body>
<%@ include file="adminNav.jsp" %>
	<div class="container pt-3" style="margin-left:300px">
		<h2>신고 상세조회</h2>
		<br> <br>
		<table class="table table-bordered">
			<tbody>
				<tr>
					<th class="table-success">카테고리</th>
					<td>리뷰</td>
					<th class="table-success">리뷰제목</th>
					<td><a href=""> 음식이 상해서 왔어요!</a> <br>리뷰한 글로 링크! 단, 상품카테고리
						DB 컬럼값 확인하기</td>
				</tr>
				<tr>
					<th class="table-success">신고자</th>
					<td>user11</td>
					<th class="table-success">상품번호</th>
					<td><a href="#상품상세페이지로 이동"> xxxxxxxxxx</a></td>
				</tr>
				<tr class="table-default">
					<th colspan="4">신고내용</th>
				</tr>
				<tr class="table-default">
					<td colspan="4">1. 상품과 관련없는 비방내용 <br> >> 라디오박스로 표시된 신고내용
						표시하기 <br> >> 기타는 5.번으로 직접 입력된 내용이 노출됨 <br>
					</td>
				</tr>
			</tbody>
		</table>
		<!--  -->
		<button class="btn success"
			onclick="location.href='adminSelectReport.jsp'">목록</button>
		<button class="btn success" onclick="">이전</button>
		<button class="btn success" onclick="">이후</button>
		<button class="btn danger" onclick="reportConfirm1();">블랙컨슈머처리</button>
		<button class="btn danger" onclick="reportConfirm2();">블라인드처리</button>
		<!-- db설계시에 삭제하는 걸로 결론남! -->
		<!-- <button class="btn warning" onclick="">일반접수</button> -->

	</div>

	<!-- 블랙컨슈머, 블라인드 처리하기 -->
	<script>
		// 나중에 제이쿼리로 바꾸기 
		function reportConfirm1() {
			confirm("해당 신고자를 블랙컨슈머 처리하시겠습니까?");

			// 조건문처리하기
			// 1) yes일때(즉 신고자의 말이 거짓일때)
			// 해당 신고자가 회원관리 블랙컨슈머 조회 페이지에서 보이게 처리  
		}

		function reportConfirm2() {
			confirm("해당 글을 블라인드 처리하시겠습니까?");

			//조건문처리하기 
			// 1) yes일때(즉 신고자의 말이 참일 때 )
			// 신고된 리뷰글을 블라인드 처리 시키기
			// 블라인드 시키는 조건을 협의해야하나?? 
		}
	</script>
</body>
</html>