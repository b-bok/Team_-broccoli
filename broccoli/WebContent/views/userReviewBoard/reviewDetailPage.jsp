<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
	integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
	crossorigin="anonymous">
</head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>



    <style>

        div {
            box-sizing: border-box;
        }

        .wrap{
            width: 300px;
            height: 700px;
            margin-left: 370px;
            margin-top: 10px;

        }

        .wrap {
            width: 50%;
            float: left;
        }

        #header {
            margin-top: 50px;

        }

        #headerTable {
            border-top: 1px solid yellowgreen;
            border-bottom: 1px solid lightgray;
        }


        #reviewImage{height: 65%;}
        #reviewContent{height: 25%;}
        #reviewfooter{height: 10%;}

        #reviewImage img {
            width: 40%;
            height: 30%;
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

	<%@ include file="../common/menubar.jsp" %>

    <div id="header"  align="center">
        <table  id="headerTable">
            <tr>
                <th class="table-success" width="150" style="text-align: center;">제목</th>
                <td colspan="3" width="600px">&nbsp; 황태양념구이</td>
            </tr>
            <tr>
                <th class="table-success" style="text-align: center;">작성자</th>
                <td colspan="3" width="600px">&nbsp; 브로콜리</td>
            </tr>
            <tr>
                <th class="table-success" style="text-align: center;">작성일</th>
                <td width="200px"> &nbsp; 2020-10-31</td>
                <th class="table-success" style="text-align: center;">조회수</th>
                <td> &nbsp; 7700</td>
            </tr>

        </table>

    </div>


    <div class="wrap">


        <div id="reviewImage" align="center" >

            <h2 align="center">리뷰상세페이지</h2>

            <div id="image1" >
                <img src="../resources/image/bgsample.PNG" name="reviewImage1">
            </div>
            <div id="image2">
                <img src="../resources/image/city1.PNG"   name="reviewImage2">
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
        <div id="reviewfooter">

            <div id="like" align="right">
                <button name="likeCount" >좋아요</button>
            </div>    
        </div>


<%@ include file="../common/footer.jsp"%>
    </div>

</body>
</html>