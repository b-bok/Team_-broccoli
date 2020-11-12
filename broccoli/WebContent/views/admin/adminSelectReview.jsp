<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import = "com.kh.review.model.vo.*,com.kh.common.*,java.util.ArrayList" %>
<%@ page import = "com.kh.product.model.vo.*" %>
<%
	Pagination p = (Pagination) request.getAttribute("p");
	ArrayList<Review> list = (ArrayList<Review>) request.getAttribute("list");
	//상품 객체 추가 연결해야 상품페이지로 링크 가능
%>
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
					<th><center>고객만족도</center></th>
					<th><center>작성자</center></th>
					<th><center>조회수</center></th>
				</tr>
			</thead>
			<tbody id="myTable">
				<% if(list.isEmpty()){ %>
				<!--  조회리스트가 없는 경우 -->
					<tr>
						<td colspan="9">리스트가 존재하지 않습니다.</td>
					</tr>
				<%}else{ %>
					<!--  조회리스트가 있는 경우 -->
					<% for(Review r : list){ %>
					<!-- 각 항목별 링크할 페이지 정해얌! 그 중 리뷰제목클릭시 리뷰상세피이지로 이동 -->
					<tr>
						<td><%=r.getReviewNo() %></td>
						<td><%=r.getRegDate() %></td>
						<td> 사용자 주문내역페이지 </td>
						<td><%=r.getPno() %></td>
						<!--  상품제목이 보일려면 join 하고 클래스 별도로 불러야하는데 있는지 파악해야함  -->
						<td>유기농 브로콜리 1kg</td> 
						<td id="revDetail"><b><%=r.getReviewTitle() %></b></td>
						<!-- 등급 쿼리로 작성하기 -->
						<td><%=r.getReviewRate() %>
						
							<!-- 아이콘 실행관련 보류 
							<span class="glyphicon glyphicon-star checked"></span>
							<span class="glyphicon glyphicon-star checked"></span> 
							<span class="glyphicon glyphicon-star"></span>
							<span class="glyphicon glyphicon-star"></span>
							<span class="glyphicon glyphicon-star"></span> -->
						</td>
						<td><%=r.getMem() %></td>
						<td><%=r.getClickNo() %></td>
					</tr>
					<%} %>
				<%} %>

			</tbody>
		</table>
		
	   <!-- 상세페이지이동 -->
	   <script>
        	$(function(){
        		$(".table>tbody>tr>td").click(function(){
		
        			 location.href = "<%= broccoli%>/detail.rv?rno="+ $(this).parent().children().eq(0).text();
        		});
        	});
        </script>

	<!-- 페이징바 -->
	<div  class="paging-area" align="center">

		<ul class="pager">
		<% if(p.getCurrentPage()!= 1){ %>
			<li><a href="<%=broccoli %>/selectReview.admin?currentPage=<%=p.getCurrentPage()-1%>">이전</a></li>
		<% } %>
		
		<% for(int i = p.getStartPage();i<=p.getEndPage();i++){ %>
			<li><a href="<%=broccoli%>/selectReview.admin?currentPage=<%=i%>" class="btn btn-sm"> <%=i%></a></li>
		<%} %>
		
		<% if(p.getCurrentPage() != p.getMaxPage()){ %>
			<li><a href="<%=broccoli%>/selectReview.admin?currentPage=<%=p.getCurrentPage()+1%>">다음</a></li>
		<%} %>
		</ul>
	</div>
	<script>
		$(function(){
			$(".btn-sm").click(function(){
				$(this).attr(active);
			})
		})
	</script>
</div>

</body>
</html>