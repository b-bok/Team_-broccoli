<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#footer1{height: 200px; width: 1000px; margin: auto; margin-top: 200px}
    #footer1>div{width: 50%; height: 80%; float: left;}
    #leftfoot>div{height:27%; width:100%;}
    #rightfoot>ul>li{list-style: none; float: left; margin-right: 17px; font-size: 15px; color: gray;}
    .lf1 {width: 20%; height: 100%;}
    .lf2 {width: 80%; height: 100%;}
    .lf2>dt,dd{margin-top:15px; line-height:5px}
    .footline>div{float: left;}
    .btn{font-weight: bold; padding: 8px;}
	#topbtn{position: fixed; bottom: 10px; right: 10px; z-index: 3; font-size: 50px;}
</style>
</head>
<body>
	
	<div id="footer1">
        <div id="leftfoot">
            <h3 style="margin-top:0px">고객센터 &nbsp;&nbsp;&nbsp;1500-1500</h4>
            
            <div class="footline">
                <div class="lf1">
                    <button class="btn" onclick="location.href='';">공지사항</button>
                </div>
                <div class="lf2">
                    <dt>365 고객센터</dt>
                    <dd>오전 9시 ~ 오후 6시</dd>
                </div>
            </div>
            <div class="footline">
                <div class="lf1">
                    <button class="btn" onclick="location.href='';">1:1 문의</button>
                </div>
                <div class="lf2">
                    <dt>24시간 접수가능</dt>
                    <dd>고객센터 운영시간에 순차적으로 답변해드리겠습니다.</dd>
                </div>
            </div>
            <div class="footline">
                <div class="lf1">
                    <button class="btn" onclick="location.href='';">신고하기</button>
                </div>
                <div class="lf2">
                    <dd>Copyright : broccoli. All rights reserved.</dd>
                </div>
            </div>
        </div>
        <div id="rightfoot">
            <ul>
                <li><a href="">이용약관</a></li>
                <li><a href="">개인정보처리방침</a></li>
                <li><a href="">입점 및 제휴 문의</a></li>
                <li><a href="<%= request.getContextPath() %>/login.admin">관리자</a></li>
            </ul>
            <div style="margin-top: 50px; margin-left: 45px">
		                상호명 : Broccoli <br>
		                사업자등록번호 : 218 - 00 - 00000 <br>
		                통신판매업 : 제 2020 - 서울강남 - 000001호 <br>
		                대표자 : 꿈을JAVA조 <br>
		                FAX : 070 - 0000 - 0000 <br>
		                이메일 : broccoli@broccoli.com 
            </div>
        </div>
            <a id="topbtn" href="#" class="fas fa-arrow-alt-circle-up"></a>
	</div>
	
</body>
</html>