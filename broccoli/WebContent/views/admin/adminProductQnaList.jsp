<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kh.product.model.vo.*, java.util.ArrayList" %>    
<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<ProductQna> list = (ArrayList<ProductQna>)request.getAttribute("list");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>상품문의사항 리스트(관리자)</title>
  <!-- 대쉬보드에서 쓸 공통 css -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"> 
  <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&family=Nanum+Myeongjo:wght@800&display=swap" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> 
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <!-- 엔딩 :  대쉬보드에서 쓸 공통 css -->         
  <style>
     .outer{
       width: 1200px;
       margin: auto;
      }
    .paging-area a{
	    text-decoration: none;  /* 및줄 없애기 */
	    color: black;
	    margin: 5px;
	}
    #pReviewList tbody tr:hover{
	    background-color: greenyellow;
	    cursor: pointer; 
    }
  </style>
</head>
<body>
    
    <!-- 대쉬보드 입력 -->
     <%@ include file="adminNav.jsp" %> 

    <div class="outer" style="margin-left: 300px; margin-top: 50px;">
    	<br>
        <h4>상품 문의사항</h4>  

        
        <select name="" id="">
            <option value="">전체조회</option>
            <option value="">공지사항</option>
            <option value="">미답변사항</option>
            <option value="">답변사항</option>
        </select>
        &nbsp;
        <input type="text" style="width: 200px;" placeholder="검색할 내용을 입력하세요">
        <button type="button">검색</button>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <button id="pNoticeEnrollForm" class="btn btn-secondary btn-sm">공지사항 입력</button>
       
        <script>
            $(function(){
                $("#pNoticeEnrollForm").click(function(){
                    location.href="<%=broccoli%>/pNoticeEnrollForm.admin"
                });
            })
        </script>      
          
        <br><br>
        <table border="1" id="pReviewList" class="table table-striped table-bordered dataTable no-footer">
            <thead>
                <tr>
                    <th>문의번호</th>
                    <th>상품명</th>
                    <th>문의제목</th>
                    <th>작성자</th>
                    <th>작성일</th>
                    <th>답변 여부</th>
                </tr>
            </thead>
            <tbody>
            	<% if(list.isEmpty()) { %>
                <!-- 조회된 리스트가 없을 경우-->
                
                <tr>
                    <th colspan="6">조회된 게시글이 없습니다.</th>
                </tr>
                <% }else{ %>
	                <!-- 조회된 리스트가 있을 경우 -->
	                <% for(ProductQna pq : list){ %>
                <tr>
                    <td><%= pq.getQnaNo() %></td>
                    <td><%= pq.getpName() %></td>
	                    <% if(pq.getNoticeYn().equals("Y")){ %>
	                    	<td>[공지]<%= pq.getQnaTitle() %></td>
	                    <% }else{ %>	
	                    	<td><%= pq.getQnaTitle() %></td>
	                    <% } %>	
                    <td><%= pq.getMemNo() %></td>
                    <td><%= pq.getQnaDate() %></td>
                    	<% if(pq.getYesNo().equals("Y")){ %>	
                    		<td>답변완료</td> 
                    	<% }else{ %>	
                    		<td><h4>미답변</h4></td>
						<% } %>
	                 <%  } %>
	            <% } %>                      
                </tr>
            </tbody>
        </table>
    </div>
    
   	 <script>
	      $(function(){
	          $("#pReviewList>tbody>tr").click(function(){
	              location.href= "<%= broccoli%>/productAnswer.admin?qnaNo=" + + $(this).children().eq(0).text();
	              });
	      });
     </script>

  
    <div class="paging-area" align="center">
		   <% if(pi.getCurrentPage() !=1 ){ %>
            <a href="<%=broccoli%>/productQnaList.admin?currentPage=<%=pi.getCurrentPage()-1%>">&lt; 이전</a>
		   <% } %>
		   
		   <% for(int p=pi.getStartPage(); p<=pi.getEndPage(); p++){ %>
            <a href="<%=broccoli%>/productQnaList.admin?currentPage=<%= p %>"><%= p %></a>
		   <% } %>	
		   
		   <% if(pi.getCurrentPage() != pi.getMaxPage()){ %>
            <a href="<%=broccoli%>/productQnaList.admin?currentPage=<%=pi.getCurrentPage()+1%>">다음 &gt;</a>
		   <% } %>
     </div>
</body>
</html>