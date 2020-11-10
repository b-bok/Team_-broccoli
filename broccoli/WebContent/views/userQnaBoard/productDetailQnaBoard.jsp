<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

   
</head>

    
<link rel="stylesheet"
href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet"
href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
crossorigin="anonymous">
</head>
<script
src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<style>
div {
/* border: 1px solid red; */
box-sizing: border-box;
}

.wrap {
width: 1000px;
height: 800px;
margin: auto;
}

.wrap>div {
width: 100%;
float: left;
}

#qnaBoardSorting {
height: 5%;
margin-top: 5px;
}

#qnaBoardBrief {height: 10%;}

#qnaBoard {height: 60%;}

#qnaFotter {height: 10%;}

#qnaFotter>div {
width: 100%;
float: left;
}

#qnaSort {margin-top: 5px;}

#qnaForm, #pagingBar {height: 50%;}
</style>


</head>
<body>


    	<!-- 상품상세페이지 리뷰게시판 입니다. -->

	<div class="wrap">


		
		<%@ include file="../common/reviewMenubar.jsp"%>



		<div id="qnaBoardSorting" align="right">

			<select name="qnaSort" id="qnaSort">

				<option value="qna_date" selected>최근등록 순</option>
				<option value="qna_no">번호 순</option>

			</select>
			<button id="selectQnaSort" class="btn btn-success btn-sm" style="padding:2px;">정렬</button>

		</div>

		<div id="qnaBoardBrief">

			<h5 id="list5">PRODUCT Q&A</h5>

			<ul>
				<li>상품에 대한 문의를 남기는 공간입니다. 해당 게시판의 성격과 다른 글은 사전동의 없이 담당 게시판으로
					이동될 수 있습니다.</li>
				<li>배송관련, 주문(취소/교환/환불)관련 문의 및 요청사항은 마이컬리 내 1:1 문의에 남겨주세요.</li>
			</ul>
		</div>

		<div id="qnaBoard">

			<table class="table table-hover" id="qnaTable" >
				<thead align="center">
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
					</tr>
				</thead>

				<tbody align="center">

				</tbody>

			</table>


		</div>

		<div id="fotter">
			<%if(login != null) { %>
			<div id="qnaForm" align="right">
                <a href="<%=broccoli %>/qnaAll.pq?pno=<%=p.getPno() %>&currentPage=1" class="btn btn-success btn-sm">전체보기</a>
				<a href="<%=broccoli %>/enroll.pq?pno=<%=p.getPno() %>" class="btn btn-success btn-sm">문의하기</a>
			</div>
			<%} %>
		</div>

	</div>
    
 	<script>
    
    $(function(){
    	
    	var sort = "all";
    	
    	selectUserQna(sort);
    	
    	
		$("#qnaTable>tbody").on("click","tr td:not(.dec)",function(){
	
		location.href = "<%=broccoli%>/detail.qna?qno=" + $(this).parent().children().eq(0).text();
			
		})
		

			$("#selectQnaSort").click(function(){
    		
    		var sort = $("#qnaSort option:selected").val();

    		 selectUserQna(sort); 
    		
    	});
		
    		
    });
    
    
    function selectUserQna(sort){	//상품에 맞는 Qna 불러오기
    	
    	$.ajax({
    		url:"selectQna.qa",
    		type : "get",
    		data :  {
    			     pno : <%=p.getPno() %>,
					 sort : sort
					
    		},
    		success : function(list) {
    			console.log(list);		
    			var str = "";

    			for(var i in list) {

    				str += "<tr>" +
        				"<td>" + list[i].qnaNo + "</td>" +
        				"<td>" + list[i].qnaTitle + "</td>" +
	        			"<td>" + list[i].memId + "</td>" +
	        			"<td>" + list[i].qnaDate + "</td>" +
						 "</tr>";

    			}
    			
    			$("#qnaTable tbody").html(str);
    			
    			
    		},
    		error : function(){
    			console.log("ajax통신실패");
    		}
    	})
    	
    }
    

        
        </script>

</body>
</html>