<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>상품수정하기 화면</title>
      <!-- 대쉬보드에서 쓸 공통 css -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"> 
  <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&family=Nanum+Myeongjo:wght@800&display=swap" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> 
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <!-- 엔딩 :  대쉬보드에서 쓸 공통 css --> 
  <style>
    .outer{
      background-color: rgb(227, 245, 199);  /*배경색은 임의로 설정함*/
      width: 1000px;
      margin: auto;
      margin-top: 50px;
    }
    .list-area{
        background-color: white;
        }
    .list-area>thead{
    	background-color: gainsboro;
    	text-align: center;
    	}
    .list-area td, td, th{
        margin:auto;
        border: 1px solid gray;}
    .list-area tbody tr:hover{
        background-color: greenyellow;
        cursor: pointer;
    }
    #updateListPForm input{margin:5px;}
    .paging-area a{
            text-decoration: none;  /* 및줄 없애기 */
            color: black;
            margin: 5px;
        }
  </style>  
</head>
<body>
    
	<!--  대쉬보드 추가 -->
	<%@ include file="adminNav.jsp" %>

    <div class="outer" style="margin-left:300px;">
    
  	<select onchange="location.href=this.value" style="margin-left: 50px; margin-top: 50px;">
      
      <option value="<%=broccoli%>/updateProduct.admin">상품수정/삭제</option>
      <option value="<%=broccoli%>/enrollProduct.admin">상품등록</option>
    
    </select>
    
        <form action="" id="updateListPForm" method="POST" align="center">
            <br>
            <h2>상품 수정하기</h2>

            
            <select name="" id="">
                <option value="">상품명</option>
                <option value="">업체명</option>
            </select>

             <input type="text" placeholder="상품명을 입력하세요."> 
             <button type="button" >검색</button>

             <br>
             <br>
             <h9>수정할 상품을 선택하세요.</h9>
             <table align="center" class="list-area">
                 <thead>
                    <th width="70">번호</th>
                    <th width="200">상품코드</th>
                    <th width="200">상품명</th>
                    <th width="70">재고</th>
                    <th width="200">업체명</th>
                 </thead>
                 <tbody>
                    <tr>
                        <td> 51 </td>
                        <td>880232142</td>
                        <td>하남쭈꾸미</td>
                        <td>58</td>
                        <td>하남</td>
                    </tr>
                    <tr>
                        <td>50</td>
                        <td>54365</td>
                        <td>주꾸미덮밥</td>
                        <td>32</td>
                        <td>ch제일에이치</td>
                    </tr>
                    <tr>
                        <td>49</td>
                        <td>432543</td>
                        <td>한돈 불고기</td>
                        <td>32</td>
                        <td>신세계식품</td>
                    </tr>
                    <tr>
                        <td>48</td>
                        <td>67346</td>
                        <td>양배추</td>
                        <td>34</td>
                        <td>신진식품</td>
                    </tr>
                    <tr>
                        <td>47</td>
                        <td>34572</td>
                        <td>사과 5봉</td>
                        <td>45</td>
                        <td>경북농협</td>
                    </tr>
                 </tbody>
             </table>

             <br>

              <div>
                 <button class="btn btn-warning btn-sm"><a href="<%= broccoli %>/updateProductForm.admin">상품 선택시 수정양식으로 이동(임의로 만든 버튼)</a></button>
                 <button class="btn btn-danger btn-sm" onclick="deleteProduct();">삭제하기</button>
            </div>
             <br>
             
             <script>
             <!-- 상품 선택시 수정양식으로 이동 -->
			$(function(){
				$(".list-area>tbody>tr").click(function(){
					location.href = "<%=broccoli%>/updateProductForm.admin"
				});
			});
             
             <!-- 상품 삭제버튼시 컨펌창 출력 -->
               function deleteProduct(){
                $(function(){
                   if(confirm("상품을 삭제하시겠습니까?")){
                        
                   }else{

                   }

                });
               };
            </script>

        </form>

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
    </div>
</body>
</html>