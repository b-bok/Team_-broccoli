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
div {
border: 1px solid white;
box-sizing: border-box;
}

.wrap {
width: 1000px;
height: 800px;
margin: auto;
}

.wrap>div {
width: 100%;
float: left;
}

#qnaCategory {
height: 5%;
margin-top: 5px;
}

#Fotter {
height: 10%;
}

#Fotter>div {
width: 100%;
float: left;
}

#titleEx pre{
    float: left;
    font-size: x-large;
}
#titleEx p{
    float: left;
    margin-left: 30px;
    line-height: 250%;
}
#qna_SearchList, #qna_Keyword{
    margin-right: 10px;
    float:right;
    }
</style>

</head>
<body>

    <%@ include file="../common/Menubar.jsp"%>

    
    <!-- QNA페이지입니다.. -->
    
    <div class="wrap">

        <div id="titleEx">
            <pre><b>자주하는 질문</b></pre> 
            <p>고객님들이 가장 자주하시는 질문을 모았습니다.</p>
        </div>


		<div id="qnaCategory" align="left">

			<select name="qCategory" id="qCategory">

                <!-- Member, Payment, Cancel, Delivery  -->
                <option value="select" selected>선택</option>
				<option value="aboutM">회원 문의</option>
				<option value="aboutP">주문/결제</option>
                <option value="aboutC">취소/교환/환불</option>
                <option value="aboutD">배송문의</option>
			</select>

		</div>

        <!-- 게시판리스트 -->
		<div id="qnaListBoard">

			<table class="table table-hover" id="qnaeList" >
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
						<td>admin</td>
                        <td>2020-10-30</td>
                        <td>10</td>
					</tr>
					<tr>
						<td>1</td>
						<td>제목입니다1</td>
						<td>admin</td>
                        <td>2020-10-30</td>
                        <td>2</td>
					</tr>
					<tr>
						<td>1</td>
						<td>제목입니다1</td>
						<td>admin</td>
                        <td>2020-10-30</td>
                        <td>1</td>
					</tr>
					<tr>
						<td>1</td>
						<td>제목입니다1</td>
						<td>admin</td>
                        <td>2020-10-30</td>
                        <td>1</td>
					</tr>
					<tr>
						<td>1</td>
						<td>제목입니다1</td>
						<td>admin</td>
                        <td>2020-10-30</td>
                        <td>1</td>
					</tr>

					<tr>
						<td>1</td>
						<td>제목입니다1</td>
						<td>admin</td>
                        <td>2020-10-30</td>
                        <td>1</td>
					</tr>

					<tr>
						<td>1</td>
						<td>제목입니다1</td>
						<td>admin</td>
                        <td>2020-10-30</td>
                        <td>12</td>
					</tr>

					<tr>
						<td>1</td>
						<td>제목입니다1</td>
						<td>admin</td>
                        <td>2020-10-30</td>
                        <td>1</td>
					</tr>
				</tbody>

			</table>


		</div>

        <!-- 키워드검색 -->
		<div id="fotter">

			<div id="searchForm" align="left">

                <form action ="test" method ="get">

                    * 검색어

                    <input type="checkbox" id="checkbox" value> ID &nbsp 
                    <input type="checkbox" id="checkbox" value> 제목

                    <input type="text" name="keyword" id="qna_Keyword"> 
                    <input type="submit" value ="검색" name="qna_SearchList" id="qna_SearchList">
                    
                </form>
                 
			</div>
         <!--임시 페이징바-->
			<div id="pagingBar" align="center">

				<a href="">&lt;</a> <a href="">1</a> <a href="">2</a> <a href="">3</a>
				<a href="">4</a> <a href="">5</a> <a href="">6</a> <a href="">7</a>
				<a href="">8</a> <a href="">9</a> <a href="">10</a> <a href="">&gt;</a>

			</div>

		</div>

	</div>
    





</body>
</html>