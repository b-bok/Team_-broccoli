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

  <!-- 사이드바 css -->
  <link href="https://fonts.googleapis.com/css2?family=Single+Day&display=swap" rel="stylesheet">


  <style>

 .list-area thead tr th{
    padding:10px;
    text-align: center;
  } 
  tbody tr td{
    text-align: center;
  }

  .menu a{cursor:pointer;}
  .menu .hide{display:none;}
  ul{
    list-style: none;
  }
  #ok{
    text-align: center;
    
  }
  tbody tr td{
    text-align: center;
    padding:10px;
  }
  #hideMenu div ul{background-color: green;}
  tbody tr #title:hover{
      background-color: honeydew;
      cursor: pointer;
  }

  </style>
</head>
<body>
	
	<%@ include file="adminNav.jsp" %>

    <form action="ContactList.admin">

    <div class=all style="margin-left: 300px;">

    <div class="outer1">
      <h3 id="titleText" style="float: left;">문의 관리 </h3>        

    </div>
    <br><br>
    <br><br>
    <p>1:1 문의 내역</p>
    <br><hr>

    <!-- 클릭시 드롭되는 메뉴 -->
    <form action="" id="hideMenu" method="POST">
    <div>
      <ul>
        <li class="menu">
            <a><img src="../src/img/201910111090774452_8.jpg" style="width:50px;"></a>
            <ul>
                <li>
                  구분<br>
                 <select name="">
                    <option value="" name="Product_Name">상품명</option>
                    <option value="" name="mem_Id">아이디</option>
                </select>
                </li>
                <br>
                <li>
                  문의일<br>
                  <input type="date" name="startDate"> ~ <input type="date" name="endDate">
                </li>
                <br>
                <li>
                  검색어<br>
                  <select name="">
                    <option value="" name="product_Name1">상품명</option>
                    <option value="" name="mem_Id1">아이디</option>
                  </select>
                  <input type="text" name="product_name or mem_Id">
                </li>
              </ul>
        </li>
        <br><br><br>
          <input type="submit" id="ok" value="검색" class="btn btn-success">
          <input type="reset" id="notOk" value="초기화" class="btn btn-secondary">
      </ul>
    </div>
    
    
  </form>
  <script>
    // html dom 이 다 로딩된 후 실행
    $(document).ready(function(){
        // menu 클래스 바로 하위에 있는 a 태그를 클릭했을때
        $(".menu>a").click(function(){
            var submenu = $(this).next("ul");
 
            // submenu 가 화면상에 보일때는 위로 보드랍게 접고 아니면 아래로 보드랍게 펼치기
            if( submenu.is(":visible") ){
                submenu.slideUp();
            }else{
                submenu.slideDown();
            }
        });
    });
</script>

    <hr>
    
  <div class="outer">

  <table class="list-area">
      <thead>
          <tr>
              <th width="100">ID</th>
              <th width="400">제목</th>
              <th width="200">작성자</th>
              <th width="100">문의유형</th>
              <th width="150">작성일</th>
              <th width="200">처리상태</th>

          </tr>
      </thead>
       <tbody>
          <!--1. 공지사항이 없을경우(조회결과가 없을 경우)-->
          
          <!-- <tr>
              <td colspan="5">공지사항이 존재하지 않습니다.</td>
          </tr> -->



          <!--2. 조회결과가 있을 경우 -->

          <tr>
              <td >user01</td>
              <td id="title">공지사항제목입니다.</td>
              <td>admin</td>
              <td>회원</td>
              <td>2020-10-20</td>
              <td>Y</td>

          </tr>
          <tr >
              <td>user01</td>
              <td id="title">사이트 열었어요.</td>
              <td>admin</td>
              <td>회원</td>
              <td>2020-01-01</td>
              <td>Y</td>

          </tr>
          <tr>
            <td>user01</td>
            <td id="title">사이트 열었어요.</td>
            <td>admin</td>
            <td>회원</td>
            <td>2020-01-01</td>
            <td>Y</td>

          </tr>
          <tr>
            <td>user01</td>
            <td id="title">사이트 열었어요.</td>
            <td>admin</td>
            <td>회원</td>
            <td>2020-01-01</td>
            <td>Y</td>

        </tr>
          

      </tbody>
  </table>
  
  <br><br><br>


  </div>

  
 

</form>

</body>
</html>