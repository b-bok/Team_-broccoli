<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    div{ box-sizing:border-box;}
    #navigator, #content_1>div #content_2>div {border:1px solid lightgray;}
    a{text-decoration: none; color:black}
    .wrap{width:1300px;height:1800px;margin:auto;}
    .wrap>div{width:100%;}
    #navigator{height:7.5%; margin:10px 0px;}
    #content{height:80%;}

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
    #navi a:hover{color:rgb(13, 23, 77);
        background:rgba(15, 153, 61, 0.445);}
   
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
        display:block;
    }
    #content>div{height:100%; float:left;}
    #content_1{width:20%;}
    #content_2{width:80%;}
    #content_1>div{width:98%; height:100%}
    #content_2>div{width:100%; height:100%;}
    #topic{color:green;}
    .productname{
        height:25px;
        margin-left:10px;
        
        width:500px;
        width:50%;
        display:inline-block;
        color:black;
    }
    .product{
        height:140px;
        margin-top:px;
        border:3px solid rgba(128, 128, 128, 0.473);
    }
    .btn{float:right; margin-right:10px; margin-top:30px;}
    .detail{
        height:25px;
        
        width:30%;
        width:100px;
        margin-left:280px;
        display:inline-block;}
    .detail a{
        color:gray;
    }
    .detail a:hover{
     text-decoration:none;
     color:green;
    }
    .date{
        height:100%;
        height:170px;
        
        margin-top:15px;
        margin-left:50px;
        margin-right:150px;
        color:gray;
    }
    #dateoption{
        float:right;
        margin-right:40px;
        margin-top:20px
    }
    .line{
        margin-top:0;
        background-color: rgba(128, 128, 128, 0.11);
        height:2px;
        width:800px;
    }
    .product>div{width:100%;}
    .product1{height:20%;
      }
    .product2{height:80%;
      }
    
    .product2_1{width:25%;height:95%;text-align: center;
        line-height:5.5;
       float:left;
     margin-top:3px;
     margin-left:5px;
     margin-right:3px;}
     .product2_2{width:50%;height:95%; text-align: center;
     line-height:5.5;
       float:left;
     margin-top:3px;
     margin-right:3px;}
     .product2_3{width:23%;height:95%;text-align: center;
        line-height:5.5;
       float:left;
     margin-top:3px;}
    
    
    
    
</style>
</head>
<body>
<%@ include file="../common/menubar.jsp"%>
<br clear="both">

<div class="wrap">
    <div id="navigator">
        <ul id="navi">
           <li><a href="<%= broccoli%>/myPageMain.my">내 정보</a></li>
            <li><a href="<%= broccoli%>/myPagePoint.my">적립금</a></li>
            <li><a href="<%= broccoli%>/myPagePick.my">찜상품</a></li>
            <li><a href="">장바구니</a></li>
        </ul>
    </div>

    <div id="content">

        <div id="content_1">
                <br>
                <h1 id = "topic">마이페이지</h1>
                <br>
               <div class="menu"><a href="<%= broccoli%>/myPageMain.my">주문 조회/ 배송 조회</a></div><br>
                <div class="menu"><a href="<%= broccoli%>/myPageReturnAndExchange.my">반품/ 교환 조회</a></div><br>
                <div class="menu"><a href="<%= broccoli%>/myPagePick.my">찜상품 조회</a></div><br>
                <div class="menu"><a href="<%= broccoli%>/myPageInformChangeDelete.my">내 정보 조회/ 수정/ 탈퇴</a></div><br>
                <div class="menu"><a href="<%= broccoli%>/myPageDeliverRegister.my">배송지 등록</a></div><br>
                <div class="menu"><a href="<%= broccoli%>/myPagePoint.my">적립금 조회</a></div><br>
                <div class="menu"><a href="<%= broccoli%>/myPageMyQNA.my">내 문의 조회</a></div><br>
                <div class="menu"><a href="<%= broccoli%>/myPageMyReview.my">내 리뷰 조회</a></div><br>
                <div class="menu"><a href="<%= broccoli%>/myPageMyRecipe.my">내 레시피 조회▶</a></div><br>
            
           
        </div>

        <div id="content_2" ">
       <h1>내 레시피 조회 > 레시피 가능한 상품 목록</h1>
       <select id="dateoption">
           <option>전체기간</option>
           <option>2020년 </option>
           <option>2019년 </option>
           <option>2018년 </option>
       </select>

        <hr style="background-color:rgba(128, 128, 128, 0.301); height:3px; border:none"> 
        <br>
        <div id="productlist" style=" height:800px">
          
          <div class="date">2020.11.02
            <div class="product">
                <div class="product1"><div class="productname" >브로콜리</div><div class="detail"><a href="">상세조회 ></a></div><hr class="line"></div>
                <div class="product2">
                    <div class="product2_1">사진</div>
                    <div class="product2_2">주문번호 / 결제금액</div>
                    <div class="product2_3"> <button type="button"class="btn btn-outline-success">레시피작성하기</button></div>
                </div>
            </div>
          </div>
            
          <div class="date">2020.10.02
            <div class="product">
                <div class="product1"><div class="productname" >브로콜리</div><div class="detail"><a href="">상세조회 ></a></div><hr class="line"></div>
                <div class="product2">
                    <div class="product2_1">사진</div>
                    <div class="product2_2">주문번호 / 결제금액</div>
                    <div class="product2_3"> <button type="button"class="btn btn-outline-success">레시피작성하기</button></div>
                </div>
            </div>
        </div>
        <div class="date">2020.09.02
            <div class="product">
                <div class="product1"><div class="productname" >브로콜리</div><div class="detail"><a href="">상세조회 ></a></div><hr class="line"></div>
                <div class="product2">
                    <div class="product2_1">사진</div>
                    <div class="product2_2">주문번호 / 결제금액</div>
                    <div class="product2_3"> <button type="button"class="btn btn-outline-success">레시피작성하기</button></div>
                </div>
            </div>
        </div>
            
        <div class="date">2020.08.02
            <div class="product">
                <div class="product1"><div class="productname" >브로콜리</div><div class="detail"><a href="">상세조회 ></a></div><hr class="line"></div>
                <div class="product2">
                    <div class="product2_1">사진</div>
                    <div class="product2_2">주문번호 / 결제금액</div>
                    <div class="product2_3"> <button type="button"class="btn btn-outline-success">레시피작성하기</button></div>
                </div>
            </div>
        </div>
        </div>
        <div class="container">
            <ul class="pagination justify-content-center">
              <li class="page-item"><a class="page-link" href="#">이전</a></li>
              <li class="page-item active"><a class="page-link" href="#">1</a></li>
              <li class="page-item "><a class="page-link" href="#">2</a></li>
              <li class="page-item"><a class="page-link" href="#">3</a></li>
              <li class="page-item"><a class="page-link" href="#">다음</a></li>
            </ul>
        </div>
            
        </div>
        
    </div>
    
</div>
</body>
</html>


    
