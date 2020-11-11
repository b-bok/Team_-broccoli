<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.*, com.kh.product.model.vo.*" %>	
	
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>브로콜리</title>
<style>
 	 	div{box-sizing: border-box; font-size: 12px; border: 0px solid red;}
        .wrap{width: 100%; height: 1000px;}
        a:hover{text-decoration: none; color: green;}
        a{color:black; font-weight: bold;}
        /* 최상단상단메뉴바 */
        #header{height: 15%;}
        #header_1{height: 20%; margin-right: 30px;}
        .list_menu{margin: 0; padding: 0; list-style-type: none; text-align: center; height: 100%; float: right;}
        .list_menu>li{float: left; width: 100px; height: 100%; cursor: pointer; text-align: center;}
        .list_menu>li>a:hover+ul, .submenu:hover, .list_menu a{display: block;}
        .submenu{display: none; padding:0; list-style-type:none;}
        /* 홈로고부분 */
        #header_2{height: 50%; text-align: center;}
        /* 카테고리 메뉴 */
        #header_3{height: 30%; width: 100%; margin-left: 80px;}
        .allmenu>li{list-style-type: none; float: left; width: 230px; height: 40px; line-height: 30px; cursor: pointer; text-align: center;}
        /* 네비게이션바 */
        #demo{height:20%; width:100%; position: relative; margin-top: 20px;}
        .carousel-inner{position: absolute; width: 100%; height: 100%;}
        .carousel-item{width: 100%; height: 100%;}
        /* 상품썸네일 */
        #content{height:55%; margin-top: 100px;}
        #content_1{height: 15%;}
        #content_2{height: 85%;  position: relative;}
        .thumbgroup{width: 80%; height: 100%; position: absolute; left: 12%;}
        .thumbmenu{display: block; padding:0;list-style-type:none; height: 100%;}
        .thumbmenu>li{float: left;  margin-right: 15px; width: 285px; height: 100%;}
        .thumbnail{width:100%; height: 80%;}
        .p_info{height:20%; padding: 10px; text-align:center;}
        /* 이미지 */
        img{width:100%; height:100%}

</style>
</head>
<body>
	
    <div class="wrap">	
	<%@ include file = "views/common/menubar.jsp" %>
	
        <div id="demo" class="carousel slide" data-ride="carousel">
            <ul class="carousel-indicators">
                <li data-target="#demo" data-slide-to="0" class="active"></li>
                <li data-target="#demo" data-slide-to="1"></li>
                <li data-target="#demo" data-slide-to="2"></li>
            </ul>

            
<!------------------------------------------------------ ★★★★★이벤트 배너 넣는 곳★★★★★------------------------------------------->


            <div class="carousel-inner">
                <div class="carousel-item active">
                    <a href="<%=broccoli%>/eventEachProduct.pb?eno=1"><img src="<%=broccoli %>/resources/event_upfiles/ef20201020.JPG" alt="이벤트상품썸네일"></a>
                    <div class="carousel-caption">
                       
                    </div>
                </div>
                <div class="carousel-item">
                    <a href="<%=broccoli%>/eventEachProduct.pb?eno=2"><img src="<%=broccoli %>/resources/event_upfiles/ef20201021.JPG" alt="이벤트상품썸네일"></a>
                    <div class="carousel-caption">
                    </div>
                </div>
                <div class="carousel-item">
                	<input type="hidden" name="eno" value=3 />
                    <a href="<%=broccoli%>/eventEachProduct.pb?eno=3"><img src="<%=broccoli %>/resources/event_upfiles/ef20201022.JPG" alt="이벤트상품썸네일"></a>
                    <div class="carousel-caption">
                    </div>
                </div>
            </div>
            
            <!-- Left and right controls -->
            <a class="carousel-control-prev" href="#demo" data-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </a>
            <a class="carousel-control-next" href="#demo" data-slide="next">
                <span class="carousel-control-next-icon"></span>
            </a>
        </div>
        
        
        <div id="content">
            <div id="content_1">
                <div id="title_goods" align="center" style="margin-top:20px; font-size: 30px;"><a href="<%=broccoli %>/bestProduct.pb?currentPage=1">이 상품 어때요?</a></div>
            </div>

<!------------------------------------------------------★★★★★상품 썸네일/정보 넣는 곳 ★★★★★ ------------------------------------------->
            <div id="content_2" >
				 <ul class="thumbmenu">
							
							
					</ul>
            </div>
            
         
        </div>
        
           <div id="footer">
            		<div id="pagingBar" align="center">
                <ul class="pagination">
            			
            			
            			
            		</ul>
            </div>
        
   </div>
       
  		<%@ include file = "views/common/footer.jsp" %>
        
	
	<script>
	
		$(function(){
		
			selectProductlist();

		})
			
			
		function selectProductlist() {
			
			$.ajax({
				
				url : "main.do",
				type : "post",
				data : {
					
				},
				success : function(object) {
					console.log(object);
					console.log(object.pageInfo);
					
					var list = object.list;
					
					var pageInfo = object.pageInfo;
					
					var str ="";
					
					for(var i in list) {
						
						
						str += "<li>" +
										"<div class='thumbnail'>" +
								
									"<input type='hidden' name='pno' id='pno' value="+ list[i].pno +" />" +
									"<img src=" + '<%=broccoli %>/' + list[i].thumbnail +  ">" 
								+ "</div>" +	
								
								 "<div class='p_info' style='font-size: 15px;'>" + "<br />" +
								 						
								 list[i].pName + "<br>" +
								 "<span style='text-decoration: line-through; color: gray;'>" + list[i].price + "</span>" +
								 "<span style='color: green;'>" + "-->" + list[i].discount + "</span>" +  "<br>" +
								 "<span style='font-size: 13px; font-weight: lighter; color: #666'>" + list[i].smallDetail + "</span>" +
						
								 "</div>" +
								 "</li>"
	
					}
					
					$(".thumbmenu").html(str);
					
					
					if(pageInfo.currentPage != 1) {
						
						var before = "<li class='page-item'>" +
						"<a class='page-link' href='<%=broccoli%>/allProduct.pb?currentPage='+ (pageInfo.currentPage-1) + '>' + ">"	
						+ &lt;이전 + "</a>" + "</li>";
						
						
					}
					
					
					
					
				},
				error : function(){
					console.log("ajax통신실패");
				}

			});
		
		}	


	
	</script>
    
    
    
	
	
</body>
</html>