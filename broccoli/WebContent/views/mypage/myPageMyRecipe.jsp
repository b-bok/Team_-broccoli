<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        div, form, input{
            box-sizing:border-box;
        }
        #navigator, #content_1>div #content_2>div {border:1px solid lightgray;}
        a{text-decoration: none; color:black; font-size:12px;}
        
        .wrap{width:1300px;height:2000px;margin:auto;}

        
        .wrap>div{width:100%;}
        #navigator{height:7.5%; margin:10px 0px;}
        #content{height:85%;}

        #navi{
            list-style-type: none;
            margin: 0;
            padding:0;
            height:100%;
            width:100%;
        }
        #navi>li{
            float:left;
            height:100%;
            width:25%;
            text-align:center;
            background:rgba(192, 190, 190, 0.301);
        }
        #navi a{
        
            font-size:16px;
            font-weight:600;
            color:rgba(56, 56, 100, 0.774);
            display: block;
            height:100%;
            line-height:140px;
        }
        #navi a:hover{color:rgb(13, 23, 77);}
        #navi a:hover{background:rgba(15, 153, 61, 0.445);}
       
        .menu{
            display:table-cell;
            height:30px;
            width:220px;
        }
        .menu a{
            text-decoration:none;
            color:black;
            font-weight:bold;
            display:block;
            width:100%;
            height:100%;
            font-size:20px;
            line-height:50px;
        }
        .menu a:hover{
            background:rgba(15, 153, 61, 0.445);
        }

        #content>div{height:100%; float:left;}
        #content_1{width:20%;}
        #content_2{width:80%;}
        #content_1>div{width:98%; height:100%
        
        }
        #content_2>div{width:100%; height:100%;}
        #p1{height:80%; padding:15px;}
        #p2{height:20%; text-align:center;}

        #topic{color:green;}
}
        
    </style>
</head>
<body>
<%@ include file="../common/menubar.jsp"%>
<br clear="both">

    <div class="wrap">
        <div id="navigator">
            <ul id="navi">
                <li><a href="<%= broccoli%>/myPageInformChangeDelete.my">내 정보</a></li>
                <li><a href="<%= broccoli%>/myPagePoint.my">적립금</a></li>
                <li><a href="<%= broccoli%>/myPagePick.my">찜상품</a></li>
                <li><a href="<%= broccoli%>/main.jsp">메인으로가기</a></li>
            </ul>
        </div>

        <div id="content">

            <div id="content_1">
                <div id="content_1_1">
                    <br>
                    <h1 id = "topic">마이페이지</h1>
                    <br>
                    <div class="menu"><a href="<%= broccoli%>/myPageMain.my">주문 조회/ 배송 조회</a></div><br>
                    <div class="menu"><a href="<%= broccoli%>/myPageReturnAndExchange.my">반품/ 교환 조회</a></div><br>
                    <div class="menu"><a href="<%= broccoli%>/myPagePick.my">찜상품 조회</a></div><br>
                    <div class="menu"><a href="<%= broccoli%>/myPageInformChangeDelete.my">내 정보 조회/ 수정/ 탈퇴</a></div><br>
                    <div class="menu"><a href="<%= broccoli%>/myPageDeliverRegister.my">배송지 등록</a></div><br>
                    <div class="menu"><a href="<%= broccoli%>/myPagePoint.my">적립금 조회</a></div><br>
                    <div class="menu"><a href="<%= broccoli%>/myPageMyQNA.my?currentPage=1">내 문의 조회</a></div><br>
                    <div class="menu"><a href="<%= broccoli%>/myPageMyReview.my">내 리뷰 조회</a></div><br>
                    <div class="menu"><a href="<%= broccoli%>/myPageMyRecipe.my">내 레시피 조회▶</a></div><br>
                    
                </div>
               
            </div>

            <div id="content_2">
                <div id="content_2_1">
                    
                    <br><br><h1>내 레시피 조회</h1>
                    
                    <hr>

                    
                </div>
            </div>
        </div>
    </div>

</body>
</html>