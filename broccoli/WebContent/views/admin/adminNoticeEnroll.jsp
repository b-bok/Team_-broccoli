<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>브로콜리 공지사항 등록페이지</title>
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

  </style>
</head>
<body>

    <%@include file =adminNav.jsp %>

	<form action="enrollNotice.admin">

    <div class=all style="margin-left: 300px;">
        
    <!-- 타이틀이요~ -->
    <div class="outer1">
        <select name="select" id="option" style="float: right; margin-top: 25px; margin-right:300px;" > 
            <option><a href="">공지사항수정</a></option>
            <option><a href="">공지사항삭제</a></option>
        </select>  
      <h3 id="titleText" style="float: left;">공지사항 등록</h3>        

    </div>
    <br><br>
    <br><br>
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
              <th width="500">제목</th>
              <th width="200">작성자</th>
              <th width="300">작성일</th>
              <th width="300">조회수</th>           
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
              
          </tr>
          <tr >
              <td>1</td>
              <td id="title">사이트 열었어요.</td>
              <td>admin</td>
              <td>2020-01-01</td>
              <td>1523</td>
              
            </tr>
            <tr>
                <td>1</td>
                <td id="title">사이트 열었어요.</td>
                <td>admin</td>
                <td>2020-01-01</td>
                <td>1523</td>
               
            </tr>
            <tr>
                <td>1</td>
                <td id="title">사이트 열었어요.</td>
                <td>admin</td>
                <td>2020-01-01</td>
                <td>1523</td>
            
        </tr>
        <tr>
            <td>1</td>
            <td id="title">사이트 열었어요.</td>
            <td>admin</td>
            <td>2020-01-01</td>
            <td>1523</td>
            
        </tr>
        <tr>
            <td>1</td>
            <td id="title">사이트 열었어요.</td>
            <td>admin</td>
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
    <hr><br>
    
    <div class="all1">
        
        <div class="header1">
            <p>ㅣ <b>공지사항 제목</b></p> 
            <ul>
                <div class="kind">  
                    분류 : 
                        <select name="">
                            <option value="" name="entire">전체</option>
                            <option value="" name="event">이벤트</option>
                            <option value="" name="notice">공지</option>
                            <option value="" name="system">시스템</option>
                        </select>
                </div><br>

                <li>
                제목 : 
                <textarea id="nTitle" cols="50" rows="7" style="resize: none;"></textarea>
            </li>

        </ul>

    </div>
    
    <div class="header2">
        <p>ㅣ <b>공지사항 내용</b></p>
        <ul>
            <li >
                문의유형 :
                <input type="text" name="category" value="category">
            </li>

        </ul>
        <ul>
            <li>
                내용 :<br>
                <textarea name="nContent" cols="80" rows="12" style="resize: none;"></textarea>
            </li>
            <br>
            <button type="submit" class="btn btn-success" class="btn">확인</button>
            <button type="reset" class="btn btn-dark" class="btn">초기화</button>
        </div>

</div>

  </div>

  
</form>
</body>
</html>