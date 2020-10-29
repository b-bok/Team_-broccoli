<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet"
href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
<script
src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<style>
	div { box-sizing: border-box;}

	.wrap {
	width: 1000px;
	height: 800px;
	margin: auto;
	margin-top: 50px;
	}
.wrap>div {width: 80%;float:right;}

#noticeCategory {height: 5%; margin-top: 5px;}

#fotter {height: 10%;}

#fotter>div {width: 100%;float: left;}

#titleEx pre{float: left; font-size: x-large;}
#titleEx p{
    float: left;
    margin-left: 30px;
    line-height: 250%;
}
#notice_SearchList, #notice_Keyword{margin-right: 10px;float:right;}

#btn-group{
	float: left;
	width:20%;
	padding-right: 10px;
}
</style>
</head>
<body>
	


    <!-- 공지사항 리스트 페이지입니다. -->

    <%@ include file="../common/menubar.jsp"%>
    
    <div>테스트용</div>
    <div class="wrap">

        <!-- 타이틀 명입니다. -->
        <div id="titleEx">
            <pre><b>공지사항</b></pre> 
            <p>브로콜리의 새로운 소식과 유용한 정보들을 이곳에서 확인하세요 </p>
        </div>


        <!-- 게시판 리스트 -->
		<div id="noticeListBoard">

			<table class="table table-hover" id="noticeList" >
				<thead align="center">
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
                        <th>작성일</th>
                        <th>조회수</th>
					</tr>
				</thead>

				<tbody align="center">
					<tr>
						<td>1</td>
						<td>제목입니다1</td>
						<td>작성자아이디</td>
                        <td>2020-10-30</td>
                        <td>10</td>
					</tr>
					<tr>
						<td>1</td>
						<td>제목입니다1</td>
						<td>작성자아이디</td>
                        <td>2020-10-30</td>
                        <td>2</td>
					</tr>
					<tr>
						<td>1</td>
						<td>제목입니다1</td>
						<td>작성자아이디</td>
                        <td>2020-10-30</td>
                        <td>1</td>
					</tr>
					<tr>
						<td>1</td>
						<td>제목입니다1</td>
						<td>작성자아이디</td>
                        <td>2020-10-30</td>
                        <td>1</td>
					</tr>
					<tr>
						<td>1</td>
						<td>제목입니다1</td>
						<td>작성자아이디</td>
                        <td>2020-10-30</td>
                        <td>1</td>
					</tr>

					<tr>
						<td>1</td>
						<td>제목입니다1</td>
						<td>작성자아이디</td>
                        <td>2020-10-30</td>
                        <td>1</td>
					</tr>

					<tr>
						<td>1</td>
						<td>제목입니다1</td>
						<td>작성자아이디</td>
                        <td>2020-10-30</td>
                        <td>12</td>
					</tr>

					<tr>
						<td>1</td>
						<td>제목입니다1</td>
						<td>작성자아이디</td>
                        <td>2020-10-30</td>
                        <td>1</td>
					</tr>
				</tbody>

			</table>


		</div>

		<div id="fotter">

			<div id="searchForm" align="left">

                <form action ="test" method ="get">

                    * 검색어

                    <input type="checkbox" id="checkbox" value> ID &nbsp 
                    <input type="checkbox" id="checkbox" value> 제목

                    <input type="text" name="keyword" id="notice_Keyword"> 
                    <input type="submit" value ="검색" name="notice_SearchList" id="notice_SearchList">
                    
                </form>
                 
			</div>

			<div id="pagingBar" align="center">

				<a href="">&lt;</a> <a href="">1</a> <a href="">2</a> <a href="">3</a>
				<a href="">4</a> <a href="">5</a> <a href="">6</a> <a href="">7</a>
				<a href="">8</a> <a href="">9</a> <a href="">10</a> <a href="">&gt;</a>

			</div>

		</div>

	</div>	











</body>
</html>