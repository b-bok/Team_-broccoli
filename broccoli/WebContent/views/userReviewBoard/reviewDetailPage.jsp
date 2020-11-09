<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.kh.review.model.vo.*" %>    


<%
	Review r = (Review)request.getAttribute("r");
%>    
    
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
</head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>



    <style>

        div {
            box-sizing: border-box;
        }

        .wrap{
            width: 300px;
            height: 700px;
            margin-left: 370px;
            margin-top: 10px;

        }

        .wrap {
            width: 50%;
            float: left;
        }

        #header {
            margin-top: 50px;

        }

        #headerTable {
            border-top: 1px solid yellowgreen;
            border-bottom: 1px solid lightgray;
        }


        #reviewImage{height: 65%;}
        #reviewContent{height: 25%;}
        #reviewfooter{height: 10%;}

        #reviewImage img {
            width: 40%;
            height: 30%;
        }


        #reviewContent>p{
            margin-top: 10px;
        }

        #like{
            width: 100%;
            margin-top: 25px;
        }

    </style>

</head>
<body>

	<%@ include file="../common/menubar.jsp" %>

    <div id="header"  align="center">
        <table  id="headerTable">
            <tr>
                <th class="table-success" width="150" style="text-align: center;">제목</th>
                <td colspan="3" width="600px">&nbsp; <%=r.getReviewTitle() %></td>
            </tr>
            <tr>
                <th class="table-success" style="text-align: center;">작성자</th>
                <td colspan="3" width="600px">&nbsp; <%=r.getMem() %></td>
            </tr>
            <tr>
                <th class="table-success" style="text-align: center;">작성일</th>
                <td width="200px"> &nbsp; <%=r.getRegDate() %></td>
                <th class="table-success" style="text-align: center;">조회수</th>
                <td> &nbsp; <%=r.getClickNo() %></td>
            </tr>

        </table>

    </div>


    <div class="wrap">


        <div id="reviewImage" align="center" >

            <h2 align="center"><%=r.getReviewTitle() %></h2>
			<%if(!r.getReviewAttach().equals("N")) { %>
            <div id="image1" >
                <img src="<%=broccoli %>/<%=r.getReviewAttach() %>" name="reviewImage1">
            </div>
<!--             <div id="image2">
                <img src="../resources/image/city1.PNG"   name="reviewImage2">
            </div> -->
   			<% } %>
  
  
        </div>


        <div id="reviewContent">

            <p align="center">
                	
                	<%=r.getReviewContent() %>
    
            </p>

        </div>
        <div id="reviewfooter">

            <div id="like" align="right">
                <button name="likeCount" id="getLike">좋아요(<%=r.getLike() %>)</button>
            </div>    
        </div>


<%@ include file="../common/footer.jsp"%>
    </div>
	
	
	<script>
		 var count = 0;
		 
		$(function(){
			
    		$("#getLike").click(function(){
    			
    			if(count <= 0) {
    				
    				selectUserLike();
    				count += 1;
    				alert("좋아요를 눌렀습니다!");
    				selectLikeList();
    				
    			}else {
    				selectLikeList();
    				alert("이미 좋아요를 눌렀네요!");
    				
    			}
    			

    		})
    		

		})
		
		function selectUserLike(){
			
			$.ajax({
				
				url : "selectLike.rv",
				type : "get",
				data : {
					rno : <%=r.getReviewNo()%>
				},
				success: function(result){
	
						$("#getLike").html("좋아요("+ result.like + ")");
					
				},
				error : function(){
					console.log("ajax연결실패");
				}
			})
			
			
		}
		
		function selectLikeList(){
			
			$.ajax({
				
				url : "likeList.rv",
				type : "get",
				data : {
					rno : <%=r.getReviewNo()%>
				},
				success : function(result){
					
					$("#getLike").html("좋아요("+ result.like + ")");
				},
				error : function(){
					console.log("ajax실패!");
				}
			})
		}
	
	
	
	</script>
	
	
</body>
</html>