<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kh.product.model.vo.*, java.util.ArrayList" %>    
<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<Product> list = (ArrayList<Product>)request.getAttribute("list");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>상품 전체조회</title>
  <!-- 대쉬보드에서 쓸 공통 css -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"> 
  <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&family=Nanum+Myeongjo:wght@800&display=swap" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> 
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <!-- 엔딩 :  대쉬보드에서 쓸 공통 css -->  
  <style>
      .outer{
          border: 1px solid turquoise;
          border-radius: 3%;
          width: 900px;
        margin: auto;
        margin-top: 50px;
      }
      .inner{
        background-color: rgb(227, 245, 199);  /*배경색은 임의로 설정함*/
        width: 800px;
        margin: auto;
        margin-top: 10px;
    }
      #productList{
          border:1px solid black;
          text-align: center;
          background-color: white;
      }
      #productList td, #productList th{
        border:1px solid black;
        text-align: center;
      }
      #productList>thead{background-color:gainsboro}
      .paging-area a{
            text-decoration: none;  /* 및줄 없애기 */
            color: black;
            margin: 5px;
        }
      #productList tbody tr:hover{
        background-color: greenyellow;
        cursor: pointer;  
  </style>   
</head>
<body>
    
    <!-- 대쉬보드 추가-->
    <%@ include file="adminNav.jsp" %>

    <div style="margin-left: 300px; margin-top: 50px; margin-bottom: 0;">
        <button><a href="<%= broccoli %>/selectProduct.admin?currentPage=1">카테고리별 조회</a></button>
        <button><a href="<%= broccoli %>/selectDetailProduct.admin"">상세 조회</a></button>
    </div>

    <div class="outer" style="margin-left:300px;">
        
        <div class="inner">

            <h4 style="margin-left: 300px;">상품 카테고리별 조회</h4>
            <br>
            <table id="productList" align="center">
                <thead>
                    <tr>
                        <th width="70">No</th>
                        <th width="100">상품코드</th>
                        <th width="200">상품명</th>
                        <th width="80">재고</th>
                        <th width="150">업체명</th>
                    </tr>

                </thead>
                <tbody>
                <% if(list.isEmpty()) { %>
 	               <tr>
         				<th colspan="6">조회된 게시글이 없습니다.</th>	       
    	            </tr>
 				<% }else{ %>
 					
 					<% for(Product p : list){ %>
                    <tr>
                        <td></td>
                        <td><%= p.getPno() %></td>
                        <td><%= p.getpName() %></td>
                        <td><%= p.getInventory() %></td>
                        <td><%= p.getCompany() %></td>
                    </tr>
                    <% } %>
                <% } %>    
                </tbody>
                
                
            </table>
			
			<!-- 리스트 중 상품 클릭시 이동 -->
			 <script>
			       $(function(){
			        $("#productList>tbody>tr").click(function(){
			            location.href= "<%=broccoli%>/productDetailResult.admin?pno=" + $(this).children().eq(1).text();
			            });
			       });
      		</script>
      		
      		<!-- 검색조건 폼 -->
      		<form action="" method="post">
	              <select style="margin-top: 20px; margin-left: 200px;">
	                  <option value="pProduct">카테고리</option>
	                  <option value="">과일,채소</option>
	                  <option value="">냉장식품</option>
	                  <option value="">간편식품</option>
	                  <option value="">수산물</option>
	                  <option value="">정육</option>
	              </select>
	
	              <select style="margin-top: 20px; ">
	                  <option value="pProduct">상품명</option>
	                  <option value="pCompany">업체명</option>
	              </select>
	
	            <input type="text" name="searchProduct" placeholder="검색어를 입력하세요"> 
	            <button type="submit">검색</button>
            </form>
            
            <br>
            <br>
        </div>
        <br>
        
        <!-- 페이징 처리 부분 -->
        <div class="paging-area" align="center">
		   <% if(pi.getCurrentPage() !=1 ){ %>
            <a href="<%=broccoli%>/selectProduct.admin?currentPage=<%=pi.getCurrentPage()-1%>">&lt; 이전</a>
		   <% } %>
		   
		   <% for(int p=pi.getStartPage(); p<=pi.getEndPage(); p++){ %>
            <a href="<%=broccoli%>/selectProduct.admin?currentPage=<%= p %>"><%= p %></a>
		   <% } %>	
		   
		   <% if(pi.getCurrentPage() != pi.getMaxPage()){ %>
            <a href="<%=broccoli%>/selectProduct.admin?currentPage=<%=pi.getCurrentPage()+1%>">다음 &gt;</a>
		   <% } %>
        </div>

        <br>
    </div>
</body>
</html>