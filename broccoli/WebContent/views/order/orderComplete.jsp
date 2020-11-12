<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.order.model.vo.*"%>
<%  Order order = (Order)request.getAttribute("order"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
    .wrap {
            box-sizing: border-box; 
            font-size: 13px; 
            margin:auto; 
            font-weight: 600;
            margin-top: 50px;
            width: 1000px;
        }
        #orderImg {
            background-color: rgba(0, 128, 0, 0.2);
            width: 1000px;
            height: 180px;
            display: table-cell; 
            vertical-align: middle;
        }
        .wrap .btn{border-radius: 3px; background-color: green; border: none; color: white; font-weight: 900; padding: 5px 20px 5px 20px; margin-right: 20px;}
        #orderImg>div {
            height: 90%;
            width: 70%; 
            opacity: rgba(0, 128, 0, 0.3);
            border: 1px solid white;
            text-align: center;    
        }
        .check{margin: 0px; padding: 0; list-style-type: none; text-align: center; height: 100%;}
</style>
<body>

	
	<%@ include file="../common/menubar.jsp"%>
	<div class="wrap" align="center">
        <br><br><br>
        <h2>주문 완료</h2>
        <br>
        <div id="orderImg">
            <div>
                <ul class="check">
                    <li class="fas fa-check-circle" style="font-size: 35px; margin: 8px;"></li>
                    <li><h5><b><%= order.getMemName() %>님 주문해주셔서 감사합니다.</b></h5></li> <br>
                    <li>결제금액 : <%= order.getTotalAmt() %> 원</li>
                    <li>주문번호 : <%= order.getOrderNo() %></li>
                </ul>
            </div>
        </div>
        <br><br><br><br>
        <button onclick="location.href='<%= broccoli %>/'" class="btn btn-lg" style="background-color: gray;">홈으로 이동</button>
        <button onclick="location.href='<%= broccoli %>/myPageMain.my'" class="btn btn-lg">주문 내역 확인</button>
        
    </div>
    
    <%@ include file = "../common/footer.jsp" %>

</body>
</html>