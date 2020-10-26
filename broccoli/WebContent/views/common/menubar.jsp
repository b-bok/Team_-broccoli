<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.kh.member.model.vo.Member"%>
<% 
	Member login = (Member) session.getAttribute("login"); 

	String broccoli = request.getContextPath(); 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>:::::브로콜리_꿈꾸는자바(JAVA)조:::::</title>

<!--------------------★★★★★★제이쿼리, 부트스트랩 기본링크/아이콘링크 넣었어요 이외에 따로 필요한 스크립트는 여기다 같이 추가해주세요★★★★★★★ ------------->
<!--------------------★★★★★★이jsp파일 다른 jsp파일에 include 하실 떄에는 style에 꼭 margin-top:50px 넣어주세요 ★★★★★★★  ------------->

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
div {
	box-sizing: border-box;
	font-size: 12px;
}

a:hover {
	text-decoration: none;
	color: green;
}

a {
	color: black;
	font-weight: bold;
}
/* 최상단상단메뉴바 */
#header {
	height: 15%;
}

#header_1 {
	height: 20%;
	margin-right: 30px;
}

.list_menu {
	margin: 0;
	padding: 0;
	list-style-type: none;
	text-align: center;
	height: 100%;
	float: right;
}

.list_menu>li {
	float: left;
	width: 100px;
	height: 100%;
	cursor: pointer;
	text-align: center;
}

.list_menu>li>a:hover+ul, .submenu:hover, .list_menu a {
	display: block;
}

.submenu {
	display: none;
	padding: 0;
	list-style-type: none;
}
/* 홈로고부분 */
#header_2 {
	height: 50%;
	text-align: center;
}
/* 카테고리 메뉴 */
#header_3 {
	height: 30%;
	width: 100%;
	margin-left: 80px;
}

.allmenu>li {
	list-style-type: none;
	float: left;
	width: 230px;
	height: 40px;
	line-height: 30px;
	cursor: pointer;
	text-align: center;
}
</style>
</head>
<body>


	<div id="header" style="height: 150px">
		<div id="header_1">
			<ul class="list_menu">


				<!------------------------------------★★★★★회원가입/로그인/마이페이지/고객센터/공지사항/자주하는질문/1:1문의/신고하기 jsp파일경로 넣어주세요 ★★★★★------------------------------------------->

				<!-- 로그인 전  -->
				<%
					if(login == null){
				%>
				<li><a href="<%= broccoli%>/registration.me">회원가입</a></li>
				<li><a href="<%= broccoli%>/login.me">로그인</a></li>
				<% }else{ %>
				
				<!-- 로그인 후  -->
				<li><a href="<%= broccoli%>/logout.me">로그아웃</a></li>
				<li><a href="★">마이페이지</a></li>
				<% } %>
				
				<!-- 공통요소  -->
				<li><a href="★" class="dropdown-toggle" data-toggle="dropdown"
					style="font-size: 12px; padding: 0px;">고객센터</a>
					<ul class="submenu">
						<li><a href="★" class="dropdown-item" style="font-size: 11px;">공지사항</a></li>
						<li><a href="★" class="dropdown-item" style="font-size: 11px;">자주하는 질문</a></li>
						
						<!-- 1:1 문의, 신고하기 클릭하면 로그인 페이지로 이동하도록  -->
						<li><a href="<%= broccoli %>/login.me" class="dropdown-item" style="font-size: 11px;">1:1 문의</a></li>
						<li><a href="<%= broccoli %>/login.me" class="dropdown-item" style="font-size: 11px;">신고하기</a></li>
					</ul></li>
			</ul>
		</div>
		<div id="header_2">
			<a href="<%= broccoli %>" style="margin: 100px;"><h3>브로콜리</h3></a>
		</div>
		<div id="header_3" align="center">
			<ul class="allmenu" style="font-size: 17px; font-weight: bold;">


				<!------------------------------------★★★★★신상품/베스트/이벤트/상품검색 jsp파일경로 넣어주세요 ★★★★★------------------------------------------->


				<li><a href="★"><i class="fas fa-bars"></i>&nbsp;&nbsp;전체
						카테고리</a></li>
				<li><a href="★">신상품</a></li>
				<li><a href="★">베스트</a></li>
				<li><a href="★">이벤트</a></li>
				<li>
					<form class="form-inline" action="★" method="GET">
						<input name="search" class="form-control form-control-sm"
							type="text" size="20px" placeholder="검색어를 입력하세요">
						<button class="btn btn-secondary btn-sm" type="submit">
							<i class="fas fa-search" style="font-size: 20px;"></i>
						</button>
					</form>
				</li>
				<!-- 장바구니 -->
				<li><a href="★"><i class="fas fa-shopping-cart"
						style="font-size: 30px;"></i></a></li>
			</ul>
		</div>
	</div>
</body>
</html>