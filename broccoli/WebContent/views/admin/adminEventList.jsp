<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트 상품관리</title>
<!-- 대쉬보드에서 쓸 공통 css -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"> 
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&family=Nanum+Myeongjo:wght@800&display=swap" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<!-- 엔딩 :  대쉬보드에서 쓸 공통 css --> 
	<style>
	    .outer{
	        border: 1px solid turquoise;
	        border-radius: 3%;
	        width: 900px;
	      margin: auto;
	      margin-top: 50px;
	    }
	    .inner{
	      background-color: rgb(227, 245, 199);  /*배경색은 임의로 설정함*/
	      width: 800px;
	      margin: auto;
	      margin-top: 10px;
	  }
	  #terms{margin-left: 100px;}
	    #eventTable{
	        border:1px solid black;
	        text-align: center;
	        background-color: white;
	    }
	    #eventTable td, #eventTable th{
	      border:1px solid black;
	      text-align: center;
	    }
	    #eventTable>thead{background-color:gainsboro}
	    #eventTable tbody tr:hover{
	    background-color: greenyellow;
	    cursor: pointer;
	    }
	    .paging-area a{
	          text-decoration: none;  /* 및줄 없애기 */
	          color: black;
	          margin: 5px;
	      }
	</style>       
</head>
<body>
    
    <!-- 대쉬보드 추가하기 -->
     <%@ include file="adminNav.jsp" %>


    <div class="outer" style="margin-left: 300px; margin-top: 50px;">

        <h4 style="margin-left: 100px;">이벤트 상품 관리</h4>
        <br>

        <form action="" method="POST">
        이벤트 기간 
        <input type="date"> ~ <input type="date">
        <br><br>
        이벤트명 검색
        <input type="text"> <button type="submit">검색</button> 
        </form>
        <br>
        <table id="eventTable" border="1">
            <thead>
                <tr>
                    <th>선택</th>
                    <th>No</th>
                    <th>이벤트명</th>
                    <th>이벤트내용</th>
                    <th>시작일</th>
                    <th>종료일</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><input type="checkbox"></td>
                    <td>5</td>
                    <td>제주 해산물 특집</td>
                    <td>제주도에서만 공수해온 해산물을 맛보세요!</td>
                    <td>2020-10-01</td>
                    <td>2020-11-01</td>
                </tr>
                <tr>
                    <td><input type="checkbox"></td>
                    <td>4</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td><input type="checkbox"></td>
                    <td>3</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td><input type="checkbox"></td>
                    <td>2</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td><input type="checkbox"></td>
                    <td>1</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </tbody>
        </table>
    </div>

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