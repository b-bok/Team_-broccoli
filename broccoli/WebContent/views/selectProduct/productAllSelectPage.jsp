<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

   <style>
        div {box-sizing: border-box;}

        .wrap {
        	border: 1px solid red;
            width: 1000px;
            height: 800px;
            margin: auto;
            margin-top:50px;

        }

        .wrap>div{width: 100%; border: 1px solid red;}
        #header {height: 10%;}
        #content {height: 80%;}
        #fotter {height: 10%;}

        #header>div {
            width: 100%;
            float: left;
        }

        #header_1{height: 50%;}
        #header_2{height: 50%; margin-top: 10px;}

        #header>div>a {
            text-decoration: none;
            color: black;
            font-size:15px;
            border: 1px solid blue;
            display: block;
            display: table-cell;
            width: 150px;
        }

        #content_1, #content_2, #content_3 {width: 100%; float: left;}

        #content_1 {height: 34%;}
        #content_2 {height: 33%;}
        #content_3 {height: 33%;}

        #content_1>div{height: 100%;float: left;}    

        #content_1_1 {width: 34%;}
        #content_1_2 {width: 33%;}
        #content_1_3 {width: 33%;}

        #content_2>div{height: 100%;float: left;}    

        #content_2_1 {width: 34%;}
        #content_2_2 {width: 33%;}
        #content_2_3 {width: 33%;}

        #content_3>div{height: 100%;float: left;}    

        #content_3_1 {width: 34%;}
        #content_3_2 {width: 33%;}
        #content_3_3 {width: 33%;}

        .thumbnail {width: 100%; height: 70%; border: 1px solid blue;}
        .productName {height: 10%; border: 1px solid blue;}
        .productPrice {height: 10%; border: 1px solid blue;}
        .productBrief {height: 10%; border: 1px solid blue;}

    </style>

</head>
<body>
	
	<!-- 상품 전체 조회 페이지 입니다.  -->
	
	<%@ include file="../common/menubar.jsp" %>
 
    <div class="wrap">
        <div id="header">
            <div id="header_1"><h3>채소</h3></div>
            <div id="header_2">
                <a href="">전체보기</a>
                <a href="">쌈, 간편채소</a>
                <a href="">콩나물 버섯류</a>
                <a href="">시금치 부추</a>
            </div>
        </div>

        <div id="content">
            <div id="content_1">
                <div id="content_1_1">

                    <div class="thumbnail">제품 썸네일</div>
                    <div class="productName">제품명</div>
                    <div class="productPrice">제품가격</div>
                    <div class="productBrief">제품 간단 설명</div>

                </div>
                <div id="content_1_2">

                    <div class="thumbnail">제품 썸네일</div>
                    <div class="productName">제품명</div>
                    <div class="productPrice">제품가격</div>
                    <div class="productBrief">제품 간단 설명</div>

                </div>
                <div id="content_1_3">

                    <div class="thumbnail">제품 썸네일</div>
                    <div class="productName">제품명</div>
                    <div class="productPrice">제품가격</div>
                    <div class="productBrief">제품 간단 설명</div>

                </div>
            </div>
            <div id="content_2">
                <div id="content_2_1">

                    <div class="thumbnail">제품 썸네일</div>
                    <div class="productName">제품명</div>
                    <div class="productPrice">제품가격</div>
                    <div class="productBrief">제품 간단 설명</div>

                </div>
                <div id="content_2_2">

                    <div class="thumbnail">제품 썸네일</div>
                    <div class="productName">제품명</div>
                    <div class="productPrice">제품가격</div>
                    <div class="productBrief">제품 간단 설명</div>
                    
                </div>
                <div id="content_2_3">

                    <div class="thumbnail">제품 썸네일</div>
                    <div class="productName">제품명</div>
                    <div class="productPrice">제품가격</div>
                    <div class="productBrief">제품 간단 설명</div>

                </div>
            </div>
            <div id="content_3">
                <div id="content_3_1">

                    <div class="thumbnail">제품 썸네일</div>
                    <div class="productName">제품명</div>
                    <div class="productPrice">제품가격</div>
                    <div class="productBrief">제품 간단 설명</div>

                </div>
                <div id="content_3_2">

                    <div class="thumbnail">제품 썸네일</div>
                    <div class="productName">제품명</div>
                    <div class="productPrice">제품가격</div>
                    <div class="productBrief">제품 간단 설명</div>

                </div>
                <div id="content_3_3">

             <div class="thumbnail">제품 썸네일</div>
                    <div class="productName">제품명</div>
                    <div class="productPrice">제품가격</div>
                    <div class="productBrief">제품 간단 설명</div>

                </div>
            </div>
        </div>

        <div id="fotter">
            페이징바
        </div>
    </div>


</body>
</html>