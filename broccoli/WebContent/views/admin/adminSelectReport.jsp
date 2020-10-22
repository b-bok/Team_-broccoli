<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>신고상세조회</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>신고전체조회</title>
<!-- 차후 소스들은 관리자 대쉬보드 헤더+사이드바 페이지에 담아서 include 시키기 -->
<!-- 대쉬보드에서 쓸 공통 css -->
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&family=Nanum+Myeongjo:wght@800&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
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
				<h2>신고전체조회</h2>
			</div>
			<div class="col"></div>
			<div class="col">
				<input class="form-control input-lg" id="myInput" type="text" placeholder="키워드 검색">
			</div>
		</div>
		<br>
		<br> 
		<table class="table table-hover" style="width: 100%;">
			<thead>
				<tr>
					<th><center>순</center></th>
					<th><center>등록일</center></th>
					<th><center>카테고리</center></th>
					<th><center>상품번호</center></th>
					<th><center>상품명</center></th>
					<th><center>신고내용</center></th>
					<th><center>신고자</center></th>
					<th><center>처리유무</center></th>
				</tr>
			</thead>
			<tbody id="myTable">
				<!-- 신고출처는 리뷰와 레시피 2개로만 하기로 담당 팀원으로부터 확인 -->
				<!-- 등록사유 종류 
                1) 상품과 관련없는 비방내용 
                2) 음란, 욕설 부적절한 내용
                3) 구매후기 취지에 어긋난 내용
                4) 기타 : (세부사항 영역있음)
              -->
				<tr>
					<td>16</td>
					<td>2020-10-14</td>
					<td>리뷰</td>
					<td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
					<td>유기농 브로콜리 1kg</td>
					<td><a href="adminReportDetail.html">기타</td>
					<td><a href="#어디로 이동하는게 나으려나??">user01</a></td>
					<td><a href="">검토중</a></td>
				</tr>
				<tr>
					<td>15</td>
					<td>2020-10-14</td>
					<td>레시피</td>
					<td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
					<td>유기농 브로콜리 1kg</td>
					<td><a href="#신고내역 상세조회로 이동">상품과 관련없는 비방내용</td>
					<td><a href="#어디로 이동하는게 나으려나??">user01</a></td>
					<td><a href="">접수완료</a></td>
				</tr>
				<tr>
					<td>14</td>
					<td>2020-10-13</td>
					<td>리뷰</td>
					<td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
					<td>유기농 브로콜리 1kg</td>
					<td><a href="#신고내역 상세조회로 이동">상품과 관련없는 비방내용</td>
					<td><a href="#어디로 이동하는게 나으려나??">user01</a></td>
					<td><a href="">검토중</a></td>
				</tr>
				<tr>
					<td>13</td>
					<td>2020-10-13</td>
					<td>리뷰</td>
					<td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
					<td>유기농 브로콜리 1kg</td>
					<td><a href="#신고내역 상세조회로 이동">구매후기 취지에 어긋난 내용</td>
					<td><a href="#어디로 이동하는게 나으려나??">user01</a></td>
					<td><a href="#">검토완료</a></td>
				</tr>
				<tr>
					<td>12</td>
					<td>2020-10-13</td>
					<td>리뷰</td>
					<td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
					<td>유기농 브로콜리 1kg</td>
					<td><a href="#신고내역 상세조회로 이동"> 구매후기 취지에 어긋난 내용</td>
					<td><a href="#어디로 이동하는게 나으려나??">user01</a></td>
					<td><a href="#">검토완료</a></td>
				</tr>
				<tr>
					<td>11</td>
					<td>2020-10-12</td>
					<td>리뷰</td>
					<td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
					<td>유기농 브로콜리 1kg</td>
					<td><a href="#신고내역 상세조회로 이동">음란, 욕설 부적절한 내용</td>
					<td><a href="#어디로 이동하는게 나으려나??">user01</a></td>
					<td><a href="#">접수완료</a></td>
				</tr>
				<tr>
					<td>10</td>
					<td>2020-10-12</td>
					<td>레시피</td>
					<td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
					<td>유기농 브로콜리 1kg</td>
					<td><a href="#신고내역 상세조회로 이동">상품과 관련없는 비방내용</td>
					<td><a href="#어디로 이동하는게 나으려나??">user01</a></td>
					<td><a href="#">접수완료</a></td>
				</tr>
				<tr>
					<td>9</td>
					<td>2020-10-11</td>
					<td>레시피</a></td>
					<td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
					<td>유기농 브로콜리 1kg</td>
					<td><a href="#신고내역 상세조회로 이동">음란, 욕설 부적절한 내용</td>
					<td><a href="#어디로 이동하는게 나으려나??">user01</a></td>
					<td><a href="#">접수완료</a></td>
				</tr>
				<tr>
					<td>8</td>
					<td>2020-10-11</td>
					<td>리뷰</td>
					<td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
					<td>유기농 브로콜리 1kg</td>
					<td><a href="#신고내역 상세조회로 이동">구매후기 취지에 어긋난 내용</td>
					<td><a href="#어디로 이동하는게 나으려나??">user01</a></td>
					<td><a href="#">접수완료</a></td>
				</tr>
				<tr>
					<td>7</td>
					<td>2020-10-10</td>
					<td>레시피</td>
					<td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
					<td>유기농 브로콜리 1kg</td>
					<td><a href="#신고내역 상세조회로 이동">구매후기 취지에 어긋난 내용 </td>
					<td><a href="#어디로 이동하는게 나으려나??">user01</a></td>
					<td><a href="#">접수완료</a></td>
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