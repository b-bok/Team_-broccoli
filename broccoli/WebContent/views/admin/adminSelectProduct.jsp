<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>상품 전체조회</title>
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
      #productList{
          border:1px solid black;
          text-align: center;
          background-color: white;
      }
      #productList td, #productList th{
        border:1px solid black;
        text-align: center;
      }
      #productList>thead{background-color:gainsboro}
      .paging-area a{
            text-decoration: none;  /* 및줄 없애기 */
            color: black;
            margin: 5px;
        }
      #productList tbody tr:hover{
        background-color: greenyellow;
        cursor: pointer;  
  </style>   
</head>
<body>
    
    <!-- 대쉬보드 추가-->
    <%@ include file="adminNav.jsp" %>

    <div style="margin-left: 300px; margin-top: 50px; margin-bottom: 0;">
        <button><a href="<%= broccoli %>/selectProduct.admin">카테고리별 조회</a></button>
        <button><a href="<%= broccoli %>/selectDetailProduct.admin"">상세 조회</a></button>
    </div>

    <div class="outer" style="margin-left:300px;">
        
        <div class="inner">

            <h4 style="margin-left: 300px;">상품 카테고리별 조회</h4>
            <br>
            <table id="productList" align="center">
                <thead>
                    <tr>
                        <th width="70">No</th>
                        <th width="100">상품코드</th>
                        <th width="200">상품명</th>
                        <th width="80">재고</th>
                        <th width="150">업체명</th>
                    </tr>

                </thead>
                <tbody>
                    <tr>
                        <td>100</td>
                        <td>12</td>
                        <td>하남쭈꾸미</td>
                        <td>55</td>
                        <td>하남식품</td>
                    </tr>
                    <tr>
                        <td>99</td>
                        <td>32</td>
                        <td>사과 1봉</td>
                        <td>102</td>
                        <td>농협사과</td>
                    </tr>
                    <tr>
                        <td>98</td>
                        <td>523</td>
                        <td>오렌지 1박스</td>
                        <td>95</td>
                        <td>제주식품</td>
                    </tr>
                    <tr>
                        <td>97</td>
                        <td>0148</td>
                        <td>풀무원 냉면</td>
                        <td>45</td>
                        <td>풀무원</td>
                    </tr>
                    <tr>
                        <td>96</td>
                        <td>4213</td>
                        <td>CJ 칼국수</td>
                        <td>67</td>
                        <td>CJ</td>
                    </tr>
                    <tr>
                        <td>95</td>
                        <td>12</td>
                        <td>무농약 브로콜리</td>
                        <td>45</td>
                        <td>이천농협</td>
                    </tr>
                    <tr>
                        <td>94</td>
                        <td>45</td>
                        <td>소불고기</td>
                        <td>34</td>
                        <td>한돈가든</td>
                    </tr>
                    <tr>
                        <td>93</td>
                        <td>5816</td>
                        <td>오로라 생연어</td>
                        <td>43</td>
                        <td>쎌모네치킨</td>
                    </tr>
                    <tr>
                        <td>92</td>
                        <td>942</td>
                        <td>유기농 배도라지즙</td>
                        <td>78</td>
                        <td>몸에쏙쏙</td>
                    </tr>
                    <tr>
                        <td>91</td>
                        <td>125</td>
                        <td>옛날식 두부</td>
                        <td>34</td>
                        <td>두부나라</td>
                    </tr>
                </tbody>
                
                
            </table>
			
			 <script>
			       $(function(){
			        $("#productList>tbody>tr").click(function(){
			            location.href= "<%=broccoli%>/productDetailResult.admin"
			            });
			       });
      		</script>
      		
              <select style="margin-top: 20px; margin-left: 200px;">
                  <option value="pProduct">카테고리</option>
                  <option value="">과일,채소</option>
                  <option value="">냉장식품</option>
                  <option value="">간편식품</option>
                  <option value="">수산물</option>
                  <option value="">정육</option>
              </select>

              <select style="margin-top: 20px; ">
                  <option value="pProduct">상품명</option>
                  <option value="pCompany">업체명</option>
              </select>

            <input type="text" name="searchProduct" placeholder="검색어를 입력하세요"> 
            <button>검색</button>
            <br>
            <br>
        </div>
        <br>
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

        <br>
    </div>
</body>
</html>