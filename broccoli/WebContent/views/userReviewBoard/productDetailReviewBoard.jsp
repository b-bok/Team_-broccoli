<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
	integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
	crossorigin="anonymous">

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

#boardSorting {
	height: 5%;
	margin-top: 5px;
}

#boardBrief {height: 10%;}

#board {height: 60%;}

#fotter {height: 10%;}

#fotter>div {
	width: 100%;
	float: left;
}

#reviewSort {margin-top: 5px;}

#reviewForm, #pagingBar {height: 50%;}

#pagingBar{margin: 0;}

</style>

</head>
<body>
	<!-- 상품상세페이지 리뷰게시판 입니다. -->
	
	
	
	<div class="wrap">



		<%@ include file="../common/reviewMenubar.jsp"%>

		

		<div id="boardSorting" align="right">

			<select name="reviewSort" id="reviewSort">

				<option value="reg_date">최근등록 순</option>
				<option value="like_count">좋아요 순</option>
				<option value="click_no">조회 순</option>

			</select>
			<button id="selectReviewSort" class="btn btn-success btn-sm" style="padding:2px;">정렬</button>
			
		</div>

		<div id="boardBrief">

			<h5 id="list3">PRODUCT REVIEW</h5>

			<ul>
				<li>상품에 대한 문의를 남기는 공간입니다. 해당 게시판의 성격과 다른 글은 사전동의 없이 담당 게시판으로
					이동될 수 있습니다.</li>
				<li>배송관련, 주문(취소/교환/환불)관련 문의 및 요청사항은 마이컬리 내 1:1 문의에 남겨주세요.</li>
			</ul>
		</div>

		<div id="board">

			<button id="selectAll" class="btn btn-success btn-sm" value="all">전체보기</button> 
			<button id="selectPhoto" class="btn btn-success btn-sm" value="photo">포토 리뷰</button> <br>



			<table class="table table-hover" id="reviewTable">
				<thead>
					<tr>
						<th>번호</th>
						<th>고객만족도</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
						<th>좋아요</th>
						<th>조회</th>
						<th>신고하기</th>
					</tr>
				</thead>

				<tbody>
			
				</tbody>

			</table>

		</div>

		<div id="fotter">

			<div id="reviewForm" align="right">
				<button class="btn btn-success btn-sm">후기 작성</button>
			</div>

		</div>
	
	</div>
	
	
	<%@include file="../common/declarationModal.jsp" %>
	
	<script>
        
        $(function(){
        	
        	var sort = "all";
        	
        	selectUserReview(sort);
        	
        	
    		$("#reviewTable>tbody").on("click","tr td:not(.dec)",function(){

    		location.href = "<%=broccoli%>/detail.rv?rno=" + $(this).parent().children().eq(0).text();
    			
    		})
    		
	
    		$("#selectAll").click(function(){
    			
    			var sort = $(this).val();
    			
    			 selectUserReview(sort);
    		})
    		
    		$("#selectPhoto").click(function(){
    			
    			var sort = $(this).val();
    			
    			selectUserReview(sort);
    		})
    		
    		
 			$("#selectReviewSort").click(function(){
        		
        		var sort = $("#reviewSort option:selected").val();
				
        		selectUserReview(sort);
        		
        	});
    		
        		
        });
        
        
        function selectUserReview(sort){	//상품에 맞는 리뷰를 불러오는 ajax
        	
        	$.ajax({
        		url:"selectReview.rv",
        		type : "get",
        		data :  {
        			     pno : <%=p.getPno() %>,
						 sort : sort
						
        		},
        		success : function(list) {
        			
        			
        			var str = "";
        			var rate = "";


 
        			for(var i in list) {
        				
        				switch(list[i].reviewRate) {
        				case 1 : rate = "<i class='fas fa-star'></i>"; break;
        				case 2 : rate = "<i class='fas fa-star'></i><i class='fas fa-star'></i>"; break;
        				case 3 : rate = "<i class='fas fa-star'></i><i class='fas fa-star'></i><i class='fas fa-star'></i>"; break;
        				case 4 : rate = "<i class='fas fa-star'></i><i class='fas fa-star'></i><i class='fas fa-star'></i><i class='fas fa-star'></i>"; break;
        				case 5 : rate = "</i><i class='fas fa-star'></i><i class='fas fa-star'></i><i class='fas fa-star'></i><i class='fas fa-star'></i><i class='fas fa-star'></i>"; break;
        				}
        				

        				str += "<tr>" +
	        				"<td>" + list[i].reviewNo + "</td>" +
   	        				"<td>" + 	rate		+ "</td>" +
   	        				"<td>" + list[i].reviewTitle + "</td>" +
   	        				"<td>" + list[i].mem + "</td>" +
   	        				"<td>" + list[i].regDate + "</td>" +
   	        				"<td>" + "<i class='fas fa-thumbs-up'></i> " + list[i].like + "</td>" +
   	        				"<td>" + list[i].clickNo + "</td>" +
   	        				"<td class='dec'>" + " <a data-toggle='modal' data-target='#myModal'>신고하기</a> " + "</td>" +
   						 "</tr>";
 
        			}
        			
        			$("#reviewTable tbody").html(str);
        			
        			
        		},
        		error : function(){
        			console.log("ajax통신실패");
        		}
        	})
        	
        }
        
        
        
        
        </script>


</body>
</html>