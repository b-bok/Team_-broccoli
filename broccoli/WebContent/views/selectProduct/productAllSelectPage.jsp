<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


    <style>
        div {
            
            box-sizing: border-box;
        }

        .wrap {
            width: 1000px;
            height: 800px;
            margin: auto;
            margin-top: 50px;
        }

        .wrap>div{width: 100%; 
        /* border: 1px solid red; */
        }
        #header {height: 10%;}
        #content {height: 80%;}
        #fotter {height: 10%;}

        #header>div {
            width: 100%;
            float: left;
           
        }

        #header_1{height: 50%; margin-top: 10px;}
        #header_2{height: 50%;}

        #header>div>a {
            text-decoration: none;
            color: black;
            font-size:15px;
            border: 1px solid blue;
            display: block;
            display: table-cell;
            width: 150px;
        }

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
	<!-- 상품 전체 조회 페이지 입니다.  -->

	<%@ include file="../common/menubar.jsp"%>

  
    <div class="wrap">
        <div id="header">
            <div id="header_1" align="center"><h1>전체</h1></div>

        </div>

        <hr>

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

    <script>



    </script>

</body>
</html>