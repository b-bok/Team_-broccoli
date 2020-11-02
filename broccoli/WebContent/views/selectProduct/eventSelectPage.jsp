<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

   <style>

        div {
          
            box-sizing: border-box;
        }
		
		
		
        .wrap {
            width: 1000px;
            height: 800px;
            margin: auto; 
            margin-top : 50px;         
        }
		
		.wrap>div>* {border: 1px solid red;}
		
        #content{
            width: 100%;
            height: 100%;
        }

        #content>div{
            width: 100%;
            height: 25%;
            float: left;
        }

        .eventThumbnail {width: 100%; height: 100%;}
        .eventThumbnail>img {width: 100%; height: 100%;}
    </style>

</head>
<body>

	<%@include file="../common/menubar.jsp" %>
		<!-- 이벤트 페이지입니다. -->
	
	  <div class="wrap">
        <div id="content">

            <div id="eventPage_1">
                <div class="eventThumbnail">
				<img src="../resources/image/bgsample.PNG">
				</div>
            </div>

            <div id="eventPage_2">
                <div class="eventThumbnail">
				<img src="../resources/image/man_bench.jpg">
				</div>
            </div>

            <div id="eventPage_3">
                <div class="eventThumbnail">
				<img src="../resources/image/man_bench.jpg">
				</div>
            </div>

            <div id="eventPage_4">
                <div class="eventThumbnail">
				<img src="../resources/image/man_bench.jpg">
				</div>
            </div>

        </div>    

    </div>

<%@ include file="../common/footer.jsp"%>
</body>
</html>