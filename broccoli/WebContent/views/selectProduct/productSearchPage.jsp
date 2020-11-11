<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%@ page import="java.util.*, com.kh.product.model.vo.*" %>	
	

<%
	ArrayList<Product> list = (ArrayList)request.getAttribute("list");
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	
	String keyword = (String)request.getAttribute("keyword");
%>	

 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

    <style>

        div{
            /* border: 1px solid red; */
            box-sizing: border-box;    
        }

        .wrap {
            width: 1000px;
            height: 1200px;
            margin: auto;
            margin-top: 50px;
        }

        .wrap>div{width: 100%;}

        #header{height: 10%;}
        #searcbar{height: 15%; position: relative;}
        #searchSorting{height: 5%;}
        #content{height: 60%;}
        #fotter{height: 10%;}

        #searchbarForm{

            width: 80%;
            height: 20%;
            margin: auto;
            position: absolute;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;

        }

        #searchbarForm>div{height: 100%; float: left;}
        #search_text{width: 85%;}
        #search_btn{width: 15%;}

        #searchbarForm input {width: 100%; height: 100%;}


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
<%@ include file="../common/menubar.jsp" %>
	<!-- 상품검색 페이지입니다.  -->
	
   <div class="wrap">

        <div id="header" align="center"><h1>상품검색</h1></div>

        <div id="searcbar">
            <hr>
            <form action="<%=broccoli %>/search.pb?" id="searchbarForm" method="get">
			<input type="hidden" name="currentPage" value=1 />
            <div id="search_text">
                <input type="text" class="form-control form-control-sm" name="search">
            </div>
            
            <div id="search_btn">
                <button class="btn btn-secondary btn-sm" type="submit">
                    <i class="fas fa-search" style="font-size: 25px;"></i>
                </button>
            </div>
            
            </form>    
            
        </div>
        <hr>
        <div id="searchSorting">
            총 <%=pi.getListCount() %>개의 상품이 검색되었습니다.

<!--             <form action="">
            <input type="radio" name="searchSorting" id="standard" value="standard"><label for="standard">기본</label>
            <input type="radio" name="searchSorting" id="lowPrice" value="lowPrice"><label for="lowPrice">낮은가격순</label> 
            <input type="radio" name="searchSorting" id="highPrice" value="highPrice"><label for="highPrice">높은가격순</label>
            <input type="radio" name="searchSorting" id="bestRanking" value="bestRanking"><label for="bestRanking">판매량순</label>
            <input type="radio" name="searchSorting" id="newProduct" value="newProduct"><label for="newProduct">신상품순</label>
            </form>
 -->
			

        </div>
        <div id="content">
          
			<%for(Product p : list) { %>
          	
            <div class="thumbnails" align="center">
            	<input type="hidden" name="pno" id="pno" value="<%=p.getPno() %>">
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
                    <a class="page-link" href="<%=broccoli%>/search.pb?currentPage=<%=pi.getCurrentPage() -1%>&search=<%=keyword%>">&lt;이전</a>
                    </li>
                <% } %> 
                	
                	
                <%for(int p = pi.getStartPage(); p<pi.getEndPage(); p++) {%>
                	<%if(pi.getCurrentPage() == p) { %>
                	
                  	<li class="page-item active">
                    <a class="page-link" href="<%=broccoli%>/search.pb?currentPage=<%=p%>&search=<%=keyword%>"><%=p%></a>
                  
                  	<%}else { %>
                  	<li class="page-item">
                    <a class="page-link" href="<%=broccoli%>/search.pb?currentPage=<%=p%>&search=<%=keyword%>"><%=p%></a>
                    </li>
                    <% } %>
                <% } %>
                
                
                <%if(pi.getCurrentPage() != pi.getMaxPage())  {%>
                   <li class="page-item">
                    <a class="page-link" href="<%=broccoli%>/search.pb?currentPage=<%=pi.getCurrentPage() +1%>&search=<%=keyword%>">&gt;다음</a>
                   </li>
                 <% } %>   
				</ul>
            </div>
            
        </div>


    </div>

<%@ include file="../common/footer.jsp"%>
</body>
</html>