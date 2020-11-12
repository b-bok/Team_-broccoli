<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.kh.common.*, com.kh.recipe.model.vo.*,java.util.ArrayList" %>
<%
	Pagination p = (Pagination) request.getAttribute("p");
	ArrayList<Recipe> list = (ArrayList<Recipe>) request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<title>레시피전체조회</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
				<h2>레시피전체조회</h2>
			</div>
			<div class="col"></div>
			<div class="col">
				<input class="form-control input-lg" id="myInput" type="text" placeholder="레시피 전체검색">
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
					<th><center>작성자</center></th>
					<th><center>조회수</center></th>
				</tr>
			</thead>
			<tbody id="myTable">
				<!-- 각 항목별 링크할 페이지 정해얌! 그 중 리뷰제목클릭시 리뷰상세피이지로 이동 -->
				<% if(list.isEmpty()){ %>
					<tr>
						<td colspan="8">리스트가 존재하지 않습니다</td>
					</tr>
				<%}else{ %>
					<%for(Recipe r : list){ %>
					<tr>
						<td><%=r.getRecipeNo() %></td>
						<td><%=r.getRegDate() %></td>
						<td><a href="#사용자 주문내역페이지로 이동하나? ">XXXXXXXXXXXXXXXX</a></td>
						<td><%=r.getPno() %></td>
						<td><a href="#상품 세부페이지">국내산 오징어 1kg</a></td>
						<td><%=r.getRecipeTitle() %></td>
						<td><a href="#댓글달기로 이동하는게 나으려나??"><%=r.getMem() %></a></td>
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
      			location.href = "<%=broccoli%>/detail.rc?rco=" + $(this).parent().children().eq(0).text();	
      		});
      	});
    </script>	
	
		
	<!-- 페이징바 -->
	<div  class="paging-area" align="center">

		<ul class="pager">
		<% if(p.getCurrentPage()!= 1){ %>
			<li><a href="<%=broccoli %>/selectRecipe.admin?currentPage=<%=p.getCurrentPage()-1%>">이전</a></li>
		<% } %>
		
		<% for(int i = p.getStartPage();i<=p.getEndPage();i++){ %>
			<li><a href="<%=broccoli%>/selectRecipe.admin?currentPage=<%=i%>" class="btn btn-sm"> <%=i%></a></li>
		<%} %>
		
		<% if(p.getCurrentPage() != p.getMaxPage()){ %>
			<li><a href="<%=broccoli%>/selectRecipe.admin?currentPage=<%=p.getCurrentPage()+1%>">다음</a></li>
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