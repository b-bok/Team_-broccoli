<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.product.model.vo.*"%>
<%
	Product p = (Product)request.getAttribute("p");
%>    
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
    #updatePForm input:not([type=radio]), #updatePForm textarea{
      width: 100%;
     box-sizing: border-box;
    }
  </style> 
</head>
<body>
    
    <!-- 대쉬보드 추가하기 -->
    <%@ include file="adminNav.jsp" %>
    
   <div class="outer" style="margin-left:300px;">

       <select onchange="location.href=this.value" style="margin-left: 50px; margin-top: 50px;">
     
           <option value="<%=broccoli%>/updateProduct.admin">상품수정/삭제</option>
           <option value="<%=broccoli%>/enrollProduct.admin?currentPage=1">상품등록</option>
         
       </select>

       &ensp;
       <button type="button" onclick="history.back() ">&lt 이전화면</button>
       <br><br>

       <form action="<%=broccoli%>/updateProductFinal.admin" id="updatePForm" method="POST" enctype="multipart/form-data">

           <h4 align="center">상품 수정하기</h4>
       
               <table align="center">
                   <tr>
                   <td width="110">* 상품번호 :</td> <!-- db로 자동부여하면 뺄 예정입니다. -->
                   <td colspan="2" width="300"><input type="number" name="pNo" value="<%= p.getPno() %>" readonly></td>
                   </tr>
                   <tr>
                   <td>* 카테고리 : </td>
                   <td colspan="2"><input type="text" name="category" required value="<%= p.getCategory() %> ***카테고리번호로 입력하시오***"></td>           
                   </tr>     
                   <tr>
                   <td>* 이벤트번호 :</td>
                   <td colspan="2"><input type="text" name="eNo" required value="<%= p.getEno() %> ***이벤트번호로 입력하시오***"></td>
                   </tr>
                   <tr>
                   <td>* 상품명 :</td>
                   <td colspan="2"> <input type="text" name="pName" required value="<%= p.getpName() %>"></td>
                   </tr>
                   <tr>
                   <td>* 판매가격 :</td>
                   <td colspan="2"><input type="number" name="pPrice" required value="<%= p.getPrice() %>"></td>
                   </tr>
                   <tr>
                   <td>* 할인가격 : </td>
                   <td colspan="2"><input type="number" name="discount" required value="<%= p.getDiscount()%>"></td>
                   </tr>
                   <tr>
                   <% if(p.getImg1() != null){ %>
                   <td>* 기본이미지 :</td>
                   <td><img src="<%= broccoli %>/<%= p.getImg1() %>" width="100" height="80"></td>
                   <td><input type="file" name="reUpfile1">**파일명앞에  꼭 f붙이기</td>
                   <% } %>
                   </tr>
                   <tr>
                   <% if(p.getImg2() != null){ %>
                   <td>추가이미지 : </td>
                   <td><img src="<%= broccoli %>/<%= p.getImg2() %>" width="100" height="80"></td>
                   <td><input type="file" name="reUpfile2">**파일명앞에  꼭 s붙이기</td>
                   <% } %>
                   </tr>
                   <tr>
                   <td>* 재고 :</td>
                   <td colspan="2"><input type="number" name="inventory" required value="<%= p.getInventory()%>"></td>
                   </tr>
                   <tr>
                   <td>업체명 :</td>
                   <td colspan="2"><input type="text" name="company" value="<%= p.getCompany() %>" ></td>
                   </tr>
                   <tr>
                   <td>판매단위 :</td>
                   <td colspan="2"><input type="text" name="unit"value="<%= p.getUnit() %>"></td>
                   </tr>
                   <tr>
                   <td>중량 :</td>
                   <td colspan="2"><input type="text" name="weight" value="<%= p.getWeight()%>"></td>
                   </tr>
                   <tr>
                   <td>상품상세정보 :</td>
                   <td colspan="2"> <textarea name="detail" cols="20" rows="10" style="resize: none;"><%= p.getDetail() %></textarea> </td>
                   </tr>
                   <script>
                   	<% if(p.getDisYn().equals("N") || p.getDisYn().equals("n") || p.getDisYn().equals("")){ %>
	                   	$(function(){
                   			$("#disN").attr("checked");
	                   	});
                   	<% }else if(p.getDisYn().equals("Y") || p.getDisYn().equals("y")){ %>
                   	$(function(){
	                   		$("#disY").attr("checked");
                   	<%  }%>
                   </script>
                   <tr>
                   <td>할인여부 :</td>
                   <td colspan="2">
                   &ensp; &ensp;<input type="radio" id="disY" name="disYn"" value="Y" >예 &ensp; &ensp; &ensp; &ensp;
                   <input type="radio" id="disN" name="disYn" value="N">아니오</td>
                   </tr>
                    <script>
                   	<% if(p.geteYn().equals("N") || p.geteYn().equals("n") || p.geteYn().equals("")){ %>
	                   	$(function(){
                   			$("#eN").attr("checked");
	                   	});
                   	<% }else if(p.geteYn().equals("Y") || p.geteYn().equals("y")){ %>
                   	$(function(){
	                   		$("#eY").attr("checked");
                   	<%  }%>
                   </script>
                   <tr>
                   <td>이벤트 여부 :</td>
                   <td colspan="2">
                   &ensp; &ensp;<input type="radio" id="eY" name="eYn" value="Y">예 &ensp; &ensp; &ensp; &ensp;
                   <input type="radio" id="eN" name="eYn" value="N">아니오</td>           
                   </tr>
                   <tr>
                   <td>상품간단설명 :</td>
                   <td colspan="2"><textarea name="smallDetail" cols="20" rows="5" style="resize: none;"><%= p.getSmallDetail() %></textarea></td> 
                   </tr>
                   <tr>
                   <td>배송방식</td>
                   <td colspan="2"><input type="text" name="deli" value="<%= p.getDeli() %>"></td>
                   </tr>
                   <tr>
                   <td>원산지 :</td>
                   <td colspan="2"><input type="text" name="nation" value="<%= p.getNation()%>"></td>           
                   </tr>
                   <tr>
                   <td>포장타입 :</td>
                   <td colspan="2"><input type="text" name="packtype" value="<%= p.getPacktype()%>"></td>         
                   </tr>
                   <tr>
                   <% if(p.getThumbnail() != null){ %>
                   <td>썸네일이미지 :</td>
                   <td><img src="<%= broccoli %>/<%= p.getThumbnail() %>" width="100" height="80"></td>
                   <td><input type="file" name="reUpfile3">**파일명앞에  꼭 th붙이기</td>
                   <% } %>
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