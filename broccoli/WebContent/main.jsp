<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    .p_info{height:20%; padding: 10px;}
    /* .goods_thumbnail{width: 20%; height:15%; overflow: hidden; display: flex; align-items: center; justify-content:center;} */
    /* 하단 */
    #footer{height:20%; margin-top: 100px;}
    /* 이미지 */
    img{width:100%; height:100%}
</style>
</head>
<body>
	
	<%@ include file = "views/common/menubar.jsp" %>
	
	
    <div class="wrap">
        <div id="demo" class="carousel slide" data-ride="carousel">
            <ul class="carousel-indicators">
                <li data-target="#demo" data-slide-to="0" class="active"></li>
                <li data-target="#demo" data-slide-to="1"></li>
                <li data-target="#demo" data-slide-to="2"></li>
            </ul>

            
<!------------------------------------------------------ ★★★★★이벤트 배너 넣는 곳★★★★★------------------------------------------->


            <div class="carousel-inner">
                <div class="carousel-item active">
                    <a href="★"><img src="img/forest1.PNG" alt="이벤트상품썸네일"></a>
                    <div class="carousel-caption">
                        <h4>이벤트명</h4>
                        <p>이벤트설명</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <a href="★"><img src="img/flower3.PNG" alt="이벤트상품썸네일"></a>
                    <div class="carousel-caption">
                        <h4>이벤트명</h4>
                        <p>이벤트설명</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <a href="★"><img src="img/river1.PNG" alt="이벤트상품썸네일"></a>
                    <div class="carousel-caption">
                        <h4>이벤트명</h4>
                        <p>이벤트설명</p>
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
                <div id="title_goods" align="center" style="margin-top:20px; font-size: 30px;"><a href="★">이 상품 어때요?</a></div>
            </div>

<!------------------------------------------------------★★★★★상품 썸네일/정보 넣는 곳 ★★★★★ ------------------------------------------->
            <div id="content_2">
                <div class="thumbgroup">
                    <ul class="thumbmenu">
                        <li>
                            <a href="★">
                                <div class="thumbnail">
                                    <img src="https://img-cf.kurly.com/shop/data/goods/1570437357849l0.jpg" alt="상품썸네일">
                                </div>
                                <div class="p_info" style="font-size: 15px;">
                                    [몸에쏙쏙] 유기농 어린이 배도라지즙 2종 <br>
                                    <span style="text-decoration: line-through; color: gray;">15,900원</span>
                                    <span style="color: green;">--> 14,310원</span> <br>
                                    <span style="font-size: 13px; font-weight: lighter; color: #666">달콤하게 시작하는 우리 아이 건강즙</span>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="★">
                                <div class="thumbnail">
                                    <img src="https://img-cf.kurly.com/shop/data/goods/1570437357849l0.jpg" alt="상품썸네일">
                                </div>
                                <div class="p_info" style="font-size: 15px;">
                                    [몸에쏙쏙] 유기농 어린이 배도라지즙 2종 <br>
                                    <span style="text-decoration: line-through; color: gray;">15,900원</span>
                                    <span style="color: green;">--> 14,310원</span> <br>
                                    <span style="font-size: 13px; font-weight: lighter; color: #666">달콤하게 시작하는 우리 아이 건강즙</span>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="★">
                                <div class="thumbnail">
                                    <img src="https://img-cf.kurly.com/shop/data/goods/1570437357849l0.jpg" alt="상품썸네일">
                                </div>
                                <div class="p_info" style="font-size: 15px;">
                                    [몸에쏙쏙] 유기농 어린이 배도라지즙 2종 <br>
                                    <span style="text-decoration: line-through; color: gray;">15,900원</span>
                                    <span style="color: green;">--> 14,310원</span> <br>
                                    <span style="font-size: 13px; font-weight: lighter; color: #666">달콤하게 시작하는 우리 아이 건강즙</span>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="★">
                                <div class="thumbnail">
                                    <img src="https://img-cf.kurly.com/shop/data/goods/1570437357849l0.jpg" alt="상품썸네일">
                                </div>
                                <div class="p_info" style="font-size: 15px;">
                                    [몸에쏙쏙] 유기농 어린이 배도라지즙 2종 <br>
                                    <span style="text-decoration: line-through; color: gray;">15,900원</span>
                                    <span style="color: green;">--> 14,310원</span> <br>
                                    <span style="font-size: 13px; font-weight: lighter; color: #666">달콤하게 시작하는 우리 아이 건강즙</span>
                                </div>
                            </a>
                        </li>
                    </ul>
                    
                </div>
            </div>
        
        <div id="footer" align="center"><h1>footer</h1></div>
        
        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        </div>
    </div>
	
	
</body>
</html>