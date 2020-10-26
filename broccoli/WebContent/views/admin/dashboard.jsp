<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자페이지에 오신걸 환영합니다.</title>
<!-- 대쉬보드에서 쓸 공통 css -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&family=Nanum+Myeongjo:wght@800&display=swap">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!-- 엔딩 :  대쉬보드에서 쓸 공통 css -->

<style>

/* 공통요소 세팅 */
* {
  box-sizing: border-box;
}

.container{
  padding-top: 20px;
  padding-bottom: 100px;
}

/* 카드 세팅 */
.column {
  float: left;
  width: 25%;
  padding: 0 10px;
}

/* Remove extra left and right margins, due to padding */
.row {
  margin: 0 -5px;
  padding-bottom:20px
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive columns */
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
    display: block;
    margin-bottom: 20px;
  }
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  padding: 16px;
  text-align: center;
  background-color: white;
}

.bg-c-1 {
    background: #e8fccf;
}

.bg-c-2 {
    background: #96e072;
}

.bg-c-3 {
    background: #3da35d;
    color:white;
}

.bg-c-4 {
    background: #3e8914;
    color:white;
}

.bg-c-5 {
    background: #f1f1f1;
}

.card2 { 
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  padding: 4px 4px;
  width: 100%;
}

</style>
</head>
<body>
<%@ include file="adminNav.jsp" %>

<div class="container"   style="margin-left:300px;"">
  <div class="content1"">
    <div class="row">
      <div class="column">
        <div class="card bg-c-1">
          <h3>가입회원수</h3>
          <p>금일 : XXXXX명</p>
          <p>누적건수 : XXXX명</p>
        </div>
      </div>

      <div class="column">
        <div class="card bg-c-2">
          <h3>주문</i></h3>
          <p>금일 : XXXXX건</p>
          <p>누적금액 : XXXX건</p>
        </div>
      </div>

      <div class="column">
        <div class="card bg-c-3">
          <h3><s>배송완료</s>주문금액 </h3>
          <p>금일 : XXXXX<s>건</s> 원</p>
          <p>누적건수 : XXXX<s>건</s> 원</p>
        </div>
      </div>

      <div class="column">
        <div class="card bg-c-4">
          <h3>1:1 문의</h3>
          <p>금일 : XXXXX건</p>
          <p>누적건수 : XXXX건</p>
        </div>
      </div>
    </div>

  <div class="content2">
    <div class="row">
      <div class="column">
        <div class="card bg-c-1">
          <h3>리뷰</h3>
          <p>금일 : XXXXX건</p>
          <p>누적건수 : XXXX건</p>
        </div>
      </div>

      <div class="column">
        <div class="card bg-c-2">
          <h3>레시피</h3>
          <p>금일 : XXXXX건</p>
          <p>누적건수 : XXXX건</p>
        </div>
      </div>

      <div class="column">
        <div class="card bg-c-3">
          <h3>좋아요</i></h3>
          <p>금일 : XXXXX건</p>
          <p>누적건수 : XXXX건</p>
        </div>
      </div>

      <div class="column">
        <div class="card bg-c-4">
          <h3>신고건수</h3>
          <p>금일 : XXXXX건</p>
          <p>누적건수 : XXXX건</p>
        </div>
      </div>

    </div>
  </div>

  </div>
  <div class = "container"><h1>여기는 게시판 보드가 노출되는 곳입니다!! 작업예정!! </h1></div>
</body>
</html>