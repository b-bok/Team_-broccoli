<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

    <style>

        div{
            /* border: 1px solid red; */
            box-sizing: border-box;    
        }

        .wrap {
            width: 1000px;
            height: 1200px;
            margin: auto;
            margin-top: 50px;
        }

        .wrap>div{width: 100%;}

        #header{height: 10%;}
        #searcbar{height: 15%; position: relative;}
        #searchSorting{height: 5%;}
        #content{height: 60%;}
        #fotter{height: 10%;}

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


        .thumbnail {
            border: 1px solid white;
            width: 220px;
            display:inline-block;
            margin: 10px;
        }

        .thumbnail:hover {
            cursor: pointer;
            opacity: 0.3;
        }

        #pagingBar {
            margin: auto;
            /* border: 1px solid black; */
            width: 250px;

        }

    </style>

</head>
<body>
<%@ include file="../common/menubar.jsp" %>
	<!-- 상품검색 페이지입니다.  -->
	
   <div class="wrap">

        <div id="header" align="center"><h1>상품검색</h1></div>

        <div id="searcbar">
            <hr>
            <form action="<%=broccoli %>/search.pb" id="searchbarForm" method="get">

            <div id="search_text">
                <input type="text" class="form-control form-control-sm" name="keyword">
            </div>
            
            <div id="search_btn">
                <button class="btn btn-secondary btn-sm" type="submit">
                    <i class="fas fa-search" style="font-size: 25px;"></i>
                </button>
            </div>
            
            </form>    
            
        </div>
        <hr>
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
          
            <div class="thumbnail" align="center">
                <img src="/jsp/resources/thumbnail_upfiles/실제서버에업로드할이름" width="200" height="200">
   
                    [몸에쏙쏙] 유기농 어린이 배도라지즙 2종 <br>
                    <span style="text-decoration: line-through; color: gray;">15,900원</span>
                    <span style="color: green;">--> 14,310원</span> <br>
                    <span style="font-size: 13px; font-weight: lighter; color: #666">달콤하게 시작하는 우리 아이 건강즙</span>
              
            </div>


            <div class="thumbnail" align="center">
                <img src="/jsp/resources/thumbnail_upfiles/실제서버에업로드할이름" width="200" height="200">
   
                    [몸에쏙쏙] 유기농 어린이 배도라지즙 2종 <br>
                    <span style="text-decoration: line-through; color: gray;">15,900원</span>
                    <span style="color: green;">--> 14,310원</span> <br>
                    <span style="font-size: 13px; font-weight: lighter; color: #666">달콤하게 시작하는 우리 아이 건강즙</span>
              
            </div>

            <div class="thumbnail" align="center">
                <img src="/jsp/resources/thumbnail_upfiles/실제서버에업로드할이름" width="200" height="200">
   
                    [몸에쏙쏙] 유기농 어린이 배도라지즙 2종 <br>
                    <span style="text-decoration: line-through; color: gray;">15,900원</span>
                    <span style="color: green;">--> 14,310원</span> <br>
                    <span style="font-size: 13px; font-weight: lighter; color: #666">달콤하게 시작하는 우리 아이 건강즙</span>
              
            </div>
            <div class="thumbnail" align="center">
                <img src="/jsp/resources/thumbnail_upfiles/실제서버에업로드할이름" width="200" height="200">
   
                    [몸에쏙쏙] 유기농 어린이 배도라지즙 2종 <br>
                    <span style="text-decoration: line-through; color: gray;">15,900원</span>
                    <span style="color: green;">--> 14,310원</span> <br>
                    <span style="font-size: 13px; font-weight: lighter; color: #666">달콤하게 시작하는 우리 아이 건강즙</span>
              
            </div>

            <div class="thumbnail" align="center">
                <img src="/jsp/resources/thumbnail_upfiles/실제서버에업로드할이름" width="200" height="200">
   
                    [몸에쏙쏙] 유기농 어린이 배도라지즙 2종 <br>
                    <span style="text-decoration: line-through; color: gray;">15,900원</span>
                    <span style="color: green;">--> 14,310원</span> <br>
                    <span style="font-size: 13px; font-weight: lighter; color: #666">달콤하게 시작하는 우리 아이 건강즙</span>
              
            </div>

            <div class="thumbnail" align="center">
                <img src="/jsp/resources/thumbnail_upfiles/실제서버에업로드할이름" width="200" height="200">
   
                    [몸에쏙쏙] 유기농 어린이 배도라지즙 2종 <br>
                    <span style="text-decoration: line-through; color: gray;">15,900원</span>
                    <span style="color: green;">--> 14,310원</span> <br>
                    <span style="font-size: 13px; font-weight: lighter; color: #666">달콤하게 시작하는 우리 아이 건강즙</span>
              
            </div>

            <div class="thumbnail" align="center">
                <img src="/jsp/resources/thumbnail_upfiles/실제서버에업로드할이름" width="200" height="200">
   
                    [몸에쏙쏙] 유기농 어린이 배도라지즙 2종 <br>
                    <span style="text-decoration: line-through; color: gray;">15,900원</span>
                    <span style="color: green;">--> 14,310원</span> <br>
                    <span style="font-size: 13px; font-weight: lighter; color: #666">달콤하게 시작하는 우리 아이 건강즙</span>
              
            </div>

            <div class="thumbnail" align="center">
                <img src="/jsp/resources/thumbnail_upfiles/실제서버에업로드할이름" width="200" height="200">
   
                    [몸에쏙쏙] 유기농 어린이 배도라지즙 2종 <br>
                    <span style="text-decoration: line-through; color: gray;">15,900원</span>
                    <span style="color: green;">--> 14,310원</span> <br>
                    <span style="font-size: 13px; font-weight: lighter; color: #666">달콤하게 시작하는 우리 아이 건강즙</span>
              
            </div>
        </div>
        <div id="fotter">
            <br><br>
            <div id="pagingBar" align="center">
                <ul class="pagination">
                    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                    <li class="page-item active"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item"><a class="page-link" href="#">Next</a></li>
                  </ul>
            </div>
            
        </div>


    </div>


</body>
</html>