<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous"></head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    


    <style>
      .wrap {
          /* background: wheat; */
          width: 1000px;
          margin: auto;
          margin-top: 100px;
      }
      .recipeHead li {
          font-size: small;
      }
      
      .pagingBar  a{

        color: black;
        margin: 10px;
        font-weight: bold;  
      }
      
    </style>

</head>
<body>

   <!-- 제품상세페이지에 들어가는 상품리뷰 게시판입니다. -->

    <!-- 메뉴바 넣기 -->
	<%@ include file="../common/reviewMenubar.jsp" %>

 
  <div class="wrap">
    
    <div id="recipeSortingSelect" align="right">
     <br>    
    <select name="recipeSort" id="recipeSort">

        <option value="lastPost" selected>최근등록 순</option>
        <option value="moreLike">좋아요 순</option>
        <option value="morerecipe">조회 순</option>

    </select>

    </div>

    <br><br>

    <div class="recipeHead">
    <h5>PRODUCT RECIPE</h5>
    <ul>
        <li>
            상품에 대한 레시피를 남기는 공간입니다. 해당 게시판의 성격과 다른 글은 사전동의 없이 담당 게시판으로 이동될 수 있습니다.
        </li>
        <li>
            배송관련, 주문(취소/교환/환불)관련 문의 및 요청사항은 마이컬리 내 1:1 문의에 남겨주세요.
        </li>
    </ul>
    </div>

    <div class="select-recipe">

        <a href="">전체보기</a> &nbsp;&nbsp;
        <a href="">포토레시피</a>
        <br>
    </div>

    <br>

    <div class="recipeBoard">
        <table class="table table-hover">
            <thead>
            <tr>
                <th>번호</th>
                <th>도움이돼요</th>
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
                <td>1</td>
                <td>
                    <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
                </td>
                <td>제목입니다1</td>
                <td>작성자아이디</td>
                <td>2020-10-30</td>
                <td><i class="fas fa-thumbs-up"></i></td>
                <td>500</td>
                <td><a href="">신고하기</a></td>
            </tr>
            <tr>
                <td>2</td>
                <td>
                    <i class="fas fa-star"></i><i class="fas fa-star"></i>
                </td>
                <td>제목입니다1</td>
                <td>작성자아이디</td>
                <td>2020-10-30</td>
                <td><i class="fas fa-thumbs-up"></i></td>
                <td>500</td>
                <td><a href="">신고하기</a></td>
            </tr>
            <tr>
                <td>3</td>
                <td>
                    <i class="fas fa-star"></i>
                </td>
                <td>제목입니다1</td>
                <td>작성자아이디</td>
                <td>2020-10-30</td>
                <td><i class="fas fa-thumbs-up"></i></td>
                <td>500</td>
                <td><a href="">신고하기</a></td>
            </tr>
            <tr>
                <td>4</td>
                <td>
                    <i class="fas fa-star"></i>
                </td>
                <td>제목입니다1</td>
                <td>작성자아이디</td>
                <td>2020-10-30</td>
                <td><i class="fas fa-thumbs-up"></i></td>
                <td>500</td>
                <td><a href="">신고하기</a></td>
            </tr>
            <tr>
                <td>5</td>
                <td>
                    <i class="fas fa-star"></i><i class="fas fa-star"></i>
                </td>
                <td>제목입니다1</td>
                <td>작성자아이디</td>
                <td>2020-10-30</td>
                <td><i class="fas fa-thumbs-up"></i></td>
                <td>500</td>
                <td><a href="">신고하기</a></td>
            </tr>
            </tbody>

        </table>


    </div>

    <div class="gorecipeForm" align="right">
        
        <button type="button" onclick="recipeForm();">레시피쓰기</button>
        
    </div>

    <br>

    </div>
    
        <div class="pagingBar" align="center">
        <a href="">&lt;</a>

        <a href="">1</a>
        <a href="">2</a>
        <a href="">3</a>
        <a href="">4</a>
        <a href="">5</a>
        <a href="">6</a>
        <a href="">7</a>
        <a href="">8</a>
        <a href="">9</a>
        <a href="">10</a>

        <a href="">&gt;</a>

    </div>
	
</body>
</html>