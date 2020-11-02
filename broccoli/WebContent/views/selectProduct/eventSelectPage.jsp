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
		
		
        #content{
            width: 100%;
            height: 100%;
        }

        #content>div{
            width: 100%;
            height: 33%;
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
			<!-- 과일 이벤트  -->
            <div id="eventPage_1">
                <div class="eventThumbnail">
				<input type="hidden" name="eno" value=7 />
				<img src="<%=broccoli %>/resources/event_upfiles/ef20201020.JPG">

				</div>
            </div>
			<!-- 고기 이벤트  -->
            <div id="eventPage_2">
                <div class="eventThumbnail">
				<input type="hidden" name="eno" value=8 />
				<img src="<%=broccoli %>/resources/event_upfiles/ef20201021.JPG">

				</div>
            </div>
			<!-- 해산물 이벤트  -->
            <div id="eventPage_3">
                <div class="eventThumbnail">
				<input type="hidden" name="eno" value=9 />
				<img src="<%=broccoli %>/resources/event_upfiles/ef20201022.JPG">

				</div>
            </div>

        </div>    

    </div>
    
    <script>
    $(function(){
    	
    	$(".eventThumbnail").click(function(){
    		
    		location.href ="<%=broccoli%>/eventEachProduct.pb?eno=" + $(this).children().eq(0).val();
    		
    	});
    	
    });
    
    </script>

<%@ include file="../common/footer.jsp"%>
</body>
</html>