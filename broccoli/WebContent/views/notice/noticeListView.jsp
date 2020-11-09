<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import = "java.util.ArrayList, com.kh.notice.model.vo.Notice" %>
<%
		ArrayList<Notice> list = (ArrayList<Notice>)request.getAttribute("list");
%>
	
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항 메인페이지</title>
    <link rel="stylesheet"
    href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet"
    href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
    integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
    crossorigin="anonymous">
    <script
    src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script
    src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script
    src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>


    <style>
div {box-sizing: border-box;}

.wrap {
width: 1000px;
height: 800px;
margin: auto;
margin-top: 50px;
}
.wrap>div {width: 80%;float:right;}

#footer {height: 10%;}

#footer>div {width: 100%;float: left;}

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
#gogaek{height:10%; padding-left:40px;}
body{font-size:18px;}
</style>
</head>
<body>

    <%@ include file="../common/menubar.jsp"%>
	
	

    <div class="wrap">

        <!-- 타이틀 명입니다. -->
        <div id="titleEx">
            <pre><b>공지사항</b></pre> 
            <p>브로콜리의 새로운 소식과 유용한 정보들을 이곳에서 확인하세요 </p>
        </div>
		<h3 align="left" id="gogaek"><b>고객센터</b></h3>
		<!-- 좌측 버튼태그 (경로) -->
		<div class="btn-group-vertical" id="btn-group">
			<a href="<%=broccoli%>/list.no" class="btn btn-outline-light text-dark">공지사항</a>
			<a href="<%=broccoli%>/list.faq" class="btn btn-outline-light text-dark">자주하는 질문</a>
			<a href="" class="btn btn-outline-light text-dark">1:1 문의</a>
		</div>
  
		<!-- 게시판 리스트 -->
		<div class="wrap2" id="noticeListBoard">
			
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
					<!-- 
                    <div align="center">
                        없음 페이지
					</div> -->
					<form action="list.no" method="post">
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
			</form>
			</table>


		</div>

		<div id="footer">

			<div id="searchForm" align="left">

                <form action ="test" method ="get">

                    * 검색 &nbsp; &nbsp; 

                    <input type="checkbox" id="checkbox"> ID &nbsp;
                    <input type="checkbox" id="checkbox"> 제목

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
	<%@ include file="../common/footer.jsp"%>
    
</body>
</html>