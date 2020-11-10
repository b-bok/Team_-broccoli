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

       <form action="" id="updatePForm" method="POST">

           <h4 align="center">상품 수정하기</h4>
       
               <table align="center">
                   <tr>
                   <td width="110">* 상품번호 :</td> <!-- db로 자동부여하면 뺄 예정입니다. -->
                   <td colspan="2" width="300"><%= p.getPno() %></td>
                   </tr>
                   <tr>
                   <td>* 카테고리 : </td>
                   <td colspan="2"><input type="text" name="catetoryNo" required value="<%= p.getCategory() %> ***카테고리번호로 입력하시오***"></td>           
                   </tr>     
                   <tr>
                   <td>* 이벤트번호 :</td>
                   <td colspan="2"><input type="number" name="eNo" required value="<%= p.getEno() %>"></td>
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
                   <td colspan="2"><input type="number" name="pDiscount" required value="<%= p.getDiscount()%>"></td>
                   </tr>
                   <tr>
                   <% if(p.getImg1() != null){ %>
                   <td>* 기본이미지 :</td>
                   <td><img src="<%= broccoli %>/<%= p.getImg1() %>" width="100" height="80"></td>
                   <td><input type="file" name="reUpfile1"></td>
                   <% } %>
                   </tr>
                   <tr>
                   <% if(p.getImg2() != null){ %>
                   <td>추가이미지 : </td>
                   <td><img src="<%= broccoli %>/<%= p.getImg2() %>" width="100" height="80"></td>
                   <td><input type="file" name="reUpfile2"></td>
                   <% } %>
                   </tr>
                   <tr>
                   <td>* 재고 :</td>
                   <td colspan="2"><input type="number" name="pInventory" required value="<%= p.getInventory()%>"></td>
                   </tr>
                   <tr>
                   <td>업체명 :</td>
                   <td colspan="2"><input type="text" name="pCompany" value="<%= p.getCompany() %>" ></td>
                   </tr>
                   <tr>
                   <td>판매단위 :</td>
                   <td colspan="2"><input type="text" name="pUnit"value="<%= p.getUnit() %>"></td>
                   </tr>
                   <tr>
                   <td>중량 :</td>
                   <td colspan="2"><input type="text" name="pWeight" value="<%= p.getWeight()%>"></td>
                   </tr>
                   <tr>
                   <td>상품상세정보 :</td>
                   <td colspan="2"> <textarea name="pDetail" cols="20" rows="10" style="resize: none;"><%= p.getDetail() %></textarea> </td>
                   </tr>
                   <script>
                   	<% if(p.getDisYn().equals("N") || p.getDisYn().equals("n") || p.getDisYn() == null){ %>
	                   	$(function(){
                   			$("input:radio[id=disN]").prop("checked",true);
	                   	})
                   	<% }else{ %>
                   	$(function(){
	                   		$("input:radio[id=disY]").prop("checked",true);
                   	<%  }%>
                   </script>
                   <tr>
                   <td>할인여부 :</td>
                   <td colspan="2">&ensp; &ensp;<input type="radio" id="disY" name="disYn"" value="Y" >예 &ensp; &ensp; &ensp; &ensp;<input type="radio" id="disN" name="disYn" value="N">아니오</td>
                   </tr>
                    <script>
                   	<% if(p.geteYn().equals("N") || p.geteYn().equals("n") || p.geteYn() == null){ %>
	                   	$(function(){
                   			$("input:radio[id=eN]").prop("checked",true);
	                   	})
                   	<% }else{ %>
                   	$(function(){
	                   		$("input:radio[id=eY]").prop("checked",true);
                   	<%  }%>
                   </script>
                   <tr>
                   <td>이벤트 여부 :</td>
                   <td colspan="2">&ensp; &ensp;<input type="radio" id="eY" name="eYn" value="Y">예 &ensp; &ensp; &ensp; &ensp;<input type="radio" id="eN" name="eYn" value="N">아니오</td>           
                   </tr>
                   <tr>
                   <td>상품간단설명 :</td>
                   <td colspan="2"><textarea name="pSmallDetail" cols="20" rows="5" style="resize: none;"><%= p.getSmallDetail() %></textarea></td> 
                   </tr>
                   <tr>
                   <td>원산지 :</td>
                   <td colspan="2"><input type="text" name="pNation" value="<%= p.getNation()%>"></td>           
                   </tr>
                   <tr>
                   <td>포장타입 :</td>
                   <td colspan="2"><input type="text" name="pPacktype" value="<%= p.getPacktype()%>"></td>         
                   </tr>
                   <tr>
                   <% if(p.getThumbnail() != null){ %>
                   <td>썸네일이미지 :</td>
                   <td><img src="<%= broccoli %>/<%= p.getThumbnail() %>" width="100" height="80"></td>
                   <td><input type="file" name="reUpfile3"></td>
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