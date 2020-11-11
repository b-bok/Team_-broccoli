<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String broccoli = request.getContextPath();
	String alertMsg = (String)session.getAttribute("alertMsg");
%>
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

  /* 탑바 */
  .topnav {
    overflow: hidden; 
    /*position: fixed;*/
    width: 100%;
    background-color:gray;
    }

  .topnav a {
    float: left;
    color: #ffffff;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    font-size: 20px;
    }

  .topnav a:hover {
    background-color: #ffffff;
    color:#08a045;
    }

  .topnav a.active {
    background-color: #4CAF50;
    color: white;
    }

  .topnav-right {
    float: right;
    }

  /* 좌측사이드바 */
  @font-face {
    font-family: sansation, 'Single Day', cursive;
    src: url(sansation_light.woff);
  }

  body {
    font-family: sansation;
    font-weight: 400;
  }
  .sidenav h2, .sidenav h3{
    font-family: 'Single Day';
    color: white;
  }
  .sidenav {
    overflow-x: hidden;
    height: 100%;
    width: 260px;
    position: fixed;
    z-index: 1;
    left: 0;
    background-color: gray; 
    padding-top: 8px;
    padding-left: 8px;
  }

  .sidenav a, .dropdown-btn {
    padding: 6px 8px 6px 16px;
    text-decoration: none;
    font-size: 20px;
    background-color:gray;
    color: #ffffff;
    display: block;
    border: none;
    background: none;
    width: 100%;
    text-align: left;
    cursor: pointer;
    outline: none;
  }

  /* On mouse-over */
  .sidenav a:hover, .dropdown-btn:hover {
    color: lightgray;
  }

  .active {
    background-color:white;
    color: #08a045;
  }

  /* Dropdown container (hidden by default). Optional: add a lighter background color and some left padding to change the design of the dropdown content */
  .dropdown-container {
    display: none;
    background-color:gray;
    padding-left: 8px;
  }
  .dropdown-container a{
    font-size:15px
  }

  /* Optional: Style the caret down icon */
  .fa-caret-down {
    float: right;
    padding-right: 8px;
  }

/* 
  최종 인덱스 파일에서 다 인클루드 시켜보고 삭제하기 
  .main{
    margin-left: 250px;
    margin-top: 100px;
    font-size: 20px;
    padding: 0px 10px;
  }
 */

  /* Some media queries for responsiveness */
  @media screen and (max-height: 450px) {
    .sidenav {padding-top: 15px;}
    .sidenav a {font-size: 18px;}
  }
  </style>
</head>
<body>

  <!-- 탑바 -->
  <div class="topnav">
    <div class="topnav-right">
      <a href="#search"><a href="#"><span class="fa fa-fw fa-user" style="font-size: 24px;"></span> 관리자정보</a>
      <a href="<%=broccoli%>"><span class="glyphicon glyphicon-log-in"></span> 로그아웃</a>
    </div>
  </div>
  
  
  <!-- 사이드바 -->
  <div class="sidenav">
    <div class="container-fluid">
      <a href="<%=broccoli%>/views/admin/dashboard.jsp"> <h2>브로콜리대쉬보드</h2></a><br>
    </div>
    <button class="dropdown-btn"><i class="fa fa-fw fa-user"></i>&nbsp;회원관리 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-container"> 
      <a href="<%=broccoli%>/members.admin?currentPage=1">&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-angle-double-right"></i> 회원리스트</a>
      <a href="<%=broccoli%>/selectBlackCon.admin?currentPage=1">&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-angle-double-right"></i> 블랙컨슈머리스트</a>
    </div>
    
    <button class="dropdown-btn"><i class="fa fa-product-hunt"></i>&nbsp; 상품관리 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-container">
      <a href="<%=broccoli%>/enrollProduct.admin">&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-angle-double-right"></i> 상품등록/수정/삭제</a>
      <a href="<%=broccoli%>/selectProduct.admin?currentPage=1">&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-angle-double-right"></i> 상품조회</a>
      <a href="#">&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-angle-double-right"></i> 재고관리</a>
      <a href="<%=broccoli%>/productQnaList.admin?currentPage=1">&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-angle-double-right"></i> 상품 문의관리</a>
      <a href="<%=broccoli%>/eventList.admin">&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-angle-double-right"></i> 이벤트 상품관리</a>
      <a href="#">&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-angle-double-right"></i> 이벤트 등록및수정</a>
    </div>

    <button class="dropdown-btn"><i class="fa fa-table"></i>&nbsp; 현황관리 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-container">
      <a href="#">&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-angle-double-right"></i> 결제내역 전체조회</a>
      <a href="#">&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-angle-double-right"></i> 문의관리</a>
      <a href="#">&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-angle-double-right"></i> 이벤트 상품관리</a>
      <a href="#">&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-angle-double-right"></i> 이벤트 등록및수정</a>
    </div>
    
    <button class="dropdown-btn"><i class="fa fa-truck"></i>&nbsp; 배송관리 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-container">
      <a href="#">&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-angle-double-right"></i> 배송현황</a>
      <a href="#">&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-angle-double-right"></i> 운송장등록</a>
    </div>
    
    <button class="dropdown-btn"><i class="fa fa-fw fa-wrench"></i> 리뷰관리 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-container">
      <a href="<%=broccoli%>/selectReview.admin?currentPage=1">&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-angle-double-right"></i> 리뷰 전체조회</a>
      <a href="<%=broccoli%>/selectRecipe.admin?currentPage=1">&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-angle-double-right"></i> 레시피 전체조회</a>
      <a href="<%=broccoli%>/selectReport.admin?currentPage=1">&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-angle-double-right"></i> 신고 전체조회</a>
    </div>
          
    <button class="dropdown-btn"><i class="fa fa-feed"></i> &nbsp; CS관리 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-container">
      <a href="<%=broccoli%>/contactManage.admin">&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-angle-double-right"></i> 문의관리</a>
      <a href="<%=broccoli%>/noticeListView.admin">&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-angle-double-right"></i> 공지사항</a>
      <a href="#">&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-angle-double-right"></i> FAQ 관리</a>
    </div>
    
</div>
  <script>
    /* Loop through all dropdown buttons to toggle between hiding and showing its dropdown content - This allows the user to have multiple dropdowns without any conflict */
    var dropdown = document.getElementsByClassName("dropdown-btn");
    var i;
    
    for (i = 0; i < dropdown.length; i++) {
      dropdown[i].addEventListener("click", function() {
      this.classList.toggle("active");
      var dropdownContent = this.nextElementSibling;
      if (dropdownContent.style.display === "block") {
      dropdownContent.style.display = "none";
      } else {
      dropdownContent.style.display = "block";
      }
      });
    }
    </script>

</body>
</html>