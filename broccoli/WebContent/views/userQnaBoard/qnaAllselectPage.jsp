<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

    


<style>
div {
/* border: 1px solid red; */
box-sizing: border-box;
}

.wrap {
width: 1000px;
height: 800px;
margin: auto;
margin-top: 50px;
}

.wrap>div {
width: 100%;
float: left;
}

#qnaBoardSorting {
height: 5%;
margin-top: 5px;
}

#qnaBoardBrief {
height: 10%;
}

#qnaBoard {
height: 60%;

}

#qnaFotter {
height: 10%;
}

#qnaSearchbar {height: 13%;}

#qnaSearchbar{width: 100%;} 

#searchbar{
    margin-left: 520px;
    margin-top: 30px;
}

#qnaFotter>div {
width: 100%;
float: left;
}

#qnaSort {
margin-top: 5px;
}

#qnaForm, #qnaPagingBar {
height: 50%;
margin-top: 5px;
}
</style>


</head>
<body>

<%@ include file="../common/menubar.jsp"%>

	<div class="wrap">


		<div id="qnaBoardSorting" align="right">

			<select name="qnaSort" id="qnaSort">

				<option value="lastPost" selected>최근등록 순</option>
				<option value="moreLike">좋아요 순</option>
				<option value="moreView">조회 순</option>

			</select>

		</div>

		<div id="qnaBoardBrief">

			<h5>PRODUCT Q&A</h5>

			<ul>
				<li>상품에 대한 문의를 남기는 공간입니다. 해당 게시판의 성격과 다른 글은 사전동의 없이 담당 게시판으로
					이동될 수 있습니다.</li>
				<li>배송관련, 주문(취소/교환/환불)관련 문의 및 요청사항은 마이컬리 내 1:1 문의에 남겨주세요.</li>
			</ul>
		</div>

		<div id="qnaBoard" >

			<a href="">전체보기</a> <a href="">포토 리뷰</a> <br>



			<table class="table table-hover" id="qnaTable">
				<thead align="center">
					<tr>
                        <th>번호</th>
                        <th>상품명</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
					</tr>
				</thead>

				<tbody align="center">
					<tr>
                        <td>1</td>
                        <td>브로콜리</td>
						<td>제목입니다1</td>
						<td>작성자아이디</td>
						<td>2020-10-30</td>
					</tr>
					<tr>
                        <td>2</td>
                        <td>브로콜리</td>
						<td>제목입니다1</td>
						<td>작성자아이디</td>
						<td>2020-10-30</td>
					</tr>
					<tr>
                        <td>3</td>
                        <td>브로콜리</td>
						<td>제목입니다1</td>
						<td>작성자아이디</td>
						<td>2020-10-30</td>
					</tr>
					<tr>
                        <td>4</td>
                        <td>브로콜리</td>
						<td>제목입니다1</td>
						<td>작성자아이디</td>
						<td>2020-10-30</td>
					</tr>
					<tr>
                        <td>5</td>
                        <td>브로콜리</td>
						<td>제목입니다1</td>
						<td>작성자아이디</td>
						<td>2020-10-30</td>
					</tr>

					<tr>
                        <td>6</td>
                        <td>브로콜리</td>
						<td>제목입니다1</td>
						<td>작성자아이디</td>
						<td>2020-10-30</td>
					</tr>

					<tr>
                        <td>7</td>
                        <td>브로콜리</td>
						<td>제목입니다1</td>
						<td>작성자아이디</td>
						<td>2020-10-30</td>
					</tr>

					<tr>
                        <td>8</td>
                        <td>브로콜리</td>
						<td>제목입니다1</td>
						<td>작성자아이디</td>
						<td>2020-10-30</td>
					</tr>
				</tbody>

			</table>


		</div>

		<div id="fotter">

			<div id="qnaForm" align="right">
				<a href="<%=broccoli%>/enroll.qp" class="btn btn-success btn-sm">문의하기</a>
			</div>

			<div id="qnaPagingBar" align="center" style="width: 250px; margin-left: 360px;">
				<ul class="pagination">
					<li class="page-item"><a class="page-link" href="#">Previous</a></li>
					<li class="page-item"><a class="page-link" href="#">1</a></li>
					<li class="page-item active"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item"><a class="page-link" href="#">Next</a></li>
				  </ul>
			</div>

		</div>

        <div id="qnaSearchbar" >
            <form class="form-inline" action="★" method="GET">


            <div id="searchbar">
            
                <input name="search" class="form-control form-control-sm"
                    type="text" size="20px" placeholder="검색어를 입력하세요">

                <button class="btn btn-secondary btn-sm" type="submit">
                    <i class="fas fa-search" style="font-size: 20px;"></i>
                </button>

                &nbsp;&nbsp;

                <select name="searchList" id="searchList">
                    <option value="title">제목</option>
                    <option value="writer">작성자</option>
                    <option value="pName">상품명</option>
                    <option value="normal" selected>일반</option>
                </select>

                &nbsp;&nbsp;

                <select name="categoryFirst" id="categoryFirst">
                    <option value="firstC" selected>1차카테고리분류</option>
                    <option value="vegetable">채소</option>
                    <option value="fruit">과일</option>
                    <option value="fish">수산</option>
                    <option value="meat">정육</option>
                </select>

            </div>
            </form>
        </div>

	</div>

<%@ include file="../common/footer.jsp"%>
</body>
</html>