<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    div{ box-sizing:border-box;}
    #navigator, #content_1>div #content_2>div
    a{text-decoration: none; color:black}
    .wrap{width:1300px;height:1800px;margin:auto;
        }
    .wrap>div{width:100%;
        }
    #navigator{height:7.5%; margin:10px 0px;
        }
    #content{height:80%;
        
    
        }

    #navi{
        list-style-type: none;
        margin: 0;
        padding:0;
        height:100%;
        width:100%;
        ;
    }
    #navi>li{
        float:left;
        height:100%;
        width:25%;
        text-align:center;
        background:rgba(192, 190, 190, 0.301);
        ;
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
        weight:100%;
    }
    .menu a{
        text-decoration:none;
        color:black;
        font-weight:bold;
        display:block;
        width:230px;
        height:100%;
        font-size:20px;
        line-height:50px;
    }
    .menu a:hover{
        background:rgba(15, 153, 61, 0.445);
        display:block;
    }
    #content>div{height:100%; float:left;
        }
    #content_1{width:20%;
        }
    #content_2{width:80%;
        }
    #content_1>div{width:98%; height:100%;
        }
    #content_2>div{width:100%; height:100%;
        }
    #topic{color:green;
        }
    .productname{
        padding:0px;
        height:25px;
        margin-left:10px;
        width:500px;
        width:50%;
        display:inline-block;
        color:black;
        font-weight:bold;
    }
    .product{
        padding:0px;
        height:140px;
        margin-bottom:0px;
        border:3px solid rgba(128, 128, 128, 0.473);
    }
    
    .detail{
        height:25px;
        
        width:30%;
        width:100px;
        margin-left:280px;
        display:inline-block;}
    .detail a{
        font-size:13px;
        color:gray;
    }
    .detail a:hover{
        
     text-decoration:none;
     color:green;
    }
    .date{
        
        height:100%;
        height:170px;
        margin-bottom:0px;
        margin-top:50px;
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
        width:810px;
    }
    .line2{
        background-color:rgba(128, 128, 128, 0.301); 
        height:3px;
         border:none;
         margin:2px;}

    .product>div{width:100%;
    }
    .product1{height:20%;
      }
    .product2{height:79%;
       
      }
    
    .product2_1{width:25%;height:95%;text-align: center;
     padding:0px;
     padding-left:15px;
     padding-right:15px;
     line-height:5.5;
     border:1px solid red; 
      float:left;
     margin-top:4px;
     margin-left:5px;
     margin-right:3px;}

     .product2_2{width:50%;height:95%;
        
     line-height:1;
       float:left;
     margin-top:3px;
     margin-right:3px;}
     .product2_3{width:23%;height:59%;text-align: center;
        
        line-height:4;
       float:left;
     margin-top:3px;
     margin-bottom:3px;
     padding:0px;
     }
     .product2_4{width:23%;height:33%;
        float:left;
     
     padding:0px;}
    
    .orderno{
        
        margin-top:20px;
        margin-left:10px;
        font-size:small;
       
        display:inline-block;
        height:25px;}
    .price{
        
        
        margin-left:10px;
        font-size:small;
       
        display:inline-block;
        height:25px;
        }
        .status{
           
        margin-left:10px;
        font-size:small;
       
        display:inline-block;
        height:25px;
        display:inline-block;
        }
     .main{color:rgb(17, 187, 17);}
    
    .product2_3>div{height:30px;}

    .line3{
        width:835px;
        margin-left:50px;
        margin-top:1px;
        height:2px;
        background-color:rgba(128, 128, 128, 0.137);
    }
   
    .name1{
        margin-left:60px;
        margin-top:30px;}
        
    .table1{
        color:gray;
        width:600px;
        height:210px;
        margin-left:60px;
        margin-bottom:15px;
       
    }
    .table2{
        color:gray;
        width:600px;
        height:210px;
        margin-left:60px;
        margin-bottom:15px;
        
    }.table3{
        color:gray;
        width:600px;
        height:210px;
        margin-left:60px;
        margin-bottom:15px;
    }
    
    
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
                <div class="menu"><a href="<%= broccoli%>/myPageMain.my">주문 조회/ 배송 조회▶</a></div><br>
                <div class="menu"><a href="<%= broccoli%>/myPageReturnAndExchange.my">반품/ 교환 조회</a></div><br>
                <div class="menu"><a href="<%= broccoli%>/myPagePick.my">찜상품 조회</a></div><br>
                <div class="menu"><a href="<%= broccoli%>/myPageInformChangeDelete.my">내 정보 조회/ 수정/ 탈퇴</a></div><br>
                <div class="menu"><a href="<%= broccoli%>/myPageDeliverRegister.my">배송지 등록</a></div><br>
                <div class="menu"><a href="<%= broccoli%>/myPagePoint.my">적립금 조회</a></div><br>
                <div class="menu"><a href="<%= broccoli%>/myPageMyQNA.my?currentPage=1">내 문의 조회</a></div><br>
                <div class="menu"><a href="<%= broccoli%>/myPageMyReview.my">내 리뷰 조회</a></div><br>
                <div class="menu"><a href="<%= broccoli%>/myPageMyRecipe.my">내 레시피 조회</a></div><br>


            
           
        </div>

        <div id="content_2" >
       <h1>주문/ 배소 조회  > 상세조회</h1>
       <select id="dateoption">
           <option>전체기간</option>
           <option>2020년 </option>
           <option>2019년 </option>
           <option>2018년 </option>
       </select>

        <hr class="line2"> 
         
        
        <div id="productlist" style=" height:900px">
          
          <div class="date">2020.11.02
            <div class="product">
                <div class="product1"><div class="productname" >브로콜리</div><div class="detail"><a href="<%= broccoli%>/OrderDetailPage.my">상세조회 ></a></div><hr class="line"></div>
                <div class="product2">
                    <div class="product2_1">사진</div>
                    <div class="product2_2">
                        <h7 class="orderno">주문번호 123456789</h7><br>
                        <h7 class="price">결제금액 13,000원</h7><br>
                        <h7 class="status">주문상태 <h7 class="main">배송완료</h7></h7>
                        
                    </div>
                    <div class="product2_3"> 
                        
                    </div>
                    <div class="product2_4">
                        
                    </div>
                </div>
            </div>
          </div>
        <div class="pay-info">
            <h6 class="name1">결제정보</h6>
            <hr class="line3">
            <table class="table1">
                <tr>
                    <td>총 주문금액</td><td>13,500원</td>
                </tr>
                <tr>
                    <td>적립금 사용</td><td>500포인트</td>
                </tr>
                <tr>
                    <td>배송비</td><td>0원</td>
                </tr>
                <tr>
                    <td>결제금액</td><td>13,000원</td>
                </tr>
                <tr>
                    <td>결제방법</td><td>신용카드</td>
                </tr>
             </table>
             <hr class="line3">
        </div>
        <div class="order-info">
            <h6 class="name1">주문정보</h6>
            <hr class="line3">
            <table class="table2">
                <tr>
                    <td>주문번호</td><td>123456789</td>
                </tr>
                <tr>
                    <td>주문자명</td><td>홍길동</td>
                </tr>
                <tr>
                    <td>보내는분</td><td>홍길동</td>
                </tr>
                <tr>
                    <td>결제날짜</td><td>2020.11.02</td>
                </tr>
                <tr>
                    <td>주문처리상태</td><td>배송완료</td>
                </tr>
            </table>
            <hr class="line3">
        </div>
        <div class="deliver-info">
            <h6 class="name1">배송정보</h6>
            <hr class="line3">
            <table class="table3">
                <tr>
                    <td>받는분</td><td>홍길동</td>
                </tr>
                <tr>
                    <td>받는분휴대폰</td><td>01065486322</td>
                </tr>
                <tr>
                    <td>우편번호</td><td>12345</td>
                </tr>
                
                <tr>
                    <td>주소</td><td>서울시 신림동</td>
                </tr>
                <tr>
                    <td>받으실장소</td><td>문앞</td>
                </tr>
                
            </table>
            <hr class="line3">
       
       
            
        </div>
       
        
        
    </div>
    
    
</div>
<%@ include file="../common/footer.jsp"%>
</body>
</html>


    
