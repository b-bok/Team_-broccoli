<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.*, com.kh.product.model.vo.*" %>	
	

<%
	ArrayList<Product> list = (ArrayList)request.getAttribute("list");
	PageInfo pi = (PageInfo)request.getAttribute("pi");

%>	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


    <style>
        div {
            
            box-sizing: border-box;
        }

        .wrap {
            width: 1000px;
            height: 800px;
            margin: auto;
            margin-top: 50px;
        }

        .wrap>div{width: 100%; 
        /* border: 1px solid red; */
        }
        #header {height: 10%;}
        #content {height: 80%;}
        #footer {height: 10%;}

        #header>div {
            width: 100%;
            float: left;
           
        }

        #header_1{height: 50%; margin-top: 10px;}
        #header_2{height: 50%;}


        .thumbnails {
            border: 1px solid white;
            width: 220px;
            display:inline-block;
            margin: 10px;
        }

        .thumbnails:hover {
            cursor: pointer;
            opacity: 0.3;
        }

        #pagingBar {
            margin: auto;
            /* border: 1px solid black; */
            width: 250px;

        }

    </style>

</head>
<body>
	<!-- 상품 전체 조회 페이지 입니다.  -->

	<%@ include file="../common/menubar.jsp"%>

  
    <div class="wrap">
        <div id="header">
            <div id="header_1" align="center"><h1>전체</h1></div>

        </div>

        <hr>

        <div id="content">
          	
          	
          	<%for(Product p : list) { %>
          	
            <div class="thumbnails" align="center">
            	<input type="hidden" name="pno" id="pno" value="<%=p.getPno() %>" />
                <img src="<%=broccoli %>/<%=p.getThumbnail() %>" width="200" height="200">
   					<br />
                    <%=p.getpName() %><br>
                    <span style="text-decoration: line-through; color: gray;"><%=p.getPrice() %></span>
                    <span style="color: green;">--> <%=p.getDiscount() %></span> <br>
                    <span style="font-size: 13px; font-weight: lighter; color: #666"><%=p.getSmallDetail() %></span>
              
            </div>
            
            <% } %>

        </div>

        <div id="fotter">
            <br><br>
            <div id="pagingBar" align="center">
                <ul class="pagination">
                <%if(pi.getCurrentPage() != 1) { %>
                	<li class="page-item">
                    <a class="page-link" href="<%=broccoli%>/allProduct.pb?currentPage=<%=pi.getCurrentPage() -1%>">&lt;이전</a>
                    </li>
                <% } %> 
                	
                	
                <%for(int p = pi.getStartPage(); p<pi.getEndPage(); p++) {%>
                	<%if(pi.getCurrentPage() == p) { %>
                	
                  	<li class="page-item active">
                    <a class="page-link" href="<%=broccoli%>/allProduct.pb?currentPage=<%=p%>"><%=p%></a>
                  
                  	<%}else { %>
                  	<li class="page-item">
                    <a class="page-link" href="<%=broccoli%>/allProduct.pb?currentPage=<%=p%>"><%=p%></a>
                    </li>
                    <% } %>
                <% } %>
                
                
                <%if(pi.getCurrentPage() != pi.getMaxPage())  {%>
                   <li class="page-item">
                    <a class="page-link" href="<%=broccoli%>/allProduct.pb?currentPage=<%=pi.getCurrentPage() +1%>">&gt;다음</a>
                   </li>
                 <% } %>   
				</ul>
            </div>
            
        </div>
    </div>

    <script>
	
    	$(function(){
    		
    		$(".thumbnails").click(function(){
    			
    			location.href = "<%=broccoli%>/detail.pb?pno=" + $("#pno").val();
    		});
    		
    	});


    </script>


<%@ include file="../common/footer.jsp"%>
</body>
</html>