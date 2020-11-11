<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<%@ page import="java.util.*, com.kh.qna.model.vo.*, com.kh.product.model.vo.*" %>	
	

<%
	ArrayList<Qna> list = (ArrayList<Qna>)request.getAttribute("list");
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	int pno = (int)request.getAttribute("pno");

%>	



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

    


<style>
div {
/* border: 1px solid red; */
box-sizing: border-box;
}

.wrap {
width: 1000px;
height: 800px;
margin: auto;
margin-top: 50px;
}

.wrap>div {
width: 100%;
float: left;
}

#qnaBoardSorting {
height: 5%;
margin-top: 5px;
}

#qnaBoardBrief {
height: 10%;
}

#qnaBoard {
height: 60%;

}

#qnaFotter {
height: 10%;
}

#qnaSearchbar {height: 13%;}

#qnaSearchbar{width: 100%;} 

#searchbar{
    margin-left: 520px;
    margin-top: 30px;
}

#qnaFotter>div {
width: 100%;
float: left;
}

#qnaSort {
margin-top: 5px;
}

#qnaForm, #qnaPagingBar {
height: 50%;
margin-top: 5px;
}
</style>


</head>
<body>

<%@ include file="../common/menubar.jsp"%>

	<div class="wrap">

		<div id="qnaBoardBrief">

			<h5>PRODUCT Q&A</h5>

			<ul>
				<li>상품에 대한 문의를 남기는 공간입니다. 해당 게시판의 성격과 다른 글은 사전동의 없이 담당 게시판으로
					이동될 수 있습니다.</li>
				<li>배송관련, 주문(취소/교환/환불)관련 문의 및 요청사항은 마이컬리 내 1:1 문의에 남겨주세요.</li>
			</ul>
		</div>

		<div id="qnaBoard" >

			<table class="table table-hover" id="qnaTable">
				<thead align="center">
					<tr>
                        <th>번호</th>
                        <th>상품명</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
					</tr>
				</thead>

				<tbody align="center">
					<%for(Qna q : list) { %>
					<tr>
        				<td>  <%=q.getQnaNo() %>  </td> 
        				<td>  <%=q.getpName() %>  </td> 
        				<td>  <%=q.getQnaTitle() %>  </td>
	        			<td>  <%=q.getMemId() %> </td>
	        			<td>  <%=q.getQnaDate() %>  </td>
					</tr>

					<%} %>
				</tbody>

			</table>


		</div>

		<div id="fotter">
			            <div id="pagingBar" align="center">
                <ul class="pagination">
                <%if(pi.getCurrentPage() != 1) { %>
                	<li class="page-item">
                    <a class="page-link" href="<%=broccoli%>/qnaAll.pq?currentPage=<%=pi.getCurrentPage() -1%>&pno=<%=pno %>">&lt;이전</a>
                    </li>
                <% } %> 
                	
                	
                <%for(int p = pi.getStartPage(); p<pi.getEndPage(); p++) {%>
                	<%if(pi.getCurrentPage() == p) { %>
                	
                  	<li class="page-item active">
                    <a class="page-link" href="<%=broccoli%>/qnaAll.pq?currentPage=<%=p%>&pno=<%=pno %>"><%=p%></a>
                  
                  	<%}else { %>
                  	<li class="page-item">
                    <a class="page-link" href="<%=broccoli%>/qnaAll.pq?currentPage=<%=p%>&pno=<%=pno %>"><%=p%></a>
                    </li>
                    <% } %>
                <% } %>
                
                
                <%if(pi.getCurrentPage() != pi.getMaxPage())  {%>
                   <li class="page-item">
                    <a class="page-link" href="<%=broccoli%>/qnaAll.pq?currentPage=<%=pi.getCurrentPage() +1%>&pno=<%=pno %>">&gt;다음</a>
                   </li>
                 <% } %>   
				</ul>
            </div>
		
			
			<%if(login != null) { %>
			<div id="qnaForm" align="right">
                <a href="<%=broccoli %>/qnaAll.pq" class="btn btn-success btn-sm">전체보기</a>
				<a href="<%=broccoli %>/enroll.pq?pno=<%=pno %>" class="btn btn-success btn-sm">문의하기</a>
			</div>
			<%} %>
		</div>

        <div id="qnaSearchbar" >
            <form class="form-inline" action="★" method="GET">


            <div id="searchbar">
            
                <input name="search" class="form-control form-control-sm"
                    type="text" size="20px" placeholder="검색어를 입력하세요">

                <button class="btn btn-secondary btn-sm" type="submit">
                    <i class="fas fa-search" style="font-size: 20px;"></i>
                </button>

                &nbsp;&nbsp;

                <select name="searchList" id="searchList">
                    <option value="title">제목</option>
                    <option value="writer">작성자</option>
                    <option value="pName">상품명</option>
                    <option value="normal" selected>일반</option>
                </select>

                &nbsp;&nbsp;

                <select name="categoryFirst" id="categoryFirst">
                    <option value="firstC" selected>1차카테고리분류</option>
                    <option value="vegetable">채소</option>
                    <option value="fruit">과일</option>
                    <option value="fish">수산</option>
                    <option value="meat">정육</option>
                </select>

            </div>
            </form>
        </div>

	</div>


	<script>
	
		$(function(){
			
			
			$("#qnaTable>tbody").on("click","tr",function(){
								
					var qno = $(this).children().eq(0).text();

				 location.href = "<%=broccoli%>/detail.qna?qno=" + Number(qno);
					
				})
			
		})	
	

	</script>




<%@ include file="../common/footer.jsp"%>
</body>
</html>