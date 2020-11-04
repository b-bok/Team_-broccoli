<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String broccoli = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<title>브로콜리 관리자 대쉬보드 메뉴바</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- 대쉬보드에서 쓸 공통 css -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"> 
  <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&family=Nanum+Myeongjo:wght@800&display=swap" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> 
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <!-- 엔딩 :  대쉬보드에서 쓸 공통 css --> 
 <style>

  
/* 전체구조 */
  .all{width:1000px; height:800px; box-sizing: border-box;}
  .all div{width:100%;}
  .header{height:15%;}
  .neck{height:10%}
  .nav{height:5%}
  .body{height:60%; background-color:#f2f2f2;}
  .footer{height:10%}

/* 컨텐츠구조 */
  .header > #searchA{width:30%; float:left;}
  .header > #searchB{width:40%; float: right;}
  .nav > div{padding:5px; text-align: center;}
  .nav > #orderNo{width:25%; float: left;}
  .nav > #mem_Id{width:25%; float: left;}
  .nav > #payDay{width:25%; float:left;}
  .nav > #shipping{width:25%; float: left;}
  .nav > h4{margin: 10px;}

/* 폼 버튼(submit) */
  form button{
    color:green;
    margin: auto;
  }
  
  

  </style>
</head>
<body>


    <%@ include file="adminNav.jsp" %>

    <br>

    <form action="manage.admin">

    <div class=all style="margin-left: 300px;">

    <div class="outer1">
      <h3 id="titleText" style="float: left;">구매 및 결제내역관리 </h3>        

    </div>

    
      <select name="selectName" id="option" style="float: right; margin-top: 25px;" > 
          <option><a href="">전체조회</a></option>
          <option><a href="">상세조회</a></option>
      </select>  
    <br><br>
    <hr>
     
    <br>
    
    
    <div class="header" >

      <!-- 조회기간 및 검색기능 -->
      <div id="searchA">
         조회기간 : <input type="text" value="결제일" style="text-align: right;"> 
        </div>
        <div id="searchB">
          <input type="date" name="startDate"> ~ <input type="date" name="endDate">
      </div>
      <br>
      <p style="text-align: right; font-size: x-small;">*최근 1년이내에 조회할 수 있습니다.</p>    
    </div>

    <div class="neck">
    상세조건 : <select name="condition">
                <option value="select.*">전체</option>
                <option value="mem_Id">구매자ID</option>
                <option value="order_No">주문번호</option>
              </select>
 
    </div>
  
    <div class="nav">
      <h4 id="listView">목록</h4>
      <div id="orderNo">주문번호</div>
      <div id="mem_Id">구매자아아디</div>
      <div id="payDay">결제일</div>
      <div id="shipping">발송처리일 </div>
    </div>
    
    <div class="body" align="center">
      <tr>
        <th></th>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <th></th>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <th></th>
        <td></td>
        <td></td>
      </tr>
    </div>

    <div class="footer" align="center">
      <div>

      </div>
      
        
      <button type="submit" class="btn btn-success btn-lg" style="margin-top:3%;">검색</button>
      
    </div>
    
    
    
  </div>
    

</form>
</body>
</html>