<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>



    <style>

        div {
            border: 1px solid red;
            box-sizing: border-box;
        }

        .wrap{
            width: 300px;
            height: 700px;
            margin: auto;

        }

        .wrap {
            width: 50%;
            float: left;
        }

        #reviewImage{height: 70%;}
        #reviewContent{height: 20%;}
        #footer{height: 10%;}

        #reviewImage>div{
            width: 30%;
            height: 40%;
        }

        #reviewImage>div>img {
            height: 100%;
            width: 100%;
        }

        #reviewImage>div>img{
            width: 80%;
            height: 40%;
        }


        #reviewContent>p{
            margin-top: 10px;
        }

        #like{
            width: 100%;
            margin-top: 25px;
        }

    </style>

</head>
<body>

	<!-- 리뷰 상세페이지 입니다.  -->
	
	 <div class="wrap">

        <div id="reviewImage" align="center" >

            <h2 align="center">리뷰상세페이지</h2>

            <div id="image1" >
                <img src="../resources/image/bgsample.PNG" name="reviewImage1">
            </div>
            <div id="image2">
                <img src="../resources/image/city1.PNG" name="reviewImage2">
            </div>
   
  
  
        </div>


        <div id="reviewContent">

            <p >
                뜨고, 생명을 심장은 영원히 같이, 있다. 청춘의 뜨고, 커다란 역사를 청춘의
                방황하였으며, 우리는 교향악이다. 새 이는 같이,
                기쁘며, 현저하게 위하여, 남는 광야에서 청춘의 끓는다.
                얼마나 길을 주는 쓸쓸하랴? 예가 거선의 밥을 꽃이 우리는 군영과 눈이 것이다.
    
            </p>

        </div>
        <div id="footer">

            <div id="like" align="right">
                <button name="likeCount" >좋아요</button>
            </div>    
        </div>


    </div>
	

</body>
</html>