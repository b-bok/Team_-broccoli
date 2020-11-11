<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                <tr>
                    <td>120</td>
                    <td>[우리농]햅쌀</td>
                    <td>[공지]판매 중단 제품 안내</td>
                    <td>broccoli</td>
                    <td>2020-10-01</td>
                    <td>공지중</td>
                </tr>
                <tr>
                    <td>119</td>
                    <td>[소이연남]소고기쌀국수</td>
                    <td>면발의 중요성</td>
                    <td>김슬아</td>
                    <td>2020-09-01</td>
                    <td>미답변</td>
                </tr>
                <tr>
                    <td>118</td>
                    <td>썬키스트 레몬 1개</td>
                    <td>맛있나요?</td>
                    <td>김봉진</td>
                    <td>2020-08-23</td>
                    <td>미답변</td>
                </tr>
                <tr>
                    <td>117</td>
                    <td>썬키스트 레몬 1개</td>
                    <td>맛있나요?</td>
                    <td>김봉진</td>
                    <td>2020-08-23</td>
                    <td>답변 완료</td>
                </tr>
                <tr>
                    <td>116</td>
                    <td>[소이연남]소고기쌀국수</td>
                    <td>면발의 중요성</td>
                    <td>김슬아</td>
                    <td>2020-09-01</td>
                    <td>미답변</td>
                </tr>
                <tr>
                    <td>115</td>
                    <td>썬키스트 레몬 1개</td>
                    <td>맛있나요?</td>
                    <td>김봉진</td>
                    <td>2020-08-23</td>
                    <td>미답변</td>
                </tr>
                <tr>
                    <td>114</td>
                    <td>[소이연남]소고기쌀국수</td>
                    <td>면발의 중요성</td>
                    <td>김슬아</td>
                    <td>2020-09-01</td>
                    <td>미답변</td>
                </tr>
                <tr>
                    <td>113</td>
                    <td>썬키스트 레몬 1개</td>
                    <td>맛있나요?</td>
                    <td>김봉진</td>
                    <td>2020-08-23</td>
                    <td>미답변</td>
                </tr>
                <tr>
                    <td>112</td>
                    <td>[소이연남]소고기쌀국수</td>
                    <td>면발의 중요성</td>
                    <td>김슬아</td>
                    <td>2020-09-01</td>
                    <td>미답변</td>
                </tr>
                <tr>
                    <td>111</td>
                    <td>썬키스트 레몬 1개</td>
                    <td>맛있나요?</td>
                    <td>김봉진</td>
                    <td>2020-08-23</td>
                    <td>미답변</td>
                </tr>
            </tbody>
        </table>
    </div>
    
   	 <script>
	      $(function(){
	          $("#pReviewList>tbody>tr").click(function(){
	              location.href= "<%=broccoli%>/productAnswer.admin"
	              });
	      });
     </script>

    <div class="paging-area" align="center">

        <a href="">&lt; 이전</a>

        <a href="">1</a>
        <a href="">2</a>
        <a href="">3</a>
        <a href="">4</a>
        <a href="">5</a>
        <a href="">6</a>
        <a href="">7</a>
        <a href="">8</a>
        <a href="">9</a>
        <a href="">10</a>

        <a href="">다음 &gt;</a>
    
    </div>
</body>
</html>