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

        .wrap>div{width: 100%;}
        #qnaHeader {height: 40%;}
        #qnaContent {height: 55%;}
        #qnaFotter {height: 5%;}

        #qnaHeader>div {
            width: 100%;
            float: left;
        }

        #qnaHeader_1{height: 30%;}
        #qnaHeader_2{
            height: 70%;
            
        }

        #qnaContent>div {   
            float: left;
        }

        #qnaHeader_2>table{
            width: 100%;
            height: 100%;
            border-top : 2px solid yellowgreen;
        }

        #qnaHeader_2>table th {text-align: center;}
        #qnaHeader_2>table input { margin-left: 10px;}

        #qnaContent>textarea {
            width: 100%;
            height: 100%;
        }

    </style>

</head>
<body>

	<%@ include file="../common/menubar.jsp" %>

  <div class="wrap">
        <div id="qnaHeader">
            
            <div id="qnaHeader_1">
                PRODUCT Q&A
                <ul style="margin-bottom: 0; margin-top: 5px;">
                    <li>상품에 대한 문의를 남기는 공간입니다. 해당 게시판의 성격과 다른 글은 사전동의 없이 담당 게시판으로
                        이동될 수 있습니다.</li>
                    <li>배송관련, 주문(취소/교환/환불)관련 문의 및 요청사항은 마이컬리 내 1:1 문의에 남겨주세요.</li>
                </ul>

            </div>
            <br>
            <div id="qnaHeader_2" >
                <table  id="qnaTable">
                    <tr>
                        <th class="table-success" width="150">작성자</th>
                        <td>&nbsp; 작성자아이디</td>
                    </tr>
                    <tr>
                        <th class="table-success">이메일</th>
                        <td>&nbsp; 작성자 이메일</td>
                    </tr>
                    <tr>
                        <th class="table-success">핸드폰</th>
                        <td>&nbsp; 작성자 핸드폰 번호</td>
                    </tr>
                    <tr>
                        <th class="table-success">비밀글</th>
                        <td><input type="checkbox" name="secretYn" id="secretYn" ><label for="secretYn">비밀글</label></td>
                    </tr>
                    <tr>
                        <th class="table-success">제목</th>
                        <td>&nbsp; 문의내역 제목 맛이 이상하네요?</td>
                    </tr>
                </table>

            </div>
        </div>

        <div id="qnaContent">
            <br><br>
            <p name="qnaText">
                뜨고, 생명을 심장은 영원히 같이, 있다. 청춘의 뜨고, 
                커다란 역사를 청춘의
                방황하였으며, 우리는 교향악이다. 새 이는 같이,
                기쁘며, 현저하게 위하여, 남는 광야에서 청춘의 끓는다.
                얼마나 길을 주는 쓸쓸하랴? 예가 거선의 밥을 꽃이 우리는 군영과 눈이 것이다.
 
    
            </p>
            
        </div>

        <div id="qnaFotter" align="center" style="margin-top: 10px;">
            <button type="button" onclick="history.back();">뒤로가기</button>
        </div>

        
    </div>
    
    

</body>
</html>