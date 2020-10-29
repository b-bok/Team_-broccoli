<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

 <style>

        div{
            border: 1px solid red;
            box-sizing: border-box;    
        }

        .wrap {
            width: 1000px;
            height: 800px;
            margin: auto;
        }

        .wrap>div{width: 100%;}

        #header{height: 15%;}
        #searcbar{height: 15%; position: relative;}
        #searchSorting{height: 5%;}
        #content{height: 60%;}
        #fotter{height: 5%;}

        #searchbarForm{

            width: 80%;
            height: 20%;
            margin: auto;
            position: absolute;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;

        }

        #searchbarForm>div{height: 100%; float: left;}
        #search_text{width: 85%;}
        #search_btn{width: 15%;}

        #searchbarForm input {width: 100%; height: 100%;}


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
<%@ include file="../common/menubar.jsp" %>
	<!-- 상품검색 페이지입니다.  -->
	
    <div class="wrap">

        <div id="header">상품검색</div>

        <div id="searcbar">

            <form action="" id="searchbarForm">

            <div id="search_text">
                <input type="text" name="keyword">
            </div>
            
            <div id="search_btn">
                <input type="submit" value="검색"></input>
            </div>

            </form>    

        </div>

        <div id="searchSorting">
            총 68개의 상품이 검색되었습니다.

            <form action="">
            <input type="radio" name="searchSorting" id="standard" value="standard"><label for="standard">기본</label>
            <input type="radio" name="searchSorting" id="lowPrice" value="lowPrice"><label for="lowPrice">낮은가격순</label> 
            <input type="radio" name="searchSorting" id="highPrice" value="highPrice"><label for="highPrice">높은가격순</label>
            <input type="radio" name="searchSorting" id="bestRanking" value="bestRanking"><label for="bestRanking">판매량순</label>
            <input type="radio" name="searchSorting" id="newProduct" value="newProduct"><label for="newProduct">신상품순</label>
            </form>

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
            
            <div id="pagingBar" align="center">

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

        </div>


    </div>


</body>
</html>