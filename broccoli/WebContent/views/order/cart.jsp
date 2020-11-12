<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.order.model.vo.*, java.util.*"%>
<% 	ArrayList<OrderList> olist = (ArrayList<OrderList>)request.getAttribute("olist"); %>    
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
        height: 800px;
        margin-bottom: 50px
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
    #price{width: 60px; display: inline-block; text-align: right; margin-right: 10px; font-size:15px;}
    .order_menu{padding: 0; list-style-type: none; text-align: center; height: 100%;}
    .orderwrap {width: 100%; height: 150px;}
    .order_menu>li {width: 140px; height: 100%; float: left; line-height: 150px; margin-left: 2px;}
    .box{border: 2px solid gray; height: 100%; font-size: 13px; line-height: 50px}
    .box>span{font-size: 16px; font-weight: bold;}
    #cartForm .btn{border-radius: 3px; background-color: green; border: none; color: white; font-weight: 900; padding: 5px 20px 5px 20px;}
</style>
<body>

	<%@ include file = "../common/menubar.jsp" %>
	
	
	
    <br><br>
    
    
    
    <% if(olist.isEmpty()) { %>
	  
	  <h4 align="center" style="margin-top:100px">장바구니에 담긴 상품이 없습니다.</h4>
	  
    <% } else { %>
        <div class="tablewrap" align="center">
	    <form id="cartForm" action="<%= broccoli %>/order.or" method="POST">
            <h2>장바구니</h2> <br>
            	주문하실 상품과 수량을 꼭 확인해주세요.
            <br><br><br><br><br>
            <table class="table">
      			<thead style="text-align: center;">
	              <tr>
	                  <td width="70" colspan="2" style="text-align: left;">
	                      <label class="form-check-label">
	                          <input type="checkbox" name="check" id="checkAll" style="margin-right:5px">전체선택
	                      </label>
	                  </td>
	                  <td width="300"><label>상품 정보</label></td>
	                  <td width="100"><label>수량</label></td>
	                  <td width="100"><label>상품금액</label></td>
	              </tr>
        		</thead>
               	<tbody>
				<% for(OrderList o : olist) { %>
	                    <tr>
	                        <td width="10" style="vertical-align: middle;">
	                            <label class="form-check-label">
	                            	<input type="checkbox" name="check">
	                            </label>
	                        </td>
	                        <td width="60" style="vertical-align: middle;">
	                            <img width="75" height="75" src="<%= broccoli %>/<%= o.getThumbnail() %>">
	                        </td>
	                        <td width="300" style="vertical-align: middle;">
	                            <a href="<%= broccoli%>/detail.pb?pno=<%= o.getpNo()%>">
		                            <input type="hidden" id="pno" name="pno" value="<%= o.getpNo()%>">
		                            <input type="hidden" name="price" value="<%= o.getpPrice()%>">
	                               	<div>
	                                   <%= o.getpName() %> <br>
	                                   <%= o.getpPrice() %>원
	                               	</div>
	                            </a>
	                        </td>
	                        <td width="100" align="center" style="vertical-align: middle;">
	                            <div class="pagination">
	                                <button type="button" class="glyphicon-minus" style="font-size: 15px;"></button>
	                                <input type="number" id="quantity" min="1" name="quantity" style="text-align: center;" value="<%= o.getQuantity()%>">
	                                <button type="button" class="glyphicon-plus" style="font-size: 15px"></button>
	                            </div>
	                        </td>
	                        <td width="100" align="center" style="vertical-align: middle;">
	                            <div id="price"><%= o.getTotalAmt() %></div>원 
	                            <input type="hidden" name="pprice" value="">
	                            <i type="button" class="fas fa-trash trash" style="font-size: 15px; margin-left: 13px;"></i>
	                        </td>
	                    	</tr>
		                <% } %>
		                </tbody>
		                <tfoot>
		                    <tr>
		                        <td width="70" colspan="2" style="text-align: left; vertical-align: middle;">
		                            <label class="form-check-label">
		                                <input type="checkbox" name="check" id="checkAll" style="margin-right:5px">전체선택
		                            </label>
		                        </td>
		                        <td width="300" style="vertical-align: middle;">
		                            <button type="button" class="btn btn-secondary btn-sm del">선택 삭제</button>
		                        </td>
		                        <td width="100" colspan="2" style="vertical-align: middle;">※ 적립금은 다음화면인 '주문서'에서 확인가능합니다.</td>
		                    </tr>
		                </tfoot>
		            </table>
		            <br><br><br>
		            <div class="orderwrap">
		                <ul class="order_menu">
		                    <li>
		                    	<div class="box">상품금액 <br> 
		                    		<span></span> 원
		                    	</div>
		                    </li>
		                    <li><div class="glyphicon-minus" style="font-size: 35px;"></div></li> 
		                    <li><div class="box">상품할인금액 <br> <span></span> 원</div></li>
		                    <li><div class="glyphicon-plus" style="font-size: 35px;"></div></li> 
		                    <li><div class="box">배송비 <br> <span></span> 원</div></li>
		                    <li><div class="fas fa-equals" style="font-size: 20px;"></div></li> 
		                    <li><div class="box">결제예정금액 <br> <span></span> 원</div></li>
		                </ul>
		            </div>
		            <br><br><br>
		            <input type="hidden" id="totalamt" name="totalamt" value="">
		            
		            <button type="submit" id="submitbtn" class="btn active" style="width: 150px;" disabled>주문하기</button> <br><br>
				         	   ※ '입금확인' 상태일 때는 주문내역 상세 페이지에서 직접 주문 취소가 가능합니다. <br>
				          	  '입금확인' 이후 상태일 때는 고객센터로 문의해주세요. <br><br>
		</form>
	<% } %>
    
	
	</div>
    <%@ include file = "../common/footer.jsp" %>
	
	
	<script>
		// 상품별 합계금액 구하는 함수
		function checksum(){
			var totalpricebox =	$(".order_menu>li").eq(0).find(".box").children();		// 모든상품총금액 값상자
			var feebox = $(".order_menu>li").eq(4).find(".box").children();				// 배송지 값상자
			var paymentbox =$(".order_menu>li").last().find(".box").children();			// 결제금액
			
			var sum = 0;		// 합계
    		var fee = 0;		// 배송비
    		var totalamt = 0;	// 결제예정금액
    		
    		// 상품별 체크박스 클릭시
    		$("tbody :checkbox").each(function(){
    			if($(this).is(":checked") == true){
    				var amt = parseInt($(this).closest("tr").children().last().children().text());
    				sum = sum + amt;
	        		fee = sum < 30000 ? 3000 : 0;
    				totalamt = sum + fee;
    			}
    		});
    		totalpricebox.text(sum.toLocaleString('en'));
			feebox.text(fee.toLocaleString('en'));
			paymentbox.text(totalamt.toLocaleString('en'));
        	$("#totalamt").val(totalamt);	 
		}
		
		
		$(function(){
	    	// 수량 마이너스 버튼 클릭시
	    	$(".glyphicon-minus").click(function(){
	    		var num = parseInt($(this).closest("div").children().eq(1).val());		//수량
	    		var amt = parseInt($(this).closest("td").next().children().eq(0).text());		//총금액
	    		var price = parseInt($(this).closest("td").prev().children().find("input").eq(1).val());	//상품가격
	    		amt = (num-1) * price;
	    		// 수량 감소
	    		$(this).closest("div").children().eq(1).val(num-1);
	    		// 금액 감소
	    		$(this).closest("td").next().children().eq(0).text(amt);
	    		// 수량이 1이하인 경우
	    		if(num <= 1){
	    			alert("최소 주문 수량은 1입니다.");
	    			$(this).closest("div").children().eq(1).val(1);
	    			$(this).closest("td").next().children().eq(0).text(price*1);
	    		}
	    		
	    		checksum();
	   		});
	    	
	    	// 수량 인풋박스에 직접 변경시
	    	$(".pagination>input").change(function(){
	    		var num = parseInt($(this).closest("div").children().eq(1).val());
	    		var price = parseInt($(this).closest("td").prev().children().find("input").eq(1).val());
	    		var amt = parseInt($(this).closest("td").next().children().eq(0).text());
	    		amt = num * price;
	    		$(this).closest("td").next().children().eq(0).text(amt);
	    		
	    		checksum();
	    		
	    	});
	    	
	    	// 수량 플러스 버튼 클릭시
	    	$(".glyphicon-plus").click(function(){
	    		var num = parseInt($(this).closest("div").children().eq(1).val());		//수량
	    		var amt = parseInt($(this).closest("td").next().children().eq(0).text());			//총금액
	    		var price = parseInt($(this).closest("td").prev().children().find("input").eq(1).val());	
	    		amt = (num+1) * price;
	    		// 수량 증가
	    		$(this).closest("div").children().eq(1).val(num+1);
	    		// 금액 증가
	    		$(this).closest("td").next().children().eq(0).text(amt);
	    		
	    		checksum();
	   		});
	    	
			// 체크박스 전체 클릭시
			$(".form-check-label>#checkAll").click(function(){		
				if($(this).prop("checked")){
					$(":checkbox").prop("checked", true);
				}else{
					$(":checkbox").prop("checked", false);
				}
			});
			
			// 체크박스 선택 안된상태에서 주문시
			$(":checkbox").click(function(){
				if($(this).is(":checked") == true){
					$("#submitbtn").attr("disabled", false);
				}else{
					$("#submitbtn").attr("disabled", true);
				}
			})
			
	    	
	    	// 테이블 행 별 체크박스 클릭시
	    	$(".form-check-label>#checkAll, tbody :checkbox").click(function(){
	    		checksum();	        	
			});	
	    	
			// 휴지통아이콘 클릭시
			$(".trash").click(function(){
				if(confirm("삭제하시겠습니까?") == true){
					var pno = $(this).closest("tr").children().eq(2).children().find("#pno").val();
					$(this).closest("tr").remove();
					deleteCartList(pno);
				}
				var trl = $("tbody>tr").length;
				if(trl == 0){
					$("form").hide();
					$(".tablewrap").html("<h4>장바구니에 담긴 상품이 없습니다.</h4>");
					
				}
			});
			// 선택삭제 버튼 클릭시
			$(".del").click(function(){
				if(confirm("삭제하시겠습니까?") == true){
					var pno = $("tbody :checked").closest("tr").children().eq(2).children().find("#pno").val();
					$("tbody :checked").closest("tr").remove();
					deleteCartList(pno);
				}
				var trl = $("tbody>tr").length;
				if(trl == 0){
					$("form").hide();
					$(".tablewrap").html("<h4>장바구니에 담긴 상품이 없습니다.</h4>");
				}
			});
			
			
			
	    });
    
    
    // 장바구니 삭제 ajax
    function deleteCartList(pno){
    	$.ajax({
			url:"deleteCart.or",
			type:"post",
			data:{pno: pno},
			success:function(result){
				if(result>0){
					alert("삭제되었습니다.");
				}
			}, error:function(){
				console.log("통신실패");
			}
		})
   }
     
    </script>



</body>
</html>