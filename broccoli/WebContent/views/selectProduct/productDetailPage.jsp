<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.kh.product.model.vo.*" %>


<%
	Product p = (Product)request.getAttribute("p");
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

  <style>
        div {
            /* border: 1px solid red; */
            box-sizing: border-box;
        }

        .wrap {
            width: 1000px;
            height: 600px;
            margin: auto;
            margin-top: 50px;

        }

        .wrap>div { 
            width: 100%;
            margin: auto;

        }

        #productCut {
            height: 40%;
        }

        #productThumbnail {
            width: 100%;
            height: 100%;
        }

        #buyButtons {
            height: 5%;
        }


        .productDetailImage{height: 25%;}

        .productDetailImage>img {
            width:60%;
        }

        #productDexp {height: 6%;}
        #productSexp {height: 10%;}

        #productCut>div {
            width: 50%;
            height: 100%;
            float: left;
        }

        #productThumbnail>img {
            width: 80%;
            height: 80%;
            margin-left: 50px;
            margin-top: 30px;
        }

        #productExp>div {
            width: 100%;
            float: left;
        }

        #productName, #productPrice {height: 15%;}
        #productDetails{height: 70%;}

        #productDetails>table {
            width: 100%;
            height: 100%;
            font-size: small;
        }

    </style>

</head>
<body>

	<%@ include file= "../common/menubar.jsp" %>
	
		
        
	


    <div class="wrap">
        
        <div id="productCut">

            <div id="productThumbnail">
                <img src="<%=broccoli %>/<%=p.getThumbnail() %>" >
            </div>
            
            <div id="productExp" align="center">
            <form name="form1" method="post">
                <div id="productName">
                    <h3 style="margin: 0;"><%=p.getpName() %></h3>
                </div>
                <div id="productPrice">
                    <span style="text-decoration: line-through; color: gray; margin:0; font-size: large;"><%=p.getPrice() %></span>
                    <span style="color: green; margin:0; font-size: large;">--> <%=p.getDiscount() %></span>
                </div>
                <div id="productDetails">
                    
                    <table id="table1">
                        <tr>
                            <th width="50">판매단위</th>
                            <td width="200"><%=p.getUnit() %></td>
                        </tr>
                        <tr>
                            <th>중량/용량</th>
                            <td><%=p.getWeight() %></td>
                        </tr>
                        <tr>
                            <th>배송구분</th>
                            <td><%=p.getDeli() %></td>
                        </tr>
                        <tr>
                            <th>원산지</th>
                            <td><%=p.getNation() %></td>
                        </tr>
                        <tr>
                            <th>포장타입</th>
                            <td><%=p.getPacktype() %></td>
                        </tr>
                        <tr>
                            <th>구매수량</th>
                            <td><input type="number" min="1" max="50" name="amount" id="amount" value="1"></td>
                        </tr>
                        <tfoot>
                        <tr>
                            <th>총 상품 금액 : </th>
                            
                            
                            <td style="text-align: right;">
                            <strong><span style="font-size:18px"><%= p.getDiscount() %></span><span style="margin-right:50px;"> 원</span></strong>
                            <% if(login != null) { %>
                            	<input type="hidden" name="pno" value="<%= p.getPno() %>">
                            	<input type="hidden" name="totalamt" id="totalamt" value="<%= p.getDiscount() %>">
                            	<button type="button" class="btn btn-success btn-sm" id="goCart">장바구니 담기</button>
                            	<button type="button" class="btn btn-success btn-sm" id="goOrder">바로 구매</button>
                            <% } else { %>
                            	<button type="button" class="btn btn-success" onclick="location.href='<%= broccoli %>/login.me'; return false;">로그인 하고 구입하기</button>
                            <% } %>
                            </td>
                        </tr>
                        </tfoot>
                    </table>
                </div>
         
				</form>
            </div>
        </div>
        
        
      	
    

         	<%@ include file="../common/reviewMenubar.jsp" %>

		<br />
        <div class="productDetailImage" align="center">

            <img src="<%=broccoli %>/<%=p.getImg1() %>" width="60%" height="100%" name="productImage1" >
        </div>

        <div id="productDexp" align="center">
        <br />
            <h2 style="margin: 10;" id="list1"><%=p.getpName() %></h2>
        </div>
        <div id="productSexp">
            <p align="center">
		                <%=p.getDetail() %>
    
            </p>
        </div>


            <%@ include file="../common/reviewMenubar.jsp" %>

		<br />
        <div class="productDetailImage" align="center">
        
            <img src="<%=broccoli %>/<%=p.getImg2() %>" width="60%" height="100%" name="productImage1" id="list2" >
       
        </div>

			<%@ include file="../userReviewBoard/productDetailReviewBoard.jsp" %>


			<%@ include file="../userRecipeBoard/productDetailRecipeBoard.jsp" %>
	

			<%@ include file="../userQnaBoard/productDetailQnaBoard.jsp" %>
	 
		
		
		
       
		</div>
		
		
		<!-------------------------------장바구니 담기 버튼 클릭시 나오는 알림창 -------------------------------------------->
		<div id="div3" class="alert alert-light alert-dismissible" style="border:3px solid green; padding-right:13px; width:350px; height:200px; position: absolute; display: none; z-index: 10;" align="center">
            <button type="button" class="close" data-dismiss="alert">&times;</button>
            <h4 style="margin-top:20px"><strong>장바구니 담기 성공!</strong></h4><br> <h4>장바구니로 이동하시겠습니까?</h4> <br><br>
            <button type="button" class="btn btn-secondary" id="keepshop">계속 쇼핑할래요</button>  <button type="button" class="btn btn-success" id="goToCart">장바구니로 이동</button>
        </div>
        
        
        <script>
	    	$("#amount").change(function(){
	    		var totalprice = $(this).val() * <%= p.getDiscount()%>;
	    		$("#table1>tfoot>tr>td>strong").children().eq(0).text(totalprice);
	    		$("#totalamt").val(totalprice);
	    	})
	    
        	function submitForm(index){
        		if(index == 1){
        			document.form1.action = "<%= broccoli %>/cart.or" ;
        		}
        		if(index == 2){
        			document.form1.action = "<%= broccoli %>/dOrder.or";
        		}
        		document.form1.submit();
        	}
            $("#goCart").click(function(){					// 장바구니 담기 클릭시
                
     			
                $("#div3").css({
                "top": (($(window).height()-$("#div3").outerHeight())/2+$(window).scrollTop())+"px",
                "left": (($(window).width()-$("#div3").outerWidth())/2+$(window).scrollLeft())+"px"})
            	
                
                $.ajax({
            		url:"ajaxCart.or",				// CartInsertController
            		type:"post",
            		data:{pno:<%= p.getPno()%>,
            			  quantity: $("#amount").val(),
            			  price: <%= p.getDiscount()%>
            			  },
            		success: function(result){
            			if(result == "중복"){
            				alert("장바구니에 이미 같은 상품이 있어서 추가했습니다.");
            			} else{
            				 $("#div3").show(); 
            	             $(".wrap ").css("opacity", "0.3")
            			}
            		},error: function(){
            			console.log("통신실패");
            		}
            	});
                
                
            });
            
            $("#goToCart").click(function(){
            	submitForm(1);
            });
            $("#goOrder").click(function(){
            	submitForm(2);
            });
            $("#keepshop, .close").click(function(){
            	$("#div3").hide();
            	$(".wrap ").css("opacity", "");
            });
            
        </script>
		<!------------------------------------------------------------------------------------------------->
		





<%@ include file="../common/footer.jsp"%>
</body>
</html>