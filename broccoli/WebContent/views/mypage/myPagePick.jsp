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
#p1{height:80%; padding:15px;}
#p2{height:20%; text-align:center;}
#topic{color:green;}
#dateoption{
    float:right;
    margin-right:40px;
    margin-top:20px;}
#record{
    width:100%;
    text-align:center;}
td{
    border:none;
    height:150px;}
th{
    border:none;
    background-color:rgba(128, 128, 128, 0.301)}
.line1{
    border-bottom:3px solid rgba(27, 27, 27, 0.288);
    }
.line2{
    border-bottom:2px solid rgba(128, 128, 128, 0.288);}
    
.btn1{color:white;
    background-color:green;
    float:right;}
.btn2{
    color:green;
    background-color:white;
    border-color:green;
    float:right;}
.p_info{
    border:1px solid red;
    height:130px;;
    margin-top:10px;
    margin-bottom:10px;
    margin-right:40px;
    margin-left:40px;}
.p_detail{color:gray;}
.p_detail a:hover{color:green;}

    
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
                    <div class="menu"><a href="<%= broccoli%>/myPagePick.my">찜상품 조회▶</a></div><br>
                    <div class="menu"><a href="<%= broccoli%>/myPageInformChangeDelete.my">내 정보 조회/ 수정/ 탈퇴</a></div><br>
                    <div class="menu"><a href="<%= broccoli%>/myPageDeliverRegister.my">배송지 등록</a></div><br>
                    <div class="menu"><a href="<%= broccoli%>/myPagePoint.my">적립금 조회</a></div><br>
                    <div class="menu"><a href="<%= broccoli%>/myPageMyQNA.my?currentPage=1">내 문의 조회</a></div><br>
                    <div class="menu"><a href="<%= broccoli%>/myPageMyReview.my">내 리뷰 조회</a></div><br>
                    <div class="menu"><a href="<%= broccoli%>/myPageMyRecipe.my">내 레시피 조회</a></div><br>
            
           
        </div>

        <div id="content_2" style="border:1px ">
       <h1>찜상품 조회</h1>
       <select id="dateoption">
           <option>전체기간</option>
           <option>2020년 </option>
           <option>2019년 </option>
           <option>2018년 </option>
       </select>

        <hr style="background-color:rgba(128, 128, 128, 0.301); height:3px; border:none"> 
        <br>
        <div id="recordlist" style="height:700px;">
            <table id="record">
                <thead>
                    <tr height="50">
                        <th class="line1" width=10%>전체선택
                            <input type= "checkbox" style="float:right; margin-right:20px; margin-top:5px;">
                           </th>
                        <th class="line1" width=30%>이미지</th>
                        <th class="line1" width=40%>상품정보</th>
                        <th class="line1" width=30%></th>
                       
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="line2" >
                            <input type= "checkbox" style="float:right; margin-right:20px; margin-top:5px;">
                           </td>
                        <td class="line2"><div class="p_info"><div class="p_info_"></div></td>
                        <td class="line2"><a href="">제목입니다1</a></td>
                        <td class="line2"><a class="p_detail" href="">상세정보</a></td>
                        
                       </td>
                    </tr>
                    <tr>
                        <td class="line2">
                            <input type= "checkbox" style="float:right; margin-right:20px; margin-top:5px;">
                           </td>
                        <td class="line2"><div class="p_info"><div class="p_info_"></td>
                        <td class="line2"><a href="">제목입니다2</a></td>
                        <td class="line2"><a class="p_detail" href="">상세정보</a></td>
                       
                        
                       </td>
                    </tr>
                    <tr>
                        <td class="line2">
                            <input type= "checkbox" style="float:right; margin-right:20px; margin-top:5px;">
                           </td>
                        <td class="line2"><div class="p_info"><div class="p_info_"></td>
                        <td class="line2"><a href="">제목입니다3</a></td>
                        <td class="line2"><a class="p_detail" href="">상세정보</a></td>
                        
                        
                       </td>
                    </tr>
                 </tbody>
            </table>
            <button type="button" class="btn1" onclick="location.href=''">선택상품 장바구니</button>
            <button type="button" class="btn2" >선택삭제</button>
            
          
          
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
    
</div>
</body>
</html>

    
