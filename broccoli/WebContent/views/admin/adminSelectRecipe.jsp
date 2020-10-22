<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>레시피전체조회</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
				<h2>레시피전체조회</h2>
			</div>
			<div class="col"></div>
			<div class="col">
				<input class="form-control input-lg" id="myInput" type="text"
					placeholder="레시피 전체검색">
			</div>
		</div>
		<br> <br>
		<table class="table table-hover" style="width: 100%;">
			<thead>
				<tr>
					<th><center>순</center></th>
					<th><center>등록일</center></th>
					<th><center>주문번호</center></th>
					<th><center>상품번호</center></th>
					<th><center>상품명</center></th>
					<th><center>제목</center></th>
					<th><center>카테고리</center></th>
					<th><center>작성자</center></th>
					<th><center>조회수</center></th>
				</tr>
			</thead>
			<tbody id="myTable">
				<!-- 각 항목별 링크할 페이지 정해얌! 그 중 리뷰제목클릭시 리뷰상세피이지로 이동 -->
				<!-- 레시피 카테고리 종류  1) 매일밥상 2) 특별한날 3) 간단요리 -->
				<tr>
					<td>1</td>
					<td>2020-10-01</td>
					<td><a href="#사용자 주문내역페이지로 이동하나? ">XXXXXXXXXXXXXXXX</a></td>
					<td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
					<td>국내산 오징어 1kg</td>
					<td><a href="adminRecipeDetail.html">해물파전</td>
					<td>특별한 날</td>
					<td><a href="#댓글달기로 이동하는게 나으려나??">user01</a></td>
					<td>XXXX</td>
				</tr>
				<tr role="row" class="even">
					<td class="sorting_1">2</td>
					<td>2020-10-02</td>
					<td><a href="#사용자 주문내역페이지로 이동하나? ">XXXXXXXXXXXXXXXX</a></td>
					<td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
					<td>유기농 브로콜리 1kg</td>
					<td><a href="#리뷰상세페이지로 이동">브로콜리 데치기</td>
					<td>간단요리</td>
					<td><a href="#댓글달기로 이동하는게 나으려나??">user02</a></td>
					<td>100</td>
				</tr>
				<tr role="row" class="odd">
					<td class="sorting_1">3</td>
					<td>2020-10-01</td>
					<td><a href="#사용자 주문내역페이지로 이동하나? ">XXXXXXXXXXXXXXXX</a></td>
					<td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
					<td>유기농 브로콜리 1kg</td>
					<td><a href="#리뷰상세페이지로 이동">야채볶음</td>
					<td>매일밥상</td>
					<td><a href="#댓글달기로 이동하는게 나으려나??">user03</a></td>
					<td>99</td>
				</tr>
				<tr role="row" class="even">
					<td class="sorting_1">4</td>
					<td>2020-10-02</td>
					<td><a href="#사용자 주문내역페이지로 이동하나? ">XXXXXXXXXXXXXXXX</a></td>
					<td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
					<td>냉동 블루베리 500g</td>
					<td><a href="#리뷰상세페이지로 이동">까페 와플만들기</td>
					<td>특별한 날</td>
					<td><a href="#댓글달기로 이동하는게 나으려나??">user02</a></td>
					<td>XXXX</td>
				</tr>
				<tr role="row" class="odd">
					<td class="sorting_1">5</td>
					<td>2020-10-01</td>
					<td><a href="#사용자 주문내역페이지로 이동하나? ">XXXXXXXXXXXXXXXX</a></td>
					<td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
					<td>유기농 브로콜리 1kg</td>
					<td><a href="#리뷰상세페이지로 이동">크림스튜</td>
					<td>특별한 날</td>
					<td><a href="#댓글달기로 이동하는게 나으려나??">user01</a></td>
					<td>XXXX</td>
				</tr>
				<tr role="row" class="even">
					<td class="sorting_1">6</td>
					<td>2020-10-02</td>
					<td><a href="#사용자 주문내역페이지로 이동하나? ">XXXXXXXXXXXXXXXX</a></td>
					<td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
					<td>냉동 블루베리 500g</td>
					<td><a href="#리뷰상세페이지로 이동">블루베리 요루르트</td>
					<td>매일밥상</td>
					<td><a href="#댓글달기로 이동하는게 나으려나??">user02</a></td>
					<td>XXXX</td>
				</tr>
				<tr role="row" class="odd">
					<td class="sorting_1">7</td>
					<td>2020-10-01</td>
					<td><a href="#사용자 주문내역페이지로 이동하나? ">XXXXXXXXXXXXXXXX</a></td>
					<td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
					<td>유기농 브로콜리 1kg</td>
					<td><a href="#리뷰상세페이지로 이동">크림스튜</td>
					<td>특별한 날</td>
					<td><a href="#댓글달기로 이동하는게 나으려나??">user01</a></td>
					<td>XXXX</td>
				</tr>
				<tr role="row" class="even">
					<td class="sorting_1">8</td>
					<td>2020-10-02</td>
					<td><a href="#사용자 주문내역페이지로 이동하나? ">XXXXXXXXXXXXXXXX</a></td>
					<td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
					<td>유기농 브로콜리 1kg</td>
					<td><a href="#리뷰상세페이지로 이동">브로콜리 데치기</td>
					<td>매일밥상</td>
					<td><a href="#댓글달기로 이동하는게 나으려나??">user02</a></td>
					<td>XXXX</td>
				</tr>
				<tr role="row" class="odd">
					<td class="sorting_1">9</td>
					<td>2020-10-04</td>
					<td><a href="#사용자 주문내역페이지로 이동하나? ">XXXXXXXXXXXXXXXX</a></td>
					<td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
					<td>노르웨이산 연어 400g</td>
					<td><a href="#리뷰상세페이지로 이동">연어스테이크</td>
					<td>특별한 날</td>
					<td><a href="#댓글달기로 이동하는게 나으려나??">user05</a></td>
					<td>XXXX</td>
				</tr>
				<tr role="row" class="even">
					<td class="sorting_1">10</td>
					<td>2020-10-02</td>
					<td><a href="#사용자 주문내역페이지로 이동하나? ">XXXXXXXXXXXXXXXX</a></td>
					<td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
					<td>유기농 브로콜리 1kg</td>
					<td><a href="#리뷰상세페이지로 이동">브로콜리 데치기</td>
					<td>매일밥상</td>
					<td><a href="#댓글달기로 이동하는게 나으려나??">user02</a></td>
					<td>XXXX</td>
				</tr>
				<tr role="row" class="odd">
					<td class="sorting_1">11</td>
					<td>2020-10-01</td>
					<td><a href="#사용자 주문내역페이지로 이동하나? ">XXXXXXXXXXXXXXXX</a></td>
					<td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
					<td>노르웨이산 연어 400g</td>
					<td><a href="#리뷰상세페이지로 이동"> 연어초밥</td>
					<td>간단요리</td>
					<td><a href="#댓글달기로 이동하는게 나으려나??">user06</a></td>
					<td>XXXX</td>
				</tr>
				<tr role="row" class="even">
					<td class="sorting_1">12</td>
					<td>2020-10-01</td>
					<td><a href="#사용자 주문내역페이지로 이동하나? ">XXXXXXXXXXXXXXXX</a></td>
					<td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
					<td>생갈치 2마리(사가제</td>
					<td><a href="#리뷰상세페이지로 이동">갈치구이</td>
					<td>매일밥상</td>
					<td><a href="#댓글달기로 이동하는게 나으려나??">user03</a></td>
					<td>XXXX</td>
				</tr>
				<tr role="row" class="odd">
					<td class="sorting_1">13</td>
					<td>2020-10-01</td>
					<td><a href="#사용자 주문내역페이지로 이동하나? ">XXXXXXXXXXXXXXXX</a></td>
					<td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
					<td>냉동굴 800g</td>
					<td><a href="#리뷰상세페이지로 이동">오이스터 파스터</td>
					<td>특별한 날</td>
					<td><a href="#댓글달기로 이동하는게 나으려나??">user01</a></td>
					<td>XXXX</td>
				</tr>
				<tr role="row" class="even">
					<td class="sorting_1">14</td>
					<td>2020-10-01</td>
					<td><a href="#사용자 주문내역페이지로 이동하나? ">XXXXXXXXXXXXXXXX</a></td>
					<td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
					<td>송이버섯 1팩</td>
					<td><a href="#리뷰상세페이지로 이동">버섯리조또</td>
					<td>간단요리</td>
					<td><a href="#댓글달기로 이동하는게 나으려나??">user08</a></td>
					<td>XXXX</td>
				</tr>
				<tr role="row" class="odd">
					<td class="sorting_1">15</td>
					<td>2020-10-01</td>
					<td><a href="#사용자 주문내역페이지로 이동하나? ">XXXXXXXXXXXXXXXX</a></td>
					<td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
					<td>충주 사과 3kg</td>
					<td><a href="#리뷰상세페이지로 이동">까나페</td>
					<td>특별한 날</td>
					<td><a href="#댓글달기로 이동하는게 나으려나??">user10</a></td>
					<td>XXXX</td>
				</tr>
				<tr role="row" class="even">
					<td class="sorting_1">16</td>
					<td>2020-10-01</td>
					<td><a href="#사용자 주문내역페이지로 이동하나? ">XXXXXXXXXXXXXXXX</a></td>
					<td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
					<td>팬케이크 파우더 2인분</td>
					<td><a href="#리뷰상세페이지로 이동">팬케이크</td>
					<td>간단요리</td>
					<td><a href="#댓글달기로 이동하는게 나으려나??">user16</a></td>
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