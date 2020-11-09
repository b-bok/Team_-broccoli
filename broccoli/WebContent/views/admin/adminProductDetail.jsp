<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kh.product.model.vo.*" %>    
<%
	Product p = (Product)request.getAttribute("p");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
   <title>상품상세조회 결과</title>
  <!-- 대쉬보드에서 쓸 공통 css -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"> 
  <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&family=Nanum+Myeongjo:wght@800&display=swap" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> 
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <!-- 엔딩 :  대쉬보드에서 쓸 공통 css -->    
   
    <style>
        table{
            width: 800px;
            height: 600px;
        }
        td{text-align: center;}
    </style>
</head>
<body>
    
        <!-- 대쉬보드 추가-->
     <%@ include file="adminNav.jsp" %> 
	
	
    <div style="margin-left: 300px; margin-top: 50px; margin-bottom: 0;">
        <button><a href="<%= broccoli %>/selectProduct.admin?currentPage=1">카테고리별 조회</a></button>
        <button><a href="<%= broccoli %>/selectDetailProduct.admin">상세 조회</a></button>
    </div>

    <div class="outer" style="margin-left: 300px;">

        <button onclick="history.back();">&lt; 이전화면</button> &nbsp;  <h4>상품상세 조회</h4>

        <hr>

        <table border="1px">
           
                <tr>
                    <td style="width: 40%;"  rowspan="3" colspan="4"> <img src="<%= broccoli %>/<%= p.getThumbnail() %>" width="500" height="300">썸네일 이미지</td>
                    <td style="width: 10%;">상품코드 </td>
                    <td style="width: 20%;"> <%= p.getPno() %></td>
                    <td style="width: 10%;">카테고리</td>
                    <td style="width: 20%;"><%= p.getCategory() %></td>
                </tr>
                <tr>
                    <td>상품명</td>
                    <td> <%= p.getpName() %> </td>
                    <td>이벤트명 </td>
                    <td><%= p.getEno() %></td>
                </tr>
                <tr>
                    <td>판매가격 </td>
                    <td><%= p.getPrice() %>원</td>
                    <td>할인가격</td>
                    <td><%= p.getDiscount() %>원 </td>
                </tr>
            
                <tr>
                    <td rowspan="3">상품상세정보</td>
                    <td rowspan="3" colspan="3"><%= p.getDetail() %></td>
                    <td>업체명</td>
                    <td><%= p.getCompany() %></td>
                    <td >재고</td>
                    <td ><%= p.getInventory() %></td>
                
                    
                </tr>
                <tr>
                    <td >이벤트 적용</td>
                    <td >
                        <section name="eYn">
                            <input type="radio" name="eYn" value="Y"> &nbsp; 예 <br>
                            <input type="radio" name="eYn" value="N"> 아니오
                        </section>
                    </td>
                    <td>할인 여부</td>
                    <td >
                        <section name="disYn">
                            <input type="radio" name="disYn" value="Y"> &nbsp; 예 <br>
                            <input type="radio" name="disYn" value="N"> 아니오
                        </section>
                    </td>
                
                </tr>
                <tr>
                    <td>원산지</td>
                    <td><%= p.getNation() %></td>
                    <td>포장타입</td>
                    <td><%= p.getPacktype() %></td>
                </tr>
             
           
                <tr>
                    <td>상품간단설명</td>
                    <td colspan="3"><%= p.getSmallDetail() %></td> </td>
                    <td>이미지1</td>
                    <td><img src="<%=broccoli %>/<%= p.getImg1() %>" width="100" width="80"></td>
                    <td>이미지2</td>
                    <td><img src="<%=broccoli %>/<%= p.getImg2() %>" width="100" width="80"></td>
                </tr>
             
        </table>

        <br>
        
    </div>
</body>
</html>