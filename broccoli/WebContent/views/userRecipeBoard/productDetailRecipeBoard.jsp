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

        div {
 
            box-sizing: border-box;
        }

        .wrap {
            width: 1000px;
            height: 800px;
            margin: auto;

        }

        .wrap>div{
            width: 100%;
            float: left;
        }


        #boardSorting{height: 5%;}
        #boardBrief{height: 10%;}
        #board{height: 60%;}
        #fotter{height: 10%;}

        #fotter>div{
            width: 100%;
            float: left;
        }

        #recipewSort {margin-top: 5px;}

        #recipeForm, #pagingBar {height: 50%;}

        #pagingBar{margin: 0;}

    </style>

</head>
<body>

	
	<!-- 상품상세페이지 레시피게시판입니다. -->
	
<div class="wrap">


    <%@ include file="../common/reviewMenubar.jsp"%>


    <div id="boardSorting" align="right">

        <select name="recipeSort" id="recipeSort">

            <option value="lastPost" selected>최근등록 순</option>
            <option value="moreLike">좋아요 순</option>
            <option value="moreView">조회 순</option>
    
        </select>

    </div>

    <div id="boardBrief">

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

    <div id="board">
        
        <a href="">전체보기</a>
        <a href="">포토 레시피</a> 
        
        <br>

        

         <table class="table table-hover" id="reviewTable">
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
                    <td>1</td>
                    <td><i class="fas fa-star"></i><i class="fas fa-star"></i><i
                        class="fas fa-star"></i><i class="fas fa-star"></i><i
                        class="fas fa-star"></i></td>
                    <td>제목입니다1</td>
                    <td>작성자아이디</td>
                    <td>2020-10-30</td>
                    <td><i class="fas fa-thumbs-up"></i></td>
                    <td>500</td>
                    <td><a data-toggle="modal" data-target="#myModal">신고하기</a></td>
                </tr>
                <tr>
                    <td>2</td>
                    <td><i class="fas fa-star"></i><i class="fas fa-star"></i></td>
                    <td>제목입니다1</td>
                    <td>작성자아이디</td>
                    <td>2020-10-30</td>
                    <td><i class="fas fa-thumbs-up"></i></td>
                    <td>500</td>
                    <td><a data-toggle="modal" data-target="#myModal">신고하기</a></td>
                </tr>
                <tr>
                    <td>3</td>
                    <td><i class="fas fa-star"></i></td>
                    <td>제목입니다1</td>
                    <td>작성자아이디</td>
                    <td>2020-10-30</td>
                    <td><i class="fas fa-thumbs-up"></i></td>
                    <td>500</td>
                    <td><a data-toggle="modal" data-target="#myModal">신고하기</a></td>
                </tr>
                <tr>
                    <td>4</td>
                    <td><i class="fas fa-star"></i></td>
                    <td>제목입니다1</td>
                    <td>작성자아이디</td>
                    <td>2020-10-30</td>
                    <td><i class="fas fa-thumbs-up"></i></td>
                    <td>500</td>
                    <td><a data-toggle="modal" data-target="#myModal">신고하기</a></td>
                </tr>
                <tr>
                    <td>5</td>
                    <td><i class="fas fa-star"></i><i class="fas fa-star"></i></td>
                    <td>제목입니다1</td>
                    <td>작성자아이디</td>
                    <td>2020-10-30</td>
                    <td><i class="fas fa-thumbs-up"></i></td>
                    <td>500</td>
                    <td><a data-toggle="modal" data-target="#myModal">신고하기</a></td>
                </tr>

                <tr>
                    <td>6</td>
                    <td><i class="fas fa-star"></i><i class="fas fa-star"></i></td>
                    <td>제목입니다1</td>
                    <td>작성자아이디</td>
                    <td>2020-10-30</td>
                    <td><i class="fas fa-thumbs-up"></i></td>
                    <td>500</td>
                    <td><a data-toggle="modal" data-target="#myModal">신고하기</a></td>
                </tr>

                <tr>
                    <td>7</td>
                    <td><i class="fas fa-star"></i><i class="fas fa-star"></i></td>
                    <td>제목입니다1</td>
                    <td>작성자아이디</td>
                    <td>2020-10-30</td>
                    <td><i class="fas fa-thumbs-up"></i></td>
                    <td>500</td>
                    <td><a data-toggle="modal" data-target="#myModal">신고하기</a></td>
                </tr>

                <tr>
                    <td>8</td>
                    <td><i class="fas fa-star"></i><i class="fas fa-star"></i></td>
                    <td>제목입니다1</td>
                    <td>작성자아이디</td>
                    <td>2020-10-30</td>
                    <td><i class="fas fa-thumbs-up"></i></td>
                    <td>500</td>
                    <td><a data-toggle="modal" data-target="#myModal">신고하기</a></td>
                </tr>
            </tbody>

        </table>
        

    </div>

    <div id="fotter">

        <div id="recipeForm" align="right">
            <button class="btn btn-success btn-sm">레시피 작성</button>
        </div>

       <br>

       <div id="pagingBar" align="center" style="width: 250px; margin-left: 360px;">
        <ul class="pagination">
            <li class="page-item"><a class="page-link" href="#">Previous</a></li>
            <li class="page-item"><a class="page-link" href="#">1</a></li>
            <li class="page-item active"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item"><a class="page-link" href="#">Next</a></li>
          </ul>
    </div>

    </div>

	<%@include file="../common/declarationModal.jsp" %>

</body>
</html>