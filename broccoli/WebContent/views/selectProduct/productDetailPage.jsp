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

	<%@ include file="../common/menubar.jsp" %>

    <div class="wrap">
        
        <div id="productCut">

            <div id="productThumbnail">
                <img src="<%=broccoli %>/<%=p.getThumbnail() %>" >
            </div>
            
            <div id="productExp" align="center">
            <form action="" method="post">  
                <div id="productName">
                    <h3 style="margin: 0;"><%=p.getpName() %></h3>
                </div>
                <div id="productPrice">
                    <span style="text-decoration: line-through; color: gray; margin:0; font-size: large;"><%=p.getPrice() %></span>
                    <span style="color: green; margin:0; font-size: large;">--> <%=p.getDiscount() %></span>
                </div>
                <div id="productDetails">
                    
                    <table >
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
                            <td><input type="number" max="50" name="amount"></td>
                        </tr>
                        <tr>
                            <th>총 상품 금액 :</th>
                            
                            <td style="text-align: right;">
                            <button type="submit" class="btn btn-success btn-sm">장바구니 담기</button>
                            <button type="submit" class="btn btn-success btn-sm">바로 구매</button>
                            </td>
                        
                        </tr>
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


    </div>
	

	<%-- 
	<%@ include file="../userReviewBoard/productDetailReviewBoard.jsp" %>


	<%@ include file="../userRecipeBoard/productDetailRecipeBoard.jsp" %>
	
	
	<%@ include file="../userQnaBoard/productDetailQnaBoard.jsp" %>
	
	 --%>

<%@ include file="../common/footer.jsp"%>
</body>
</html>