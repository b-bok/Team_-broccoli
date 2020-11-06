<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>상품 등록하기 화면</title>
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
      width: 600px;
      margin-left:300px;
      margin-top: 50px;
    }
    #enrollPForm table{margin:auto;}
    #enrollPForm input:not(#radio), #enrollPForm textarea{
      width: 100%;
     box-sizing: border-box;
    }
  </style>
</head>
<body>

	<!--  대쉬보드 추가 -->
	<%@ include file="adminNav.jsp" %>
	
  <!-- 상품등록하기 화면 -->
  <div class="outer">
    
    <select onchange="location.href=this.value"  style="margin-left: 50px; margin-top: 50px;">
      <option value="<%=broccoli%>/enrollProduct.admin">상품등록</option>
      <option value="<%=broccoli%>/updateProduct.admin">상품수정/삭제</option>
    </select>

    <form action="<%= broccoli %>/insertProduct.admin" id="enrollPForm"
    	  method="POST" enctype="multipart/form-data">
      <br>
      <h2 align="center">상품 등록하기</h2>

      <table align="center">
          <tr>
            <td width="110">* 상품번호 :</td> <!-- db로 자동부여하면 뺄 예정입니다. -->
            <td colspan="2" width="300">DB에서 자동부여</td>
          </tr>
          <tr>
            <td>* 카테고리 : </td>
            <td colspan="2"><input type="text" name="catetory" required placeholder="ex) 10A1"></td>           
          </tr>     
          <tr>
            <td>* 이벤트번호 :</td>
            <td colspan="2"><input type="number" name="eNo" required></td>
          </tr>
          <tr>
            <td>* 상품명 :</td>
            <td colspan="2"> <input type="text" name="pName" required></td>
          </tr>
          <tr>
            <td>* 판매가격 :</td>
            <td colspan="2"><input type="number" name="pPrice" required></td>
          </tr>
          <tr>
            <td>* 할인가격 : </td>
            <td colspan="2"><input type="number" name="discount" required></td>
          </tr>
          <tr>
            <td>* 기본이미지 :</td>
            <td><img id="img1Preview" width="100" heigth="80"></td>
            <td><input type="file" name="file1" id="img1" onchange="loadImg(this, 1);" required></td>
          </tr>
          <tr>
            <td>추가이미지 : </td>
            <td><img id="img2Preview" width="100" heigth="80"></td>
            <td><input type="file" name="file2" id="img2" onchange="loadImg(this, 2);"></td>
          </tr>
          <tr>
            <td>* 재고 :</td>
            <td colspan="2"><input type="number" name="inventory" required></td>
          </tr>
          <tr>
            <td>업체명 :</td>
            <td colspan="2"><input type="text" name="company" ></td>
          </tr>
          <tr>
            <td>판매단위 :</td>
            <td colspan="2"><input type="text" name="unit"></td>
          </tr>
          <tr>
            <td>중량 :</td>
            <td colspan="2"><input type="text" name="weight"></td>
          </tr>
          <tr>
            <td>상품상세정보 :</td>
            <td colspan="2"> <textarea name="detail" cols="20" rows="10" style="resize: none;"></textarea> </td>
          </tr>
          <tr>
            <td>할인여부 :</td>
            <td colspan="2">&ensp; &ensp;<input type="radio" id="radio" name="disYn"" value="Y" >예 &ensp; &ensp; &ensp; &ensp;<input type="radio" id="radio" name="disYn" value="N" checked>아니오</td>
          </tr>
          <tr>
            <td>이벤트 여부 :</td>
            <td colspan="2">&ensp; &ensp;<input type="radio" id="radio" name="eYn" value="Y">예 &ensp; &ensp; &ensp; &ensp;<input type="radio" id="radio" name="eYn" value="N" checked>아니오</td>           
          </tr>
          <tr>
            <td>상품간단설명 :</td>
            <td colspan="2"><textarea name="smallDetail" cols="20" rows="5" style="resize: none;"></textarea></td> 
          </tr>
           <tr>
            <td>배송타입 :</td>
            <td colspan="2"><input type="text" name="deli" placeholder="샛별배송/택배배송 중 택1"></td>           
          </tr>
          <tr>
            <td>원산지 :</td>
            <td colspan="2"><input type="text" name="nation"></td>           
          </tr>
          <tr>
            <td>포장타입 :</td>
            <td colspan="2"><input type="text" name="packtype"></td>         
          </tr>
          <tr>
            <td>썸네일이미지 :</td>
            <td><img id="thumbnailPreview" width="100" heigth="80"></td>
            <td><input type="file" name="file3" id="thumbnail" onchange="loadImg(this, 3);"></td>
          </tr>

        <br><br>
      </table>
      
      <script>
      	function loadImg(inputFile, num){
      		 // inputFile : 현재 변화가 생긴 input type="file" 요소 객체
            // num : 몇번째 input요소인지 구분지어줄 숫자
            
            // [참고] https://developer.mozilla.org/ko/docs/Web/API/FileReader
            
            if(inputFile.files.length == 1){
            	// 현재 선택된 파일이 존재할 경우 => 읽어들여서 미리보기
            	
            	// 파일을 읽어들일 FileReader 객체 생성
            	var reader = new FileReader();
            	
            	// 파일을 읽어들이는 메소드 호출
            	// --> 해당 파일을 읽어들이는 순간 해당  그 파일만의 고유한 url이 부여됨
            	reader.readAsDataURL(inputFile.files[0]);
            	
            	// 파일 읽어들이기가 다 완료가 되었을 때 실행할 함수를 정의
            	reader.onload = function(e){
            		// 각 영역에  맞춰서 이미지 미리보기
            		switch(num){
            			case 1: $("#img1Preview").attr("src", e.target.result); break;
            			case 2: $("#img2Preview").attr("src", e.target.result); break;
            			case 3: $("#thumbnailPreview").attr("src", e.target.result); break;
            		}
            	};
            	
            }else{
            	// 현재 선택된 file이 사라졌을 경우 => 미리보기 해제
            	switch(num){
            		case 1: $("#img1Preview").attr("src", null); break;
        			case 2: $("#img2Preview").attr("src", null); break;
        			case 3: $("#thumbnailPreview").attr("src", null); break;
            	}
            }
            
      		
      	}
      </script>
      
      <br>

      <div align="center">
        <button type="submit" class="btn btn-primary btn-sm">등록하기</button>
        <button type="reset" class="btn btn-danger btn-sm">취소하기</button></div>
    </form>
    <br><br>
          
  </div>
   <!-- 엔딩 상품등록하기 화면 -->


</body>
</html>