<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "java.util.ArrayList, com.kh.notice.model.vo.Notice" %>
<%
	ArrayList<Notice> list = (ArrayList<Notice>)request.getAttribute("list");
 %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet"
href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet"
href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
crossorigin="anonymous">
</head>
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
    
    <div class="wrap">

        <!-- 타이틀 명입니다. -->
        <div id="titleEx">
            <pre><b>공지사항</b></pre> 
            <p>브로콜리의 새로운 소식과 유용한 정보들을 이곳에서 확인하세요 </p>
        </div>

		<!-- 좌측 버튼태그 (경로) -->
		<div class="btn-group-vertical" id="btn-group">
			<a href="" class="btn btn-outline-primary btn-lg">공지사항</a>
			<a href="" class="btn btn-outline-primary btn-lg">1:1문의</a>
			<a href="" class="btn btn-outline-primary btn-lg">자주하는 질문</a>
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
			
			
			<%if(list.isEmpty()) { %>
			<tr>
				<td> 공지사항이 존재하지 않습니다.</td>
			</tr>
			<%}else { %>
			
	
			<%for(Notice n : list) { %>
				<tbody align="center">
					<tr>
						<td>안녕</td>
						<td>나는</td>
                        <td>2020-10-30</td>
                        <td>10</td>
					</tr>
				<%} %>
				
			<%} %>	
				</tbody>

			</table>


		</div>

		<div id="fotter">

			<div id="searchForm" align="left">

                <form action ="" method ="post">

                    * 검색 &nbsp; &nbsp; 

                    <input type="checkbox" id="checkbox" value=""> ID &nbsp; 
                    <input type="checkbox" id="checkbox" value=""> 제목

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