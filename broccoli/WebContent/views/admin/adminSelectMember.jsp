<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>회원전체조회</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 차후 소스들은 관리자 대쉬보드 헤더+사이드바 페이지에 담아서 include 시키기 -->
<!-- 대쉬보드에서 쓸 공통 css -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&family=Nanum+Myeongjo:wght@800&display=swap">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!-- 엔딩 :  대쉬보드에서 쓸 공통 css -->
<style>
.table {
	text-align: center;
}

a {
	color: green;
}
</style>
</head>
<body>
	<div class="container pt-3">
		<!-- 부트스트랩 테이블 검색어 input  -->
		<div class="row">
			<div class="col">
				<h2>회원리스트</h2>
			</div>
			<div class="col"></div>
			<div class="col">
				<input class="form-control input-lg" id="myInput" type="text"
					placeholder="회원 전체검색">
			</div>
		</div>
		<br> <br>
		<table class="table table-hover" style="width: 100%;">
			<thead>
				<tr>
					<th><center>순</center></th>
					<th><center>아이디</center></th>
					<th><center>이름</center></th>
					<th><center>이메일</center></th>
					<th><center>휴대폰</center></th>
					<th><center>주소</center></th>
					<th><center>상세주소</center></th>
					<th><center>우편번호</center></th>
					<th><center>성별</center></th>
					<th><center>적립금</center></th>
					<th><center>가입일</center></th>
					<th><center>탈퇴여부</center></th>
				</tr>
			</thead>
			<tbody id="myTable">
				<tr>
					<td>1</td>
					<td>user01</td>
					<td>김브로</td>
					<td>bro@gmail.com</td>
					<td>010-2222-3333</td>
					<td>서울시 강남구 역삼동 101</td>
					<td>파이낸스센터 2001호</td>
					<td>123456</td>
					<td>여</td>
					<td>5000</td>
					<td>2020-10-01</td>
					<td>Y</td>
				</tr>
				<tr>
					<td>3</td>
					<td>user03</td>
					<td>이야채</td>
					<td>broccoli@gmail.com</td>
					<td>010-2222-3333</td>
					<td>서울시 강남구 역삼동 101</td>
					<td>진도오피스텔 202호</td>
					<td>123456</td>
					<td>여</td>
					<td>5000</td>
					<td>2020-10-03</td>
					<td>Y</td>
				</tr>
				<tr>
					<td>4</td>
					<td>user04</td>
					<td>이브로</td>
					<td>broccoli@gmail.com</td>
					<td>010-2222-3333</td>
					<td>서울시 강남구 역삼동 101</td>
					<td>진도오피스텔 202호</td>
					<td>123456</td>
					<td>여</td>
					<td>0</td>
					<td>2020-10-01</td>
					<td>Y</td>
				</tr>
				<tr>
					<td>5</td>
					<td>user05</td>
					<td>최브로</td>
					<td>broccoli@gmail.com</td>
					<td>010-2222-3333</td>
					<td>서울시 강남구 역삼동 101</td>
					<td>진도오피스텔 202호</td>
					<td>123456</td>
					<td>여</td>
					<td>0</td>
					<td>2020-10-01</td>
					<td>Y</td>
				</tr>
				<tr>
					<td>7</td>
					<td>broccoli</td>
					<td>최롯데</td>
					<td>broccoli@gmail.com</td>
					<td>010-2222-3333</td>
					<td>서울시 강남구 역삼동 101</td>
					<td>파이낸스센터 2001호</td>
					<td>123456</td>
					<td>여</td>
					<td>0</td>
					<td>2020-10-01</td>
					<td>Y</td>
				</tr>
				<tr>
					<td>10</td>
					<td>broccoli</td>
					<td>김브로</td>
					<td>broccoli@gmail.com</td>
					<td>010-2222-3333</td>
					<td>서울시 강남구 역삼동 101</td>
					<td>파이낸스센터 2001호</td>
					<td>123456</td>
					<td>여</td>
					<td>0</td>
					<td>2020-10-01</td>
					<td>Y</td>
				</tr>
				<tr>
					<td>11</td>
					<td>broccoli</td>
					<td>김브로</td>
					<td>broccoli@gmail.com</td>
					<td>010-2222-3333</td>
					<td>서울시 강남구 역삼동 101</td>
					<td>파이낸스센터 2001호</td>
					<td>123456</td>
					<td>여</td>
					<td>0</td>
					<td>2020-10-01</td>
					<td>Y</td>
				</tr>
				<tr>
					<td>12</td>
					<td>broccoli</td>
					<td>김브로</td>
					<td>broccoli@gmail.com</td>
					<td>010-2222-3333</td>
					<td>서울시 강남구 역삼동 101</td>
					<td>파이낸스센터 2001호</td>
					<td>123456</td>
					<td>여</td>
					<td>0</td>
					<td>2020-10-01</td>
					<td>Y</td>
				</tr>
				<tr>
					<td>13</td>
					<td>broccoli</td>
					<td>김브로</td>
					<td>broccoli@gmail.com</td>
					<td>010-2222-3333</td>
					<td>서울시 강남구 역삼동 101</td>
					<td>파이낸스센터 2001호</td>
					<td>123456</td>
					<td>여</td>
					<td>0</td>
					<td>2020-10-01</td>
					<td>N</td>
				</tr>
			</tbody>
		</table>
		<script>
		// 테이블 검색 
			$(document).ready(function() {
				$("#myInput").on("keyup",function() {
					var value = $(this).val().toLowerCase();
						$("#myTable tr").filter(function() {
							$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
						});
					});
			});
		</script>

		<ul class="pager">
			<li><a href="#">이전</a></li>
			<li><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">다음</a></li>
		</ul>
	</div>

</body>
</html>