<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>블랙컨슈머조회</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 차후 소스들은 관리자 대쉬보드 헤더+사이드바 페이지에 담아서 include 시키기 -->
<!-- 대쉬보드에서 쓸 공통 css -->
<link	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&family=Nanum+Myeongjo:wght@800&display=swap"	rel="stylesheet">
<!-- 검색바CSS -->
<link rel="stylesheet" 	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

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
<%@ include file="adminNav.jsp" %>
	<div class="container pt-3" style="margin-left:300px;">
		<!-- 부트스트랩 테이블 검색어 input  -->
		<div class="row">
			<div class="col">
				<h2>블랙컨슈머조회</h2>
			</div>
			<div class="col"></div>
			<div class="col">
				<input class="form-control input-lg" id="myInput" type="text" placeholder="블랙컨슈머 전체검색">
			</div>
		</div>
		<br> <br>
		<table class="table table-hover" style="width: 100%;">
			<thead>
				<tr>
					<!-- 경과일이 30일 지나면 블랙컨슈머 해제하는 버튼처리? 일단 전체 체크박스 가능하게 처리는 완료! -->
					<!-- >> 자동화하면 어떨까? 화면에는 한번 블랙컨슈머로 등록되어도 다 보여지되 30일 경고하면 아이디의 컬러가 달라지게   -->
					<!-- 해제되면 블라인드 처리가 해지시켜야하나???  -->
					<th><input type="checkbox" id="blackSelect"></th>
					<th>순</th>
					<th>아이디</th>
					<th>해당신고글</th>
					<th>신고일자</th>
					<th>경과일</th>
					<th>등록사유</th>
				</tr>
			</thead>
			<script>
				// 전체선택할 수 있는 jquery 
				$(document).ready(function() {
					$("#blackSelect").click(function() {
						if ($("#blackSelect").prop("checked")) {
							$("input[name=chk]").prop("checked", true);
						} else {
							$("input[name=chk]").prop("checked", false);
						}
					})
				})

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
			<tbody id="myTable">
				<!-- 등록사유 종류 
                1) 상품과 관련없는 비방내용 
                2) 음란, 욕설 부적절한 내용
                3) 구매후기 취지에 어긋난 내용
                4) 기타 : (세부사항 영역있음)
              -->
				<!-- 체크박스 선택하고 블랙컨슈머 해지 버튼 만들기 작업해야함 -->

				<tr>
					<td><input type="checkbox" name="chk"></td>
					<td class="sorting_1">1</td>
					<td>user01</td>
					<td>XXXXXXXXXXXXXX</td>
					<td>2020-10-13</td>
					<td>2</td>
					<td>구매후기 취지에 어긋난 내용</td>

				</tr>
				<tr>
					<td><input type="checkbox" name="chk"></td>
					<td class="sorting_1">2</td>
					<td>user02</td>
					<td>XXXXXXXXXXXXXX</td>
					<td>2020-10-02</td>
					<td>13</td>
					<td>구매후기 취지에 어긋난 내용</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="chk"></td>
					<td class="sorting_1">3</td>
					<td>user03</td>
					<td>XXXXXXXXXXXXXX</td>
					<td>2020-10-02</td>
					<td>13</td>
					<td>상품과 관련없는 비방내용</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="chk"></td>
					<td class="sorting_1">4</td>
					<td>user04</td>
					<td>XXXXXXXXXXXXXX</td>
					<td>2020-10-02</td>
					<td>13</td>
					<td>상품과 관련없는 비방내용</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="chk"></td>
					<td class="sorting_1">5</td>
					<td>user05</td>
					<td>XXXXXXXXXXXXXX</td>
					<td>2020-10-02</td>
					<td>13</td>
					<td>구매후기 취지에 어긋난 내용</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="chk"></td>
					<td class="sorting_1">6</td>
					<td>user06</td>
					<td>XXXXXXXXXXXXXX</td>
					<td>2020-10-02</td>
					<td>13</td>
					<td>음란, 욕설 부적절한 내용</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="chk"></td>
					<td class="sorting_1">7</td>
					<td>user07</td>
					<td>XXXXXXXXXXXXXX</td>
					<td>2020-10-02</td>
					<td>13</td>
					<td>음란, 욕설 부적절한 내용</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="chk"></td>
					<td class="sorting_1">8</td>
					<td>user08</td>
					<td>XXXXXXXXXXXXXX</td>
					<td>2020-10-05</td>
					<td>10</td>
					<td>제품하자</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="chk"></td>
					<td class="sorting_1">9</td>
					<td>user09</td>
					<td>XXXXXXXXXXXXXX</td>
					<td>2020-10-02</td>
					<td>12</td>
					<td>음란, 욕설 부적절한 내용</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="chk"></td>
					<td class="sorting_1">10</td>
					<td>user10</td>
					<td>XXXXXXXXXXXXXX</td>
					<td>2020-10-03</td>
					<td>12</td>
					<td><a href="#신고내역 상세조회로 이동">기타</a></td>
				</tr>
				<tr>
					<td><input type="checkbox" name="chk"></td>
					<td class="sorting_1">11</td>
					<td>broccoli</td>
					<td>XXXXXXXXXXXXXX</td>
					<td>2020-10-03</td>
					<td>12</td>
					<td><a href="#신고내역 상세조회로 이동">기타</a></td>
				</tr>
				<tr>
					<td><input type="checkbox" name="chk"></td>
					<td class="sorting_1">12</td>
					<td>calliflower</td>
					<td>XXXXXXXXXXXXXX</td>
					<td>2020-10-03</td>
					<td>12</td>
					<td><a href="#신고내역 상세조회로 이동">기타</a></td>
				</tr>
				<tr>
					<td><input type="checkbox" name="chk"></td>
					<td class="sorting_1">13</td>
					<td>carrot</td>
					<td>XXXXXXXXXXXXXX</td>
					<td>2020-10-10</td>
					<td>5</td>
					<td><a href="#신고내역 상세조회로 이동">기타</a></td>
				</tr>
				<tr>
					<td><input type="checkbox" name="chk"></td>
					<td class="sorting_1">14</td>
					<td>onion</td>
					<td>XXXXXXXXXXXXXX</td>
					<td>2020-10-01</td>
					<td>15</td>
					<td><a href="#신고내역 상세조회로 이동">기타</a></td>
				</tr>
				<tr>
					<td><input type="checkbox" name="chk"></td>
					<td class="sorting_1">15</td>
					<td>spinach</td>
					<td>XXXXXXXXXXXXXX</td>
					<td>2020-10-01</td>
					<td>15</td>
					<td>구매후기 취지에 어긋난 내용</td>
				</tr>
				<tr role="row" class="even">
					<td><input type="checkbox" name="chk"></td>
					<td class="sorting_1">16</td>
					<td>shallot</td>
					<td>XXXXXXXXXXXXXX</td>
					<td>2020-10-01</td>
					<td>15</td>
					<td>구매후기 취지에 어긋난 내용</td>
				</tr>
			</tbody>
		</table>

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