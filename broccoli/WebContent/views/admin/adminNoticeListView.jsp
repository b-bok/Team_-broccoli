<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>브로콜리 공지사항 조회페이지(관리자)</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 대쉬보드에서 쓸 공통 css -->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/r/bs-3.3.5/jq-2.1.4,dt-1.10.8/datatables.min.css">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&family=Nanum+Myeongjo:wght@800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript" src="https://cdn.datatables.net/r/bs-3.3.5/jqc-1.11.3,dt-1.10.8/datatables.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script> 
<!-- 엔딩 :  대쉬보드에서 쓸 공통 css --> 
  <style>

 
  /* 전체적인 ui */
  .list-area thead tr th{
    padding:10px;
    text-align: center;
  }
  tbody tr td{
    text-align: center;
    padding:10px;
  }
  /* 전체적인 ui end -- */
  /* 공지사항 제목만 클릭할 수 있게 포인터와 호버장착 */

  /*별다른 기능없음 css */
  ul{list-style: none;}
  #ok{text-align: center;}
  hr{
      background-color: greenyellow;
      height:2px;
      margin:auto;
  }

  .all1{width:100%; height:400px; box-sizing: border-box;}
  .all1 div{width:100%;}
  .header{height:10%;}
  .body{height:90%;}
  .header2{height:100%;}
  .header > #searchA{width:30%; float:left;}
  .header > #searchB{width:40%; float:left;}
  .all1 .header1{width:40%; float:left; padding: 5px;}
  .all1 .header2{width:55%; float:left; padding: 5px; margin-right: 10px;}
  
  form> button{
      display:flex;
      justify-content: center;
  }
  #wrapper {
  display: flex;
  justify-content: center;
  }
  #wright{
      float:right;
      margin-right: 100px;
  }

  </style>
</head>
<body>

    <%@include file =adminNav.jsp %>

	<form action="noticeListView.admin">

    <div class=all style="margin-left: 300px;">
        
    <!-- 타이틀이요~ -->
    <div class="outer1">
        <select name="select" id="option" style="float: right; margin-top: 25px; margin-right:300px;" > 
            <option><a href="">공지사항수정</a></option>
            <option><a href="">공지사항삭제</a></option>
        </select>  
      <h3 id="titleText" style="float: left;">공지사항 조회</h3>        
    </div>
    
    <br><br>
    <br><br>
    <br>
    <div id="qnaCategory" align="left">
        
        *분류 &nbsp;&nbsp;
        <select name="qCategory" id="qCategory">
            
            <!-- Member, Payment, Cencle, Delivery  -->
            <option value="select" selected>선택</option>
            <option value="aboutM">회원 문의</option>
            <option value="aboutP">주문/결제</option>
            <option value="aboutC">취소/교환/환불</option>
            <option value="aboutD">배송문의</option>
        </select>

        <form action ="test" method ="post" align="left;">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            * 검색어 &nbsp;&nbsp;

            <input type="text" name="keyword" id="qna_Keyword"> 
            <input type="submit" value ="검색" name="qna_SearchList" id="qna_SearchList">
            
        </form>

    </div>
    <br>
    <hr>
    
    <div class="outer">
    
    <!-- 문의 검색시 사용하는 카테고리 옵션입니다 -->
    
    <br><br>
    
    <!-- 리스트 제목입니다. -->
    
    <table class="list-area">
        <thead>
            <tr>
              <th width="100">글번호</th>
              <th width="200">분류</th>
              <th width="500">제목</th>
              <th width="300">작성일</th>
              <th width="300">조회수</th>           
          </tr>
      </thead>
      <tbody>
          

          
          <!--2. 조회결과가 있을 경우 -->
          
          <tr>
              <td >2</td>
              <td>admin</td>
              <td id="title">공지사항제목입니다.</td>
              <td>2020-10-20</td>
              <td>37</td>
              
          </tr>
          <tr >
              <td>1</td>
              <td>admin</td>
              <td id="title">사이트 열었어요.</td>
              <td>2020-01-01</td>
              <td>1523</td>
              
            </tr>
            <tr>
                <td>1</td>
                <td>admin</td>
                <td id="title">사이트 열었어요.</td>
                <td>2020-01-01</td>
                <td>1523</td>
               
            </tr>
            <tr>
                <td>1</td>
                <td>admin</td>
                <td id="title">사이트 열었어요.</td>
                <td>2020-01-01</td>
                <td>1523</td>
            
            </tr>
            <tr>
                <td>1</td>
                <td>admin</td>
                <td id="title">사이트 열었어요.</td>
                <td>2020-01-01</td>
                <td>1523</td>

            </tr>
            <tr>
                <td>1</td>
                <td>admin</td>
                <td id="title">사이트 열었어요.</td>
                <td>2020-01-01</td>
                <td>1523</td>           
            </tr>
            <tr>
                <td>1</td>
                <td>admin</td>
                <td id="title">사이트 열었어요.</td>
                <td>2020-01-01</td>
                <td>1523</td>           
            </tr>

            <tr>
                <td>1</td>
                <td>admin</td>
                <td id="title">사이트 열었어요.</td>
                <td>2020-01-01</td>
                <td>1523</td>           
            </tr>
            <tr>
                <td>1</td>
                <td>admin</td>
                <td id="title">사이트 열었어요.</td>
                <td>2020-01-01</td>
                <td>1523</td>           
            </tr>
            <tr>
                <td>1</td>
                <td>admin</td>
                <td id="title">사이트 열었어요.</td>
                <td>2020-01-01</td>
                <td>1523</td>           
            </tr>


        
      </tbody>
    </table>
    <br>
    <div id="pagingBar" align="center" style="margin-right:300px;">

        <a href="">&lt;</a> <a href="">1</a> <a href="">2</a> <a href="">3</a>
        <a href="">4</a> <a href="">5</a> <a href="">6</a> <a href="">7</a>
        <a href="">8</a> <a href="">9</a> <a href="">10</a> <a href="">&gt;</a>

    </div>
    <br>
    <div id="wright">
        <button type="submit" class="btn btn-success" class="btn"><a href="" style="text-decoration: none; color:white;">글쓰기</a></button>

    </div>
            
    </div>

</div>

</div>

  
</form>
</body>
</html>