<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<style>
div {
	box-sizing: border-box;
}

.wrap {
	width: 1300px;
	height: 800px;
	margin: auto;
	margin-top: 50px;
}

.wrap>div {
	width: 100%;
	border: 1px solid red;
}

#header {
	height: 10%;
}

#content {
	height: 80%;
}

#fotter {
	height: 10%;
}

#header>div {
	width: 100%;
	float: left;
}

#header_1 {
	height: 50%;
}

#header_2 {
	height: 50%;
}

#header>div>a {
	text-decoration: none;
	color: black;
	font-size: 15px;
	border: 1px solid blue;
	display: block;
	display: table-cell;
	width: 150px;
}

.thumbnail {
	border: 1px solid white;
	width: 220px;
	display: inline-block;
	margin: 10px;
}

.thumbnail:hover {
	cursor: pointer;
	opacity: 0.3;
}

#pagingBar {
	margin-top: 25px;
}
</style>

<%@ include file="../common/menubar.jsp"%>

<div class="wrap">
	<div id="header">
		<div id="header_1">
			<h3>신상품</h3>
		</div>

	</div>

	<div id="content">

		<div class="thumbnail" align="center">
			<img src="/jsp/resources/thumbnail_upfiles/실제서버에업로드할이름" width="200"
				height="200">
			<p>
				상품명 <br> 가격 <br> 간단설명
			</p>
		</div>


		<div class="thumbnail" align="center">
			<img src="/jsp/resources/thumbnail_upfiles/실제서버에업로드할이름" width="200"
				height="200">
			<p>
				상품명 <br> 가격 <br> 간단설명
			</p>
		</div>
		<div class="thumbnail" align="center">
			<img src="/jsp/resources/thumbnail_upfiles/실제서버에업로드할이름" width="200"
				height="200">
			<p>
				상품명 <br> 가격 <br> 간단설명
			</p>
		</div>

		<div class="thumbnail" align="center">
			<img src="/jsp/resources/thumbnail_upfiles/실제서버에업로드할이름" width="200"
				height="200">
			<p>
				상품명 <br> 가격 <br> 간단설명
			</p>
		</div>

		<div class="thumbnail" align="center">
			<img src="/jsp/resources/thumbnail_upfiles/실제서버에업로드할이름" width="200"
				height="200">
			<p>
				상품명 <br> 가격 <br> 간단설명
			</p>
		</div>

		<div class="thumbnail" align="center">
			<img src="/jsp/resources/thumbnail_upfiles/실제서버에업로드할이름" width="200"
				height="200">
			<p>
				상품명 <br> 가격 <br> 간단설명
			</p>
		</div>

		<div class="thumbnail" align="center">
			<img src="/jsp/resources/thumbnail_upfiles/실제서버에업로드할이름" width="200"
				height="200">
			<p>
				상품명 <br> 가격 <br> 간단설명
			</p>
		</div>

		<div class="thumbnail" align="center">
			<img src="/jsp/resources/thumbnail_upfiles/실제서버에업로드할이름" width="200"
				height="200">
			<p>
				상품명 <br> 가격 <br> 간단설명
			</p>
		</div>

		<div class="thumbnail" align="center">
			<img src="/jsp/resources/thumbnail_upfiles/실제서버에업로드할이름" width="200"
				height="200">
			<p>
				상품명 <br> 가격 <br> 간단설명
			</p>
		</div>

		<div class="thumbnail" align="center">
			<img src="/jsp/resources/thumbnail_upfiles/실제서버에업로드할이름" width="200"
				height="200">
			<p>
				상품명 <br> 가격 <br> 간단설명
			</p>
		</div>

	</div>

	<div id="fotter">
		<div id="pagingBar" align="center">

			<a href="">&lt;</a> <a href="">1</a> <a href="">2</a> <a href="">3</a>
			<a href="">4</a> <a href="">5</a> <a href="">6</a> <a href="">7</a> <a
				href="">8</a> <a href="">9</a> <a href="">10</a> <a href="">&gt;</a>

		</div>
	</div>
</div>


</head>
<body>

</body>
</html>