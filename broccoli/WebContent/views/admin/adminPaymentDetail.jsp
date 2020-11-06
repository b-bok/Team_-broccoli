<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>브로콜리 관리자 대쉬보드 메뉴바</title>
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

  <!-- 사이드바 css -->
  <link href="https://fonts.googleapis.com/css2?family=Single+Day&display=swap" rel="stylesheet">


  <style>
  
  /* 전체구조 */
  .all{width:1000px; height:800px; box-sizing: border-box;}
  .all div{width:100%;}
  .header{height:10%;}
  .body{height:90%;}

  /* 조건, 검색 년월일 */
  .header > #searchA{width:30%; float:left;}
  .header > #searchB{width:40%; float:left;}

  /* 상품 상세정보 */
  .productInf{       
    width:900px;
    height:200px;
    padding:10px;
    margin-left:10px;
    border:1px solid #f2f2f2;
  }
  /* 상품 상세정보 이미지 넣을 공간 */
  #imgSrc{width:120px; height:140px; border:1px solid green;}
  

  </style>
</head>
<body>


    <%@ include file="adminNav.jsp" %>

    <br>

    <form action="paymentDetail.admin">

    <div class=all style="margin-left: 300px;">

    <div class="outer1">
      <h3 id="titleText" style="float: left;">결제내역 상세조회 </h3>        

    </div>

    
      <select name="select" id="option" style="float: right; margin-top: 25px;" > 
          <option><a href="checkAll">전체조회</a></option>
          <option selected><a href="checkDetail">상세조회</a></option>
      </select>  
    <br><br>
    <hr>
     
    <br>
    
    
    <div class="header" >

      <!-- 조회기간 및 검색기능 -->
      <div id="searchA">
         상세조건 <input type="text" value="결제일" style="text-align: right;" disabled> 
      </div>

      <div id="searchB">
          <input type="date" name="startDate" value="sysdate" disabled> ~ <input type="date" name="endDate" disabled>
      </div>
      <br>
    </div>
    <hr>
    
    <div class="body">
        
    <input type="text" value="2020-10-01 (21시 03분)" disabled><br>
    <div class="productInf">
        <h6>유기농 브로콜리 200g </h6>
            <!-- 이미지 -->
            <div id="imgSrc"><a href="이미지경로">IMG</a></div> 
    </div>
    <input type="text" value="2020-10-01 (21시 03분)" disabled><br>
    <div class="productInf">
        <h6>유기농 브로콜리 200g </h6>
            <!-- 이미지 -->
            <div id="imgSrc"><a href="이미지경로">IMG</a></div> 
    </div>
    <input type="text" value="2020-10-01 (21시 03분)" disabled><br>
    <div class="productInf">
        <h6>유기농 브로콜리 200g </h6>
            <!-- 이미지 -->
            <div id="imgSrc"><a href="이미지경로">IMG</a></div> 
    </div>

  </div>
    

</form>
</body>
</html>