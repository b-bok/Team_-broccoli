<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous"></head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    

    <style>
        div {
            border: 1px solid red;
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

        #buyButtons {
            height: 5%;
        }


        #productDetailImage{
            height: 10%;

        }

        #productDexp {height: 6%;}
        #productSexp {height: 10%;}

        #productCut>div {
            width: 50%;
            height: 100%;
            float: left;
        }

        #thumbnailImage {
            width: 100%;
            height: 100%;
            
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
                <img src="../resources/image/bgsample.PNG" id="thumbnailImage" >
            </div>
            <div id="productExp" align="center">
                <div id="productName">
                    <h3 style="margin: 0;">상품 이름</h3>
                </div>
                <div id="productPrice">
                    <h3 style="margin: 0;">상품 가격</h3>
                </div>
                <div id="productDetails">
                    <table >
                        <tr>
                            <th width="50">판매단위</th>
                            <td width="200">1봉</td>
                        </tr>
                        <tr>
                            <th>중량/용량</th>
                            <td>90g</td>
                        </tr>
                        <tr>
                            <th>배송구분</th>
                            <td>샛별배송/택배배송</td>
                        </tr>
                        <tr>
                            <th>원산지</th>
                            <td>국산</td>
                        </tr>
                        <tr>
                            <th>포장타입</th>
                            <td>종이포장</td>
                        </tr>
                        <tr>
                            <th>구매수량</th>
                            <td><input type="number" max="50" name="amount"></td>
                        </tr>
                        <tr>
                            <th colspan="2" style="text-align: right;">총 상품 금액 : 3700원</th>
                        </tr>
                    </table>
                </div>

            </div>

        </div>

        <div id="buyButtons" align="right">
            <a href="">장바구니 담기</a>
            <a href="">바로 구매</a>
        </div>


            <%@ include file ="../common/reviewMenubar.jsp" %>


        <div id="productDetailImage" align="center">
            <img src="../resources/image/flower2.PNG" width="100%" height="100%" name="productImage1" >
        </div>

        <div id="productDexp" align="center">
            <h2 style="margin: 10;">상품 이름</h2>
        </div>
        <div id="productSexp">
            <p >
                뜨고, 생명을 심장은 영원히 같이, 있다. 청춘의 뜨고, 커다란 역사를 청춘의
                방황하였으며, 우리는 교향악이다. 새 이는 같이,
                기쁘며, 현저하게 위하여, 남는 광야에서 청춘의 끓는다.
                얼마나 길을 주는 쓸쓸하랴? 예가 거선의 밥을 꽃이 우리는 군영과 눈이 것이다.
    
            </p>
        </div>


              <%@ include file ="../common/reviewMenubar.jsp" %>


        <div id="productDetailImage" align="center">
            <img src="../resources/image/flower2.PNG" width="100%" height="100%" name="productImage1" >
        </div>

    </div>
	

	
	<%@ include file="../userReviewBoard/productDetailReviewBoard.jsp" %>
	

	<!--  
	<%@ include file="../userRecipeBoard/productDetailRecipeBoard.jsp" %>
	
	
	<%@ include file="../userQnaBoard/productDetailQnaBoard.jsp" %>
	-->

</body>
</html>