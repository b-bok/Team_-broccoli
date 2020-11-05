<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="com.kh.mypage.model.vo.*, java.util.ArrayList" %>
<%
   MyPagePageInfo pi = (MyPagePageInfo)request.getAttribute("pi");
  ArrayList<MyQNA> list = (ArrayList<MyQNA>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
        div, form, input{
            box-sizing:border-box;}
            
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
            width:100%;}
            
        #navi>li{
            float:left;
            height:100%;
            width:25%;
            text-align:center;
            background:rgba(192, 190, 190, 0.301);}
            
        #navi a{
            font-size:16px;
            font-weight:600;
            color:rgba(56, 56, 100, 0.774);
            display: block;
            height:100%;
            line-height:140px;}
            
        #navi a:hover{color:rgb(13, 23, 77);}
        
        #navi a:hover{background:rgba(15, 153, 61, 0.445);}
       
        .menu{
            display:table-cell;
            height:30px;
            width:220px;}
            
        .menu a{
            text-decoration:none;
            color:black;
            font-weight:bold;
            display:block;
            width:100%;
            height:100%;
            font-size:20px;
            line-height:50px;}
            
        .menu a:hover{
            background:rgba(15, 153, 61, 0.445);}

        #content>div{height:100%; float:left;}
        
        #content_1{width:20%;}
        
        #content_2{width:80%;}
 
        #p1{height:80%; padding:15px;}
        
        #p2{height:20%; text-align:center;}

        #topic{color:green;}
        
        .myqna-area{
        border:1px solid white;
        text-align:center;
        width:100%;
        border-collapse:collapse;}
        
        .myqna-area tbody tr:hover{
        background:rgba(111, 114, 111, 0.062);
        cursor: pointer;}
        
        .paging-area a{
        text-decoration:none;
        color:white;
        margin:5px;}
        
        .myqna-area thead{
        background:rgba(29, 216, 29, 0.548);
        cursor: pointer;}
        
        #qnaenroll-button{float:right; 
        background-color:rgba(13, 175, 13, 0.788);
        border:none;}
        
        .container {
        height: 36px;
        margin: 200px 0;}

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
                    <div class="menu"><a href="<%= broccoli%>/myPageDeliverRegister.my">배송지 등록▶</a></div><br>
                    <div class="menu"><a href="<%= broccoli%>/myPagePoint.my">적립금 조회</a></div><br>
                    <div class="menu"><a href="<%= broccoli%>/myPageMyQNA.my?currentPage=1">내 문의 조회</a></div><br>
                    <div class="menu"><a href="<%= broccoli%>/myPageMyReview.my">내 리뷰 조회</a></div><br>
                    <div class="menu"><a href="<%= broccoli%>/myPageMyRecipe.my">내 레시피 조회</a></div>
            </div>

            <div id="content_2">
                 <br><br><h1>내 문의 조회</h1>
                    
                    <hr>

                    <table align="center" class="myqna-area">
                        <thead class="myqna-top">
                            <tr height="60">
                                <th width="100"><input type="checkbox">전체선택</th>
                                <th width="100">상품명/주문번호</th>
                                <th width="100">카테고리</th>
                                <th width="300">제목</th>
                                <th width="100">작성일</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- 조회된 리스트가 없을 경우 -->
                            <% if(list.isEmpty()){ %>
                            <tr>
                                <th colspan="6">조회된 문의가 없습니다.</th>
                            </tr>
                            <% }else { %>
                            
                       
                            <!-- 조회된 리스트가 있을 경우 -->
                            <% for(MyQNA q : list) { %>
                            <tr height="100">
                                <td><input type="checkbox">3</td>
                                <td><%= q.getOrderNo() %></td>
                                <td><%= q.getmQnaCategory() %></td>
                                <td><%= q.getmQnaTitle() %></td>
                                <td><%= q.getmRegDate() %></td>
                             </tr>
                             <% } %>
                           <% } %>
                            
                        </tbody>
                    </table>

                    <button id="qnaenroll-button" type="button" class="btn btn-success"><a href="<%= broccoli%>/MyQNAEnrollForm.my">1:1문의하기</a></button>

                    <div class="container">
                        <ul class="pagination justify-content-center">
                          <% if(pi.getCurrentPage()  != 1){ %>
                          <li class="page-item"><a class="page-link" href="<%=broccoli%>/myPageMyQNA.my?currentPage=<%=pi.getCurrentPage()-1%>">이전</a></li>
                          <% } %>
                          <% for(int p=pi.getStartPage(); p<=pi.getEndPage();p++){ %>
                          <li class="page-item active"><a class="page-link" href="<%=broccoli%>/myPageMyQNA.my?currentPage=<%= p %>"><%= p %></a></li>
                          <% } %>
                          <% if(pi.getCurrentPage()  != pi.getMaxPage()){ %>
                          <li class="page-item"><a class="page-link" href="#">다음</a></li>
                          <% } %>
                        </ul>
                      </div>
             </div>
             
        </div>
    </div>
    <%@ include file="../common/footer.jsp"%>
</body>
</html>