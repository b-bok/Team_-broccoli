<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

  <style>

    .menu {
        background: lightgray;
        display: table-cell; 
        /* 셀모양 처럼 옆으로 배열 */
        height: 50px;
        width: 200px; 
    }

    .menu a {
        color: black;
        text-decoration: none;
        /* border: 1px solid red; */
        display: block;
        width: 100%;
        height: 100%;
        line-height: 50px;

    }   

    .menu a:focus {
        background: white;
    }
    </style>



</head>
<body>


    <div class="navwrap" align="center">
      
       <div class="menu"><a href="#list1">상품설명</a></div>
       <div class="menu"><a href="#list2">상품이미지</a></div>
       <div class="menu"><a href="#list3">고객후기</a></div>
       <div class="menu"><a href="#list4">상품레시피</a></div>
       <div class="menu"><a href="#list5">상품문의</a></div>

    </div>

	
</body>
</html>