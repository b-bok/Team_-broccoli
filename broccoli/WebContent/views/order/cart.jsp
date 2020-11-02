<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
    .tablewrap {
        box-sizing: border-box; 
        font-size: 12px; 
        margin:auto; 
        margin-top: 50px;
        width: 1000px;
        height: 600px;
    }
    .table {text-align: left;}
    tbody>tr {height:100px}
    tfoot>tr {height:70px}
    .pagination a {
        color: black;
        float: left;
        padding: 8px 16px;
        text-decoration: none;
        }
    .pagination {
        display: inline-block;
        box-sizing: border-box;
        width: 110px;
        margin: auto;
        }
    .pagination input{width: 50%; font-weight: lighter;}
    input::-webkit-outer-spin-button,
    input::-webkit-inner-spin-button {
        -webkit-appearance: none;
        margin: 0;
        }
    .pagination button{width:20%; padding-right: 13px; border: none;}
    #price{width: 60px; display: inline-block; text-align: right; margin-right: 10px;}
    .order_menu{padding: 0; list-style-type: none; text-align: center; height: 100%;}
    .orderwrap {width: 100%; height: 150px;}
    .order_menu>li {width: 140px; height: 100%; float: left; line-height: 150px; margin-left: 2px;}
    .box{border: 2px solid gray; height: 100%; font-size: 13px; line-height: 50px}
    .box>span{font-size: 16px; font-weight: bold;}
    #cartForm .btn{border-radius: 3px; background-color: green; border: none; color: white; font-weight: 900; padding: 5px 20px 5px 20px;}
</style>
<body>

	<%@ include file = "../common/menubar.jsp" %>
	
	
	<script>
        function deleteEvent(){
            if(document.getElementById("quantity").value > 1){
                document.getElementById("quantity").value--;
            }
        }
        function addEvent(){
            if(document.getElementById("quantity").value > 1){
                document.getElementById("quantity").value++;
            }
        }
    </script>
    <br><br>
    
    
    
    <form id="cartForm" action="<%= broccoli %>/order.or" method="POST">
        <div class="tablewrap" align="center">
            <h2>장바구니</h2> <br>
            	주문하실 상품과 수량을 꼭 확인해주세요.
            <br><br><br><br><br>
            <table class="table" border="0">
                <thead style="text-align: center;">
                    <tr>
                        <td width="70" colspan="2" style="text-align: left;">
                            <label class="form-check-label">
                                <input type="checkbox" name="checkAll" style="margin-right:5px">전체선택
                            </label>
                        </td>
                        <td width="300"><label>상품 정보</label></td>
                        <td width="100"><label>수량</label></td>
                        <td width="100"><label>상품금액</label></td>
                    </tr>
                </thead>
                <tbody>
                    <!-- <tr>
                        <td width="100%" colspan="5" align="center" style="vertical-align: middle;">장바구니에 담긴 상품이 없습니다.</td>
                    </tr> -->
                    
                    <tr>
                        <td width="10" style="vertical-align: middle;">
                            <input type="checkbox">
                        </td>
                        <td width="60" style="vertical-align: middle;">
                            <img width="75" height="75" src="실제상품이미지경로">
                        </td>
                        <td width="300" style="vertical-align: middle;">
                            <a href="상품상세페이지경로">
                                <div>
                                    [몸에쏙쏙] 유기농 어린이 배도라지즙 2종 <br>
                                    14,310원
                                </div>
                            </a>
                        </td>
                        <td width="100" align="center" style="vertical-align: middle;">
                            <div class="pagination">
                                <button type="button" class="glyphicon-minus" style="font-size: 15px;" onclick="deleteEvent();"></button>
                                <input type="number" id="quantity" min="1" name="quantity" style="text-align: center;" value="5">
                                <button type="button" class="glyphicon-plus" style="font-size: 15px"" onclick="addEvent();"></button>
                            </div>
                        </td>
                        <td width="100" align="center" style="vertical-align: middle;">
                            <div id="price">15,000</div>원 
                            <i type="button" class="fas fa-trash" style="font-size: 15px; margin-left: 13px;" onclick="클릭이벤트"></i>
                        </td>
                    </tr>
                    
                </tbody>
                <tfoot>
                    <tr>
                        <td width="70" colspan="2" style="text-align: left; vertical-align: middle;">
                            <label class="form-check-label">
                                <input type="checkbox" name="checkAll" style="margin-right:5px">전체선택
                            </label>
                        </td>
                        <td width="300" style="vertical-align: middle;">
                            <button type="button" class="btn btn-secondary btn-sm">선택 삭제</button>
                            <button type="button" class="btn btn-secondary btn-sm">품절 상품 삭제</button>
                        </td>
                        <td width="100" colspan="2" style="vertical-align: middle;">※ 적립금은 다음화면인 '주문서'에서 확인가능합니다.</td>
                    </tr>
                </tfoot>
            </table>
            <br><br><br>
            <div class="orderwrap">
                <ul class="order_menu">
                    <li><div class="box">상품금액 <br> <span>15,000</span> 원</div></li>
                    <li><div class="glyphicon-minus" style="font-size: 35px;"></div></li> 
                    <li><div class="box">상품할인금액 <br> <span>0</span> 원</div></li>
                    <li><div class="glyphicon-plus" style="font-size: 35px;"></div></li> 
                    <li><div class="box">배송비 <br> <span>3,000</span> 원</div></li>
                    <li><div class="fas fa-equals" style="font-size: 20px;"></div></li> 
                    <li><div class="box">결제예정금액 <br> <span>18,000</span> 원</div></li>
                </ul>
            </div>
            <br><br><br>
            <button type="submit" class="btn active" style="width: 150px;">주문하기</button> <br><br>
         	   ※ '입금확인' 상태일 때는 주문내역 상세 페이지에서 직접 주문 취소가 가능합니다. <br>
          	  '입금확인' 이후 상태일 때는 고객센터로 문의해주세요. <br><br>
        </div>
    </form>
	
	

</body>
</html>