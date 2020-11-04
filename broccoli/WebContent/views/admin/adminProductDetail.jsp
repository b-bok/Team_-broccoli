<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
   <title>상품상세조회 결과</title>
  <!-- 대쉬보드에서 쓸 공통 css -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"> 
  <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&family=Nanum+Myeongjo:wght@800&display=swap" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> 
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <!-- 엔딩 :  대쉬보드에서 쓸 공통 css -->    
   
    <style>
        table{
            width: 800px;
            height: 600px;
        }
        td{text-align: center;}
    </style>
</head>
<body>
    
        <!-- 대쉬보드 추가-->
     <%@ include file="adminNav.jsp" %> 
	
	
    <div style="margin-left: 300px; margin-top: 50px; margin-bottom: 0;">
        <button><a href="<%= broccoli %>/selectProduct.admin">카테고리별 조회</a></button>
        <button><a href="<%= broccoli %>/selectDetailProduct.admin">상세 조회</a></button>
    </div>

    <div class="outer" style="margin-left: 300px;">

        <button onclick="history.back();">&lt; 이전화면</button> &nbsp;  <h4>상품상세 조회</h4>

        <hr>

        <table border="1px">
           
                <tr>
                    <td style="width: 40%;"  rowspan="3" colspan="4"> <img src="" alt="">기본 이미지</td>
                    <td style="width: 10%;">상품코드 </td>
                    <td style="width: 20%;"> 상품코드 보여짐</td>
                    <td style="width: 10%;">카테고리</td>
                    <td style="width: 20%;">카테고리 번호 보여짐</td>
                </tr>
                <tr>
                    <td>상품명</td>
                    <td> 씨없는 세척대추 </td>
                    <td>이벤트번호 </td>
                    <td>이벤트번호 보여짐</td>
                </tr>
                <tr>
                    <td>판매가격 </td>
                    <td>9000 원</td>
                    <td>할인가격</td>
                    <td>8000 원 </td>
                </tr>
            
                <tr>
                    <td rowspan="3">상품상세정보</td>
                    <td rowspan="3" colspan="3">정보 보여짐</td>
                    <td>업체명</td>
                    <td>*식품</td>
                    <td >재고</td>
                    <td >56</td>
                
                    
                </tr>
                <tr>
                    <td >이벤트 적용</td>
                    <td >
                        <section name="eYn">
                            <input type="radio" name="eYn" value="Y"> &nbsp; 예 <br>
                            <input type="radio" name="eYn" value="N"> 아니오
                        </section>
                    </td>
                    <td>할인 여부</td>
                    <td >
                        <section name="disYn">
                            <input type="radio" name="disYn" value="Y"> &nbsp; 예 <br>
                            <input type="radio" name="disYn" value="N"> 아니오
                        </section>
                    </td>
                
                </tr>
                <tr>
                    <td>원산지</td>
                    <td>대한민국</td>
                    <td>포장타입</td>
                    <td>종이상자</td>
                </tr>
             
           
                <tr>
                    <td>상품간단설명</td>
                    <td colspan="3">상품 설명 보여짐</td> </td>
                    <td>추가이미지1</td>
                    <td>추가이미지2</td>
                    <td>썸네일 <br>이미지</td>
                    <td>썸네일 이미지 뜸</td>
                </tr>
             
        </table>

        <br>
        
    </div>
</body>
</html>