<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kh.product.model.vo.*, java.util.ArrayList" %>    
<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<Product> list = (ArrayList<Product>)request.getAttribute("list");
	String searchCat = (String)request.getAttribute("searchCat");
	String searchWord = (String)request.getAttribute("searchWord");
%>      
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>상품수정하기 화면</title>
      <!-- 대쉬보드에서 쓸 공통 css -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"> 
  <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&family=Nanum+Myeongjo:wght@800&display=swap" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> 
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <!-- 엔딩 :  대쉬보드에서 쓸 공통 css --> 
  <style>
    .outer{
      background-color: rgb(227, 245, 199);  /*배경색은 임의로 설정함*/
      width: 1000px;
      margin: auto;
      margin-top: 50px;
    }
    .list-area{
        background-color: white;
        text-align: center;
        }
    .list-area>thead{
    	background-color: gainsboro;
    	text-align: center;
    	}
    .list-area td, td, th{
    	text-align: center;
        margin:auto;
        border: 1px solid gray;}
    .list-area tbody tr:hover{
        background-color: greenyellow;
        cursor: pointer;
    }
    #updateListPForm input{margin:5px;}
    .paging-area a{
            text-decoration: none;  /* 및줄 없애기 */
            color: black;
            margin: 5px;
        }
  </style>  
</head>
<body>
    
	<!--  대쉬보드 추가 -->
	<%@ include file="adminNav.jsp" %>

    <div class="outer" style="margin-left:300px;">
    
  	<select onchange="location.href=this.value" style="margin-left: 50px; margin-top: 50px;">
      
      <option value="<%=broccoli%>/updateProduct.admin?currentPage=1">상품수정/삭제</option>
      <option value="<%=broccoli%>/enrollProduct.admin">상품등록</option>
    
    </select>
    
        <form action="updateProduct2.admin?currentPage=1" id="updateListPForm" method="POST" align="center">
            <br>
            <h2>상품 수정하기</h2>

            
            <select name="searchCategory" id="">
                <option value="productName">상품명</option>
                <option value="productCompany">업체명</option>
            </select>

             <input type="text" name="searchWord" placeholder="상품명을 입력하세요."> 
             <button type="submit" >검색</button>
		</form>
		
		<% if(searchWord != null) { %>
			<% if(searchCat.equals("productName")){ %>
			<h4 align="center">상품명으로 &nbsp; "<%=searchWord %>"을/를 검색한 결과입니다.</h4>
			<% }else{ %>
			<h4 align="center">상품업체명으로  &nbsp;"<%=searchWord %>"을/를 검색한 결과입니다.</h4>
			<% } %>
		<%} %>
             <br>
             <br>
             <h4 align="center">수정할 상품을 선택하세요.</h4>
             <table align="center" class="list-area">
                 <thead>
                    <th width="70">번호</th>
                    <th width="200">상품코드</th>
                    <th width="200">상품명</th>
                    <th width="70">재고</th>
                    <th width="200">업체명</th>
                 </thead>
                 <tbody>
                <% if(list.isEmpty()) { %>
 	               <tr>
         				<th colspan="6" onclick="event.cancelBubble=true"><h4 align="center">조회된 게시글이 없습니다.</h4></th>	       
    	            </tr>
 				<% }else{ %>
 					
 					<% for(Product p : list){ %>
                    <tr>
                        <td onclick="event.cancelBubble=true"><input type="radio" name="radioChecked"></td>
                        <td id="tds"><%= p.getPno() %></td>
                        <td id="tds"><%= p.getpName() %></td>
                        <td id="tds"><%= p.getInventory() %></td>
                        <td id="tds"><%= p.getCompany() %></td>
                    </tr>
                    <% } %>
                <% } %>    
                </tbody>
             </table>

             <br>

              <div align="center">
                 <!-- 
                  <button class="btn btn-warning btn-sm"><a href="<%= broccoli %>/updateProductForm.admin">상품 선택시 수정양식으로 이동(임의로 만든 버튼)</a></button>
                  -->
                 <button class="btn btn-danger btn-sm" onclick="deleteProduct();">삭제하기</button>
            </div>
             <br>
             
             <script>
             <!-- 상품 선택시 수정양식으로 이동 -->
			$(function(){
				$(".list-area>tbody>tr").click(function(){
					location.href = "<%=broccoli%>/updateProductForm.admin?pno=" + $(this).children().eq(1).text();
				});
			});
             
             <!-- 상품 삭제버튼시 컨펌창 출력 -->
               function deleteProduct(){
                $(function(){
                   if(confirm("상품을 삭제하시겠습니까?")){
                        
                   }else{

                   }

                });
               };
            </script>

        

        <div class="paging-area" align="center">
 			<% if(pi.getCurrentPage() !=1 ){ %>
            <a href="<%=broccoli%>/updateProduct.admin?currentPage=<%=pi.getCurrentPage()-1%>">&lt; 이전</a>
		   <% } %>
		   
		   <% for(int p=pi.getStartPage(); p<=pi.getEndPage(); p++){ %>
            <a href="<%=broccoli%>/updateProduct.admin?currentPage=<%= p %>"><%= p %></a>
		   <% } %>	
		   
		   <% if(pi.getCurrentPage() != pi.getMaxPage()){ %>
            <a href="<%=broccoli%>/updateProduct.admin?currentPage=<%=pi.getCurrentPage()+1%>">다음 &gt;</a>
		   <% } %>
        </div>
    </div>
</body>
</html>