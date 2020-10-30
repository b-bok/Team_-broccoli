<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품수정 양식페이지</title>
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
    #updatePForm table{margin:auto;}
    #updatePForm input:not(#radio), #updatePForm textarea{
      width: 100%;
     box-sizing: border-box;
    }
  </style> 
</head>
<body>
    
    <!-- 대쉬보드 추가하기 -->
    <%@ include file="adminNav.jsp" %>
    
   <div class="outer">

       <select onchange="location.href=this.value" style="margin-left: 50px; margin-top: 50px;">
     
           <option value="<%=broccoli%>/updateProduct.admin">상품수정</option>
           <option value="<%=broccoli%>/enrollProduct.admin">상품등록</option>
           <option value="주소입력">상품삭제</option>
         
         </select>

       &ensp;
       <button type="button" onclick="history.back() ">&lt 이전화면</button>
       <br><br>

       <form action="" id="updatePForm" method="POST">

           <h4 align="center">상품 수정하기</h4>
       
               <table align="center">
                   <tr>
                   <td width="110">* 상품번호 :</td> <!-- db로 자동부여하면 뺄 예정입니다. -->
                   <td colspan="2" width="300">시퀀스로 부여된 번호</td>
                   </tr>
                   <tr>
                   <td>* 카테고리 : </td>
                   <td colspan="2"><input type="text" name="catetoryNo" required value="부여된 카테고리번호"></td>           
                   </tr>     
                   <tr>
                   <td>* 이벤트번호 :</td>
                   <td colspan="2"><input type="number" name="eNo" required value="12"></td>
                   </tr>
                   <tr>
                   <td>* 상품명 :</td>
                   <td colspan="2"> <input type="text" name="pName" required value="기존의 상품명"></td>
                   </tr>
                   <tr>
                   <td>* 판매가격 :</td>
                   <td colspan="2"><input type="number" name="pPrice" required value="7500"></td>
                   </tr>
                   <tr>
                   <td>* 할인가격 : </td>
                   <td colspan="2"><input type="number" name="pDiscount" required value="6000"></td>
                   </tr>
                   <tr>
                   <td>* 기본이미지 :</td>
                   <td><img src="파일경로G" alt="기존 상품 기본이미지""></td>
                   <td><button type="button" class="btn btn-secondary btn-sm" >파일추가</button></td>
                   </tr>
                   <tr>
                   <td>추가이미지 : </td>
                   <td><img src="파일경로G" alt="기존 상품 추가이미지""></td>
                   <td><button  type="button" class="btn btn-secondary btn-sm"  >파일추가</button></td>
                   </tr>
                   <tr>
                   <td>* 재고 :</td>
                   <td colspan="2"><input type="number" name="pInventory" required value="12"></td>
                   </tr>
                   <tr>
                   <td>업체명 :</td>
                   <td colspan="2"><input type="text" name="pCompany" value="기존의 업체명" ></td>
                   </tr>
                   <tr>
                   <td>판매단위 :</td>
                   <td colspan="2"><input type="text" name="pUnit"value="기존의 단위"></td>
                   </tr>
                   <tr>
                   <td>중량 :</td>
                   <td colspan="2"><input type="text" name="pWeight" value="기존의 중량"></td>
                   </tr>
                   <tr>
                   <td>상품상세정보 :</td>
                   <td colspan="2"> <textarea name="pDetail" cols="20" rows="10" style="resize: none;">기존 상품상세정보</textarea> </td>
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
                   <td colspan="2"><textarea name="pSmallDetail" cols="20" rows="5" style="resize: none;">기존의 상품간단설명</textarea></td> 
                   </tr>
                   <tr>
                   <td>원산지 :</td>
                   <td colspan="2"><input type="text" name="pNation" value="기존 원산지"></td>           
                   </tr>
                   <tr>
                   <td>포장타입 :</td>
                   <td colspan="2"><input type="text" name="pPacktype" value="기존 포장타입"></td>         
                   </tr>
                   <tr>
                   <td>썸네일이미지 :</td>
                   <td><input type="image" alt="기존 썸네일이미지"name="pThumbnail"></td>
                   <td><button  type="button" class="btn btn-secondary btn-sm"  >파일추가</button></td>
                   </tr>
       
               <br><br>
               </table>
           
               <br>
   
           <div align="center">
           <button type="submit" class="btn btn-primary btn-sm">등록하기</button>
           <button type="reset" class="btn btn-danger btn-sm">취소하기</button>
           </div>
     </form>
     <br><br>

   </div>

</body>
</html>