<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

   <style>
      .wrap {
          /* background: wheat; */
          width: 800px;
          margin: auto;
          margin-top: 100px;
      }
      .reviewHead li {
          font-size: small;
      }
      
      
    </style>

</head>
<body>

   <!-- 제품상세페이지에 들어가는 상품리뷰 게시판입니다. -->

    <!-- 메뉴바 넣기 -->
	<%@ include file="../common/reviewMenubar.jsp" %>

    <div class="wrap">
    
    <div id="reiveSortingSelect" align="right">
        
    <select name="reviewSort" id="reviewSort">

        <option value="lastPost" selected>최근등록 순</option>
        <option value="moreLike">좋아요 순</option>
        <option value="moreView">조회 순</option>

    </select>

    </div>

    <br>

    <div class="reviewHead">
    <h5>PRODUCT REVIEW</h5>
    <ul>
        <li>
            상품에 대한 문의를 남기는 공간입니다. 해당 게시판의 성격과 다른 글은 사전동의 없이 담당 게시판으로 이동될 수 있습니다.
        </li>
        <li>
            배송관련, 주문(취소/교환/환불)관련 문의 및 요청사항은 마이컬리 내 1:1 문의에 남겨주세요.
        </li>
    </ul>
    </div>

    <div class="reviewBoard">
        <table class="table table-hover">
            <thead>
            <tr>
                <th>번호</th>
                <th>고객만족도</th>
                <th>제목</th>
                <th>작성자</th>
                <th>작성일</th>
                <th>좋아요</th>
                <th>조회</th>
                <th>신고하기</th>
            </tr>
            </thead>

            <tbody>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td><a href="">신고하기</a></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td><a href="">신고하기</a></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td><a href="">신고하기</a></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td><a href="">신고하기</a></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td><a href="">신고하기</a></td>
            </tr>
            </tbody>

        </table>


    </div>

    <div class="goReviewForm" align="right">
        
        <button type="button" onclick="reviewForm();">후기쓰기</button>
        
    </div>

    <br>

    </div>
	
</body>
</html>