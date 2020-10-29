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

        #status{
            text-align:center;
        }

        
    </style>
</head>
<body>

<%@ include file="../common/menubar.jsp"%>
   
   

    <br clear="both">

    <div class="wrap">
        <div id="navigator">
            <ul id="navi">
                <li><a href="">내 정보</a></li>
                <li><a href="">적립금</a></li>
                <li><a href="">찜상품</a></li>
                <li><a href="">장바구니</a></li>
            </ul>
        </div>

        <div id="content">

            <div id="content_1">
                <div id="content_1_1">
                    <br>
                    <h1 id = "topic">마이페이지</h1>
                    <br>
                    <div class="menu"><a href="">주문 조회/ 배송 조회▶</a></div><br>
                    <div class="menu"><a href="">반품/ 교환 조회</a></div><br>
                    <div class="menu"><a href="">찜상품 조회</a></div><br>
                    <div class="menu"><a href="">내 정보 조회/ 수정/ 탈퇴</a></div><br>
                    <div class="menu"><a href="">배송지 등록</a></div><br>
                    <div class="menu"><a href="">적립금 조회</a></div><br>
                    <div class="menu"><a href="">내 문의 조회</a></div><br>
                    <div class="menu"><a href="">내 리뷰 조회</a></div><br>
                    <div class="menu"><a href="">내 레시피 조회</a></div>
                </div>
               
            </div>

            <div id="content_2">
                <div id="content_2_1">
                    
                    <br><br><h1>주문 조회/ 배송 조회</h1>
                    
                    <hr>

                    <br><h2 id="status">주문하신 상품이 없습니다.</h2> 

                    <br><hr>


                    
                </div>
            </div>
        </div>
    </div>

</body>
</html>