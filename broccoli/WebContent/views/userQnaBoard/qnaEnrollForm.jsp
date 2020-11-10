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
            margin-top: 50px;

        }

        .wrap>div{width: 100%;}
        #qnaHeader {height: 40%;}
        #qnaContent {height: 55%;}
        #qnaFotter {height: 5%;}

        #qnaHeader>div {
            width: 100%;
            float: left;
        }

        #qnaHeader_1{height: 30%;}
        #qnaHeader_2{
            height: 70%;
            
        }

        #qnaContent>div {   
            float: left;
        }

        #qnaHeader_2>table{
            width: 100%;
            height: 100%;
            border-top : 2px solid yellowgreen;
        }

        #qnaHeader_2>table th {text-align: center;}
        #qnaHeader_2>table input { margin-left: 10px;}

        #qnaContent>textarea {
            width: 100%;
            height: 100%;
        }

    </style>

</head>
<body>
<%@ include file="../common/menubar.jsp" %>	
	<form action="<%=broccoli %>/qnaEnroll.qa" method="POST">
     <div class="wrap">
        <div id="qnaHeader">
            
            <div id="qnaHeader_1">
                PRODUCT Q&A
                <ul style="margin-bottom: 0; margin-top: 5px;">
                    <li>상품에 대한 문의를 남기는 공간입니다. 해당 게시판의 성격과 다른 글은 사전동의 없이 담당 게시판으로
                        이동될 수 있습니다.</li>
                    <li>배송관련, 주문(취소/교환/환불)관련 문의 및 요청사항은 마이컬리 내 1:1 문의에 남겨주세요.</li>
                </ul>

            </div>
            
           
            <div id="qnaHeader_2" >

                <table  id="qnaTable">
                    <tr>
                        <th class="table-success" width="150">작성자</th>
                        
                        <td><input type="text" name="userName" style="width: 40%;" value="<%=login.getMemId() %>" readonly></td>
                    </tr>
                    <tr>
                        <th class="table-success">이메일</th>
                        <td><input type="email" name="userEmail" style="width: 40%;" value="<%=login.getEmail() %>" readonly></td>
                    </tr>
                    <tr>
                        <th class="table-success">핸드폰</th>
                        <td><input type="phone" name="phone" style="width: 40%;" value="<%=login.getMobile() %>" readonly></td>
                    </tr>
                    <tr>
                        <th class="table-success">비밀글</th>
                        <td><input type="checkbox" name="secretYn" id="secretYn" ><label for="secretYn">비밀글</label></td>
                    </tr>
                    <tr>
                        <th class="table-success">제목</th>
                        <td><input type="text" name="qnaTitle" style="width: 90%;"></td>
                    </tr>
                </table>

            </div>
        </div>

        <div id="qnaContent">

            <textarea name="qnaDetail" id="qnaText"  style="resize: none;">
            
            </textarea>
            
        </div>
		
        <div id="qnaFotter" align="center" style="margin-top: 10px;">
            <button type="submit" class="btn btn-success btn-sm">등록하기</button>
            <button type="button" onclick="history.back();" class="btn btn-secondary btn-sm" >뒤로가기</button>
        </div>
		
   
    </div>
     </form>
    
<%@ include file="../common/footer.jsp"%>
</body>
</html>