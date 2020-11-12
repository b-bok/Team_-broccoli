<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>브로콜리 문의관리페이지 조회</title>
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
  tbody tr #title:hover{
      background-color: honeydew;
      cursor: pointer;
  }
  /*별다른 기능없음 css */
  ul{list-style: none;}
  #ok{text-align: center;}
  hr{
      background-color: greenyellow;
      height:2px;
  }

  .all1{width:100%; height:400px; box-sizing: border-box;}
  .all1 div{width:100%;}
  .header{height:10%;}
  .body{height:90%;}
  .header2{height:100%;}
  .header > #searchA{width:30%; float:left;}
  .header > #searchB{width:40%; float:left;}
  .all1 .header1{width:40%; float:left; padding: 5px;}
  .all1 .header2{width:40%; float:right; padding: 5px; margin-right: 10px;}
  
  form> button{
      display:flex;
      justify-content: center;
  }
  #wrapper {
  display: flex;
  justify-content: center;
  }
  </style>
</head>
<body>

	<%@ include file="adminNav.jsp" %>

<form action="contactManage.admin" method="POST">

    <div class=all style="margin-left: 300px;">
        
    <!-- 타이틀이요~ -->
    <div class="outer1">
      <h3 id="titleText" style="float: left;">고객문의 관리</h3>        

    </div>
    <br><br>
    <br><br>
    <p>ㅣ <b style="font-size: large;">1:1 문의 관리</b></p>
    <br>
    <hr>
    
    <div class="outer">
    
    <!-- 문의 검색시 사용하는 카테고리 옵션입니다 -->
    <div class="kind">  
        문의유형 : 
            <select name="">
                <option value="" name="product">상품문의</option>
                <option value="" name="delivery">배송문의</option>
                <option value="" name="exchange">교환문의</option>
                <option value="" name="refund">환불문의</option>
            </select>
            <input type="submit" value="검색" class="btn btn-success btn-sm" style="margin-left: 20px;">
    </div>

    <br><br>

    <!-- 리스트 제목입니다. -->

    <table class="list-area">
      <thead>
          <tr>
              <th width="100">글번호</th>
              <th width="400">제목</th>
              <th width="200">작성자</th>
              <th width="100">조회수</th>
              <th width="150">작성일</th>
              <th width="200">처리일시</th>
              <th width="100">ID</th>
          </tr>
      </thead>
       <tbody>



          <!--2. 조회결과가 있을 경우 -->

          <tr>
              <td >2</td>
              <td id="title">공지사항제목입니다.</td>
              <td>admin</td>
              <td>37</td>
              <td>2020-10-20</td>
              <td>2020-09-01</td>
              <td>user01</td>
          </tr>
          <tr >
              <td>1</td>
              <td id="title">사이트 열었어요.</td>
              <td>admin</td>
              <td>1523</td>
              <td>2020-01-01</td>
              <td>2020-09-01</td>
              <td>user01</td>
          </tr>
          <tr>
            <td>1</td>
            <td id="title">사이트 열었어요.</td>
            <td>admin</td>
            <td>1523</td>
            <td>2020-01-01</td>
            <td>2020-09-01</td>
            <td>user01</td>
          </tr>
          <tr>
            <td>1</td>
            <td id="title">사이트 열었어요.</td>
            <td>admin</td>
            <td>1523</td>
            <td>2020-01-01</td>
            <td>2020-09-01</td>
            <td>user01</td>
        </tr>
        <tr>
            <td>1</td>
            <td id="title">사이트 열었어요.</td>
            <td>admin</td>
            <td>1523</td>
            <td>2020-01-01</td>
            <td>2020-09-01</td>
            <td>user01</td>
        </tr>
        <tr>
            <td>1</td>
            <td id="title">사이트 열었어요.</td>
            <td>admin</td>
            <td>1523</td>
            <td>2020-01-01</td>
            <td>2020-09-01</td>
            <td>user01</td>
        </tr>
      </tbody>
  </table>
<hr><br>

<div class="all1">

    <div class="header1">
        <p>ㅣ <b>고객 문의내용 상세보기</b></p> 
        <ul>
            <li>
                접수날짜 : 
                <input type="text" name="enrollDate" value="2020-11-12" readonly disabled>
            </li>

        </ul>
        <ul>
            <li>
                주문번호 :
                <input type="text" name="order_No" value="14-73033440" readonly disabled>
            </li>

        </ul>
        <ul>
            <li>
                문의유형 : 
                <input type="text" name="category" value="회원문의" readonly disabled>
            </li>
        </ul>
        <ul>
            <li>
                질문자ID :
                <input type="text" name="mem_Id" value="wlsdnjs123" readonly disabled>
            </li>
        </ul>
    </div>
    
    <div class="header2">
        <p>ㅣ <b>관리자 답변처리</b></p>
        <ul>
            <li>
                문의유형  
                <input type="text" name="category" value="회원문의" readonly disabled>
            </li>

        </ul>
        <ul>
            <li>
                답변 작성 
                <textarea name="" cols="50" rows="13" style="resize: none;"></textarea>
            </li>
            <br>
            <button type="submit" class="btn btn-success">확인</button>
            <button type="reset" class="btn btn-dark">초기화</button>
        </div>

</div>

  </div>

  
</form>
</body>
</html>