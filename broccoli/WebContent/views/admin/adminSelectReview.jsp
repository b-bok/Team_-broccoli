<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>리뷰전체조회</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 검색바CSS -->
<link rel="stylesheet" 	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- 고객만족도 추가 라이브러리 -->
<link rel="stylesheet"	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
.table {
	text-align: center;
}

a {
	color: green;
}

.checked {
	color: orange;
}
</style>
</head>
<body>
<%@ include file="adminNav.jsp" %>
	<div class="container pt-3" style="margin-left:300px;">
		<!-- 부트스트랩 테이블 검색어 input  -->
		<div class="row">
			<div class="col">
				<h2>리뷰전체조회</h2>
			</div>
			<div class="col"></div>
			<div class="col">
				<input class="form-control input-lg" id="myInput" type="text" placeholder="리뷰 전체검색">
			</div>
		</div>
		<br> <br>
		<table class="table table-hover" style="width: 100%;">
			<thead>
				<tr>
					<th>순</th>
					<th>등록일</th>
					<th>주문번호</th>
					<th>상품번호</th>
					<th>상품명</th>
					<th>제목</th>
					<th>고객만족도</th>
					<th>작성자</th>
					<th>조회수</th>
				</tr>
			</thead>
			<tbody id="myTable">
				<!-- 각 항목별 링크할 페이지 정해얌! 그 중 리뷰제목클릭시 리뷰상세피이지로 이동 -->
				<tr>
					<td>1</td>
					<td>2020-10-01</td>
					<td><a href="#사용자 주문내역페이지로 이동하나? ">XXXXXXXXXXXXXXXX</a></td>
					<td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
					<td>유기농 브로콜리 1kg</td>
					<!-- 샘플로  파일 링크해봄 -->
					<td><a href="adminSelectReviewMore.jsp"> 냉동이 아닌 브로콜리 처음이예요</td>
					<td><span class="glyphicon glyphicon-star checked"></span><span
						class="glyphicon glyphicon-star checked"></span> <span
						class="glyphicon glyphicon-star"></span><span
						class="glyphicon glyphicon-star"></span><span
						class="glyphicon glyphicon-star"></span></td>
					<td><a href="#댓글달기로 이동하는게 나으려나??">user01</a></td>
					<td>XXXX</td>
				</tr>
				<tr>
					<td>2</td>
					<td>2020-10-01</td>
					<td><a href="#사용자 주문내역페이지로 이동하나? ">XXXXXXXXXXXXXXXX</a></td>
					<td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
					<td>유기농 브로콜리 1kg</td>
					<td><a href="#리뷰상세페이지로 이동"> 냉동이 아닌 브로콜리 처음이예요</td>
					<td><span class="glyphicon glyphicon-star checked"></span><span
						class="glyphicon glyphicon-star checked"></span> <span
						class="glyphicon glyphicon-star checked"></span><span
						class="glyphicon glyphicon-star checked"></span><span
						class="glyphicon glyphicon-star checked"></span></td>
					<td><a href="#댓글달기로 이동하는게 나으려나??">user01</a></td>
					<td>XXXX</td>
				</tr>
				<tr>
					<td>3</td>
					<td>2020-10-01</td>
					<td><a href="#사용자 주문내역페이지로 이동하나? ">XXXXXXXXXXXXXXXX</a></td>
					<td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
					<td>유기농 브로콜리 1kg</td>
					<td><a href="#리뷰상세페이지로 이동"> 냉동이 아닌 브로콜리 처음이예요</td>
					<td><span class="glyphicon glyphicon-star checked"></span><span
						class="glyphicon glyphicon-star"></span> <span
						class="glyphicon glyphicon-star"></span><span
						class="glyphicon glyphicon-star"></span><span
						class="glyphicon glyphicon-star"></span></td>
					<td><a href="#댓글달기로 이동하는게 나으려나??">user01</a></td>
					<td>XXXX</td>
				</tr>
				<tr>
					<td>4</td>
					<td>2020-10-01</td>
					<td><a href="#사용자 주문내역페이지로 이동하나? ">XXXXXXXXXXXXXXXX</a></td>
					<td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
					<td>유기농 브로콜리 1kg</td>
					<td><a href="#리뷰상세페이지로 이동"> 냉동이 아닌 브로콜리 처음이예요</td>
					<td><span class="glyphicon glyphicon-star checked"></span><span
						class="glyphicon glyphicon-star"></span> <span
						class="glyphicon glyphicon-star"></span><span
						class="glyphicon glyphicon-star"></span><span
						class="glyphicon glyphicon-star"></span></td>
					<td><a href="#댓글달기로 이동하는게 나으려나??">user01</a></td>
					<td>XXXX</td>
				</tr>
				<tr>
					<td>5</td>
					<td>2020-10-01</td>
					<td><a href="#사용자 주문내역페이지로 이동하나? ">XXXXXXXXXXXXXXXX</a></td>
					<td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
					<td>유기농 브로콜리 1kg</td>
					<td><a href="#리뷰상세페이지로 이동"> 냉동이 아닌 브로콜리 처음이예요</td>
					<td><span class="glyphicon glyphicon-star checked"></span><span
						class="glyphicon glyphicon-star checked"></span> <span
						class="glyphicon glyphicon-star"></span><span
						class="glyphicon glyphicon-star checked"></span><span
						class="glyphicon glyphicon-star"></span></td>
					<td><a href="#댓글달기로 이동하는게 나으려나??">user01</a></td>
					<td>XXXX</td>
				</tr>
				<tr>
					<td class="sorting_1">6</td>
					<td>2020-10-01</td>
					<td><a href="#사용자 주문내역페이지로 이동하나? ">XXXXXXXXXXXXXXXX</a></td>
					<td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
					<td>유기농 브로콜리 1kg</td>
					<td><a href="#리뷰상세페이지로 이동"> 냉동이 아닌 브로콜리 처음이예요</td>
					<td><span class="glyphicon glyphicon-star checked"></span><span
						class="glyphicon glyphicon-star checked"></span> <span
						class="glyphicon glyphicon-star"></span><span
						class="glyphicon glyphicon-star"></span><span
						class="glyphicon glyphicon-star"></span></td>
					<td><a href="#댓글달기로 이동하는게 나으려나??">user01</a></td>
					<td>XXXX</td>
				</tr>
				<tr>
					<td>7</td>
					<td>2020-10-01</td>
					<td><a href="#사용자 주문내역페이지로 이동하나? ">XXXXXXXXXXXXXXXX</a></td>
					<td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
					<td>유기농 브로콜리 1kg</td>
					<td><a href="#리뷰상세페이지로 이동"> 냉동이 아닌 브로콜리 처음이예요</td>
					<td><span class="glyphicon glyphicon-star checked"></span><span
						class="glyphicon glyphicon-star checked"></span> <span
						class="glyphicon glyphicon-star"></span><span
						class="glyphicon glyphicon-star"></span><span
						class="glyphicon glyphicon-star"></span></td>
					<td><a href="#댓글달기로 이동하는게 나으려나??">user01</a></td>
					<td>XXXX</td>
				</tr>
				<tr>
					<td>8</td>
					<td>2020-10-01</td>
					<td><a href="#사용자 주문내역페이지로 이동하나? ">XXXXXXXXXXXXXXXX</a></td>
					<td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
					<td>유기농 브로콜리 1kg</td>
					<td><a href="#리뷰상세페이지로 이동"> 냉동이 아닌 브로콜리 처음이예요</td>
					<td><span class="glyphicon glyphicon-star checked"></span><span
						class="glyphicon glyphicon-star"></span> <span
						class="glyphicon glyphicon-star"></span><span
						class="glyphicon glyphicon-star"></span><span
						class="glyphicon glyphicon-star"></span></td>
					<td><a href="#댓글달기로 이동하는게 나으려나??">user01</a></td>
					<td>XXXX</td>
				</tr>
				<tr>
					<td>9</td>
					<td>2020-10-01</td>
					<td><a href="#사용자 주문내역페이지로 이동하나? ">XXXXXXXXXXXXXXXX</a></td>
					<td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
					<td>유기농 브로콜리 1kg</td>
					<td><a href="#리뷰상세페이지로 이동"> 냉동이 아닌 브로콜리 처음이예요</td>
					<td><span class="glyphicon glyphicon-star checked"></span><span
						class="glyphicon glyphicon-star checked"></span> <span
						class="glyphicon glyphicon-star checked"></span><span
						class="glyphicon glyphicon-star checked"></span><span
						class="glyphicon glyphicon-star checked"></span></td>
					<td><a href="#댓글달기로 이동하는게 나으려나??">user01</a></td>
					<td>XXXX</td>
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