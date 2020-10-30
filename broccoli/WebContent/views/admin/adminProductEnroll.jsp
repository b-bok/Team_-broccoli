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
      margin: auto;
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
      <option value="<%=broccoli%>/updateProduct.admin">상품수정</option>
      <option value="주소입력">상품삭제</option>
    </select>

    <form action="" id="enrollPForm" method="POST">
      <br>
      <h2 align="center">상품 등록하기</h2>

      <table align="center">
          <tr>
            <td width="110">* 상품번호 :</td> <!-- db로 자동부여하면 뺄 예정입니다. -->
            <td colspan="2" width="300"><input type="number" name="pNo" required></td>
          </tr>
          <tr>
            <td>* 카테고리 : </td>
            <td colspan="2"><input type="text" name="catetoryNo" required placeholder="_사용가능"></td>           
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
            <td colspan="2"><input type="number" name="pDiscount" required></td>
          </tr>
          <tr>
            <td>* 기본이미지 :</td>
            <td><img src="파일경로G" alt="상품 기본이미지""></td>
            <td><button type="button" class="btn btn-secondary btn-sm" >파일추가</button></td>
          </tr>
          <tr>
            <td>추가이미지 : </td>
            <td><img src="파일경로G" alt="상품 추가이미지""></td>
            <td><button  type="button" class="btn btn-secondary btn-sm"  >파일추가</button></td>
          </tr>
          <tr>
            <td>* 재고 :</td>
            <td colspan="2"><input type="number" name="pInventory" required></td>
          </tr>
          <tr>
            <td>업체명 :</td>
            <td colspan="2"><input type="text" name="pCompany" ></td>
          </tr>
          <tr>
            <td>판매단위 :</td>
            <td colspan="2"><input type="text" name="pUnit"></td>
          </tr>
          <tr>
            <td>중량 :</td>
            <td colspan="2"><input type="text" name="pWeight"></td>
          </tr>
          <tr>
            <td>상품상세정보 :</td>
            <td colspan="2"> <textarea name="pDetail" cols="20" rows="10" style="resize: none;"></textarea> </td>
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
            <td colspan="2"><textarea name="pSmallDetail" cols="20" rows="5" style="resize: none;"></textarea></td> 
          </tr>
          <tr>
            <td>원산지 :</td>
            <td colspan="2"><input type="text" name="pNation"></td>           
          </tr>
          <tr>
            <td>포장타입 :</td>
            <td colspan="2"><input type="text" name="pPacktype"></td>         
          </tr>
          <tr>
            <td>썸네일이미지 :</td>
            <td><input type="image" alt="썸네일이미지"name="pThumbnail"></td>
            <td><button  type="button" class="btn btn-secondary btn-sm"  >파일추가</button></td>
          </tr>

        <br><br>
      </table>
      
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