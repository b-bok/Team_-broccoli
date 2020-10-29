<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import = "com.kh.member.model.vo.*, java.util.ArrayList" %>
<%
	Pagination p = (Pagination) request.getAttribute("p");
	ArrayList<Member> list = (ArrayList<Member>) request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<title>회원전체조회</title>
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
		<div class="row">		
			<div class="col">
				<h2>회원리스트</h2>
			</div>
			<div class="col"></div>
			<div class="col">
			<!-- 부트스트랩 테이블 검색어 input  -->
				<input class="form-control input-lg" id="myInput" type="text" placeholder="회원 검색">
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
				<% if(list.isEmpty()){ %>
					<!--  조회된 리스트가 없는 경우 -->
					<tr>
						<td colspan="12">리스트가 존재하지 않습니다!</td>
					</tr>
					<%}else{ %>
					<!--  리스트가 있는 경우 -->
					<% for(Member m : list){ %>
					<tr>
						<td><%=m.getMemNo()%></td>
						<td><%=m.getMemId()%></td>
						<td><%=m.getMemName()%></td>
						<td><%=m.getEmail()%></td>
						<td><%=m.getMobile()%></td>
						<td><%=m.getAddress1()%></td>
						<td><%=m.getAddress2()%></td>
						<td><%=m.getZipcode()%></td>
						<td><%=m.getGender()%></td>
						<td><%=m.getPoint()%></td>
						<td><%=m.getRegDate()%></td>
						<td><%=m.getStatus()%></td>
					</tr>
					<%} %>
				<%} %>

			</tbody>
		</table>
		
	<!-- 페이징바 -->
	<div  class="paging-area" align="center">

		<ul class="pager">
		<% if(p.getCurrentPage()!= 1){ %>
			<li><a href="<%=broccoli %>/members.admin?currentPage=<%=p.getCurrentPage()-1%>">이전</a></li>
		<% } %>
		
		<% for(int i = p.getStartPage();i<=p.getEndPage();i++){ %>
			<li><a href="<%=broccoli%>/members.admin?currentPage=<%=i%>" class="btn btn-sm"> <%=i%></a></li>
		<%} %>
		
		<% if(p.getCurrentPage() != p.getMaxPage()){ %>
			<li><a href="<%=broccoli%>/members.admin?currentPage=<%=p.getCurrentPage()+1%>">다음</a></li>
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