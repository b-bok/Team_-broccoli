<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import = "com.kh.common.*, com.kh.report.model.vo.*, java.util.ArrayList" %>
<% 
	ArrayList<Report> list = (ArrayList<Report>) request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<title>신고상세조회</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>신고전체조회</title>
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
              <% if(list.isEmpty()){ %>
	              	<tr>
	              		<td colspan="8">조회된 리스트가 없습니다</td>
	              	</tr>
              <% }else{ %>
	              <% for(Report r :list) {%>
						<tr>
							<td><%=r.getReportNo() %></td>
							<td><%=r.getReportDate() %></td>
							<td><%=r.getReportCategory() %></td>
							<td> 상품번호 -> product 조인확인 필요 XXXXXXXXXXXXXXXX</td>
							<td><a href="#상품 세부페이지"> 상품명 -> product 상품명 조인확인필요 ; 유기농 브로콜리 1kg</a></td>
							<td><a href="adminReportDetail.html"><%=r.getReportContent() %></td>
							<td><a href="#어디로 이동하는게 나으려나??"><%=r.getMem() %>user01</a></td>
							<td><a href=""><%=r.getReportResult() %></a></td>
						</tr>
					<%} %>
				<%} %>

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