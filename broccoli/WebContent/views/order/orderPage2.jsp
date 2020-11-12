<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.kh.order.model.vo.*" %>
<%
	ArrayList<Order> list = (ArrayList<Order>)request.getAttribute("list");
	int totalamt = (int)request.getAttribute("totalamt");
%>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
     .wrap{
        box-sizing: border-box; 
        font-size: 12px; 
        margin:auto; 
        margin-top: 50px;
        width: 1000px;
    }
    .table {text-align: left;}
    .table>tbody>tr {height:100px}
    .table>tfoot>tr{height:70px}
    #price{width: 60px; display: inline-block; text-align: right; margin-right: 10px;}
    h4{margin-left: 30px; margin-bottom: 5px;}
    hr{margin-bottom:10px; margin-top: 0px;}
    .table2 {width: 90%; text-align: left;}
    .address{line-height: 180%;}
    input::-webkit-outer-spin-button,
    input::-webkit-inner-spin-button {
        -webkit-appearance: none; margin: 0;}
    .order_menu{padding: 0; list-style-type: none; text-align: center; height: 100%;}
    .orderwrap {width: 100%; height: 150px;}
    .order_menu>li {height: 100%; float: left; line-height: 150px; margin-left: 5px;}
    .box{border: 2px solid green; height: 100%; font-size: 13px; line-height: 50px; width:150px}
    .box>span{font-size: 16px; font-weight: bold;}
    .order_menu>li>.bo{width: 100px;}
    .scrollmenu>div{height: 100%; width: 45%; float: left; overflow: auto; white-space: normal; padding: 8px; text-align: left}
    .scrollmenu{height: 100px; width: 90%; margin-left: 20px;}
    #orderForm .btn{border-radius: 3px; background-color: green; border: none; color: white; font-weight: 900; padding: 5px 20px 5px 20px;}
</style>	
<body>

	<%@ include file = "../common/menubar.jsp" %>
	
	<form name="orderForm" id="orderForm" action="<%= broccoli %>/orderPay.or" method="POST">
        <div class="wrap" align="center">
            <h2>주문서</h2> <br>
            주문하실 상품과 수량을 꼭 확인해주세요.
            <br><br><br><br><br>
            <h4 align="left">상품정보</h4>
            <hr>
            <table class="table" border="0">
                <thead style="text-align: center;">
                    <tr>
                        <td colspan="2" style="text-align: left;"></td>
                        <td width="300"><label>상품 정보</label></td>
                        <td width="100"><label>수량</label></td>
                        <td width="100"><label>상품금액</label></td>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                    	<% for(Order o : list) { %>
                    	<input type="hidden" name="name" value="<%= o.getMemName() %>">
                        <td width="10" style="vertical-align: middle;">
                        </td>
                        <td width="60" style="vertical-align: middle;">
                            <img width="75" height="75" src="<%= o.getThumbnail() %>">
                        </td>
                        <td width="300" style="vertical-align: middle;">
                            <a href="<%= broccoli %>/detail.pb?pno=<%= o.getPno() %>">
                                <div>
                                    <%= o.getpName() %> <br>
                                    <%= o.getPrice() %>원
                                </div>
                            </a>
                        </td>
                        <td width="100" align="center" style="vertical-align: middle;">
                            <div class="pagination"><%= o.getQuantity()%></div>
                        </td>
                        <td width="100" align="center" style="vertical-align: middle;">
                            <div id="price"><%= o.getTotalAmt() %></div>원 
                        </td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
            <br><br>
            <h4 align="left">주문자 정보</h4>
            <hr>
            <br>
            <table class="table2" border="0" style="height: 80px;">
                <tr>
                    <th width="100">보내는 분 *</th>
                    <td><%= list.get(0).getMemName() %></td>
                </tr>
                <tr>
                    <th>연락처 *</th>
                    <td><%= list.get(0).getMobile() %></td>
                </tr>
            </table>
            <br><br><br>
            <h4 align="left">배송 정보</h4>
            <hr>
            <table class="table2" border="0" style="height: 200px;">
                <tr>
                    <th width="100">배송지</th>
                    <td width="300">
                        <input type="hidden" name="default" value="">
                        <div id="div11" style="border: 1px solid green; display: none; border-radius: 13px; 
                        padding: 3px; margin-left: 5px; margin-top: 0px; font-size: 8px;">기본 배송지</div> <br>
                        <div class="address">
                            <span id="add1"><%= list.get(0).getZipcode() + list.get(0).getAddress1() %> </span> <br>
                            <span id="add2"><%= list.get(0).getAddress2() + list.get(0).getAddextra() %> </span> <br>
                            <span id="name"><%= list.get(0).getMemName() %></span> ,  
                            <span id="mobile"><%= list.get(0).getMobile() %></span>
                            <input type="hidden" name="inputadd" id="inputadd" value="<%= login.getZipcode() + login.getAddress1() %>">
                            <input type="hidden" name="inputadd2" id="inputadd2" value="<%= login.getAddress2() %>">
                            <input type="hidden" name="inputmobile" id="inputmobile" value="<%= login.getMobile() %>">
                            <input type="hidden" name="inputdno" id="inputdno" value="">
                        </div>
                    </td>
                    <td><button class="btn btn-sm" type="button" onclick="changeAdd();">변경</button></td>
                    <script>
                    	function changeAdd(){
                    		window.name = "parentpage";
                    		window.open("<%= broccoli%>/changeAdd.or?mno=<%= login.getMemNo()%>","childForm","width=430, height=600, location=no, menubar=no, scrollbars=no, status=no, toolbar=no, resizable=no");
                    	}
					</script>
					
                </tr>
                <tr>
                    <th>수령방법</th>
                    <td>
                        <div class="address" id="received">
                            	 <br>
                            	 <br>
                        </div>
                        <input type="hidden" name="enter" id="en" value="">
                        <input type="hidden" name="receiveHow" id="rc" value="">
                    </td>
                    <td><button class="btn btn-sm" type="button"  data-toggle="modal" data-target="#myModal2">변경</button></td>
                </tr>
            </table>
            <br><br><br>
            <h4 align="left">적립금</h4>
            <hr>
            <table class="table2" border="0" style="height: 120px;">
                <tr>
                    <th width="100">적립금 사용</th>
                    <td width="200" style="text-align: center; box-sizing: border-box;">
                        <input type="number" name="point" id="point" min="0" style="text-align: right;" value="<%= list.get(0).getPoint() %>">원
                    </td>
                    <td>
                        <label class="form-check-label">
                            <input type="checkbox" id="pointYn" style="margin-right:5px">모두 사용
                            <script>
                            	$(function(){
                            		$("#pointYn").click(function(){
                            			if($(this).is(":checked") == true){
                        					$("#point").val(<%= list.get(0).getPoint() %>);
                        				}else{
                        					$("#point").val(0);
                        				}
                            		})
                            	})
                            </script>
                        </label>
                    </td>
                </tr>
            </table>
            <br><br><br>
            <h4 align="left">결제 수단 선택</h4>
            <hr>
            <br>
            <table class="table2" border="0" style="height: 100px;">
                <tr>
                    <th width="100">
                        <label class="form-check-label">
                            <input type="radio" name="payment" value="card"> 신용카드결제
                        </label>
                    </th>
                </tr>
            </table>
            <br><br><br>
            <h4 align="left">결제 금액</h4>
            <hr>
            <br>
            <div class="orderwrap">
                <ul class="order_menu">
                    <li><div class="box">주문금액 <br> <span><%= totalamt %></span> 원</div></li>
                    <li><div class="glyphicon-minus bo" style="font-size: 35px;"></div></li> 
                    <li><div class="box">적립금 사용 <br> <span>0</span> 원</div></li>
                    <li><div class="glyphicon-plus bo" style="font-size: 35px;"></div></li> 
                    <li><div class="box">배송비 <br> 
                    <span>
                    	<% int fee = (totalamt >30000) ? 0: 3000; %>
                    	<%= fee %>
                    </span> 원</div></li>
                    <li><div class="fas fa-equals bo" style="font-size: 20px;"></div></li> 
                    <li><div class="box" style="width: 210px; background-color: green; color: white;">최종 결제 금액 <br> <span><%= totalamt + fee %></span> 원</div></li>
                    <input type="hidden" name="totalamt" value="<%= totalamt + fee %>">
                    <input type="hidden" name="dfee" value="<%= fee %>">
                </ul>
            </div>
            <script>
            	
            </script>
            <br><br><br>
            <h4 align="left">개인 정보 수집/제공 *</h4>
            <hr>    
            <br>
            <div class="scrollmenu">
                <div style="margin-right: 90px;">
                        Ⅰ. 개인정보의 수집 및 이용 동의서 <br>
                            - 이용자가 제공한 모든 정보는 다음의 목적을 위해 활용하며, 하기 목적 이외의 용도로는 사용되지 않습니다. <br>
                            ① 개인정보 수집 항목 및 수집·이용 목적 <br>
                            가) 수집 항목 (필수항목) <br>
                            - 결제정보, 수취인명, 휴대전화번호, 수취인 주소 <br>
                            나) 수집 및 이용 목적 <br>
                            온라인 쇼핑 구매자에 대한 상품 결제 및 배송 <br>
                            ② 개인정보 보유 및 이용기간 <br>
                            - 업무 목적 달성 후 파기(단, 타 법령에 따라 법령에서 규정한 기간동안 보존) <br>
                            Ⅱ. 개인정보 업무 위탁 동의 <br>
                            가) 위탁받는 자 <br>
                            - ㈜프레시솔루션, 씨제이대한통운㈜, ㈜한진 <br>
                            나) 위탁정보 <br>
                            - 수취인명, 휴대전화 번호, 수취인 주소 <br>
                            다) 업무내용 <br>
                            - 온라인 쇼핑 구매자에 대한 상품 배송 <br>
                            ※ 서비스 제공을 위해서 필요한 최소한의 개인정보입니다. <br>
                            동의를 해 주셔야 서비스를 이용하실 수 있으며, 동의하지 않으실 경우 서비스에 제한이 있을 수 있습니다. <br>
                </div>
                <div>
                    전자금융거래 기본약관 <br>
                    제1조 (목적) <br>
                    이 약관은 주식회사 케이지이니시스(이하 '회사'라 합니다)가 제공하는 전자지급결제대행서비스 및 결제대금예치서비스를 
                    이용자가 이용함에 있어 회사와 이용자 사이의 전자금융거래에 관한 기본적인 사항을 정함을 목적으로 합니다. <br>
                    제2조 (용어의 정의) <br>
                    이 약관에서 정하는 용어의 정의는 다음과 같습니다. <br>
                    1. '전자금융거래'라 함은 회사가 전자적 장치를 통하여 전자지급결제대행서비스 및 결제대금예치서비스(이하 '전자금융거래 서비스'라고 합니다)를 제공하고, 
                    이용자가 회사의 종사자와 직접 대면하거나 의사소통을 하지 아니하고 자동화된 방식으로 이를 이용하는 거래를 말합니다. <br>
                    2. '전자지급결제대행서비스'라 함은 전자적 방법으로 재화의 구입 또는 용역의 이용에 있어서 지급결제정보를 송신하거나 
                    수신하는 것 또는 그 대가의 정산을 대행하거나 매개하는 서비스를 말합니다. <br>
                    3. '결제대금예치서비스'라 함은 이용자가 재화의 구입 또는 용역의 이용에 있어서 그 대가(이하 '결제대금'이라 한다)의 
                    전부 또는 일부를 재화 또는 용역(이하 '재화 등'이라 합니다)을 공급받기 전에 미리 지급하는 경우, 회사가 이용자의 
                    물품수령 또는 서비스 이용 확인 시점까지 결제대금을 예치하는 서비스를 말합니다. <br>
                    4. '이용자'라 함은 이 약관에 동의하고 회사가 제공하는 전자금융거래 서비스를 이용하는 자를 말합니다. <br>
                    5. '접근매체'라 함은 전자금융거래에 있어서 거래지시를 하거나 이용자 및 거래내용의 진실성과 정확성을 확보하기 위하여 사용되는 수단 
                    또는 정보로서 전자식 카드 및 이에 준하는 전자적 정보(신용카드번호를 포함한다), '전자서명법'상의 인증서, 
                    회사에 등록된 이용자번호, 이용자의 생체정보, 이상의 수단이나 정보를 사용하는데 필요한 비밀번호 등 전자금융거래법 제2조 제10호에서 정하고 있는 것을 말합니다. <br>
                    6. '거래지시'라 함은 이용자가 본 약관에 의하여 체결되는 전자금융거래계약에 따라 회사에 대하여 전자금융거래의 처리를 지시하는 것을 말합니다. <br>
                    7. '오류'라 함은 이용자의 고의 또는 과실 없이 전자금융거래가 전자금융거래계약 또는 이용자의 거래지시에 따라 이행되지 아니한 경우를 말합니다.   <br>
                </div>
            </div>
            <br><br><br>
            <label class="form-check-label" style="font-size: 14px;">
                <input type="checkbox" name="agreement" id="require"> 결제 진행 필수 동의
            </label>
            <br><br><br>
            <button class="btn" type="submit" id="submitbtn" style="width: 180px; height:40px" disabled>결제하기</button>
            <br><br><br><br><br>
        </div>
    </form>
    <script>
    	$(function(){
    		
    		$("#require").click(function(){
				if($(this).is(":checked") == true){
					$("#submitbtn").attr("disabled", false);
				}else{
					$("#submitbtn").attr("disabled", true);
				}
			})
    	})
    </script>
	

    
     <!-- 수령방법 모달 -->
     <div class="modal" id="myModal2">
        <div class="modal-dialog">
        <div class="modal-content">
    
            <!-- Modal Header -->
            <div class="modal-header">
            <h4 class="modal-title">수령방법 선택</h4>
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
    
            <!-- Modal body -->
            <div class="modal-body">
            	<div>
	            	<h5>수령 방법*</h5> 
	            	<label for="door" style="margin:5px">
	            	<input type="radio" name="receiveHow" id="door" value="문앞"> 문 앞 
	            	</label><br>
	            	<label for="guard" style="margin:5px">
	            	<input type="radio" name="receiveHow" id="guard" value="경비실"> 경비실
	            	</label><br>
	            	<label for="dbox" style="margin:5px">
	            	<input type="radio" name="receiveHow" id="dbox" value="택배함"> 택배함
	            	</label><br>
	            	<label for="etc" style="margin:5px">
	            	<input type="radio" name="receiveHow" id="etc" value="기타 장소"> 기타 장소
	            	</label>
            	</div>
            	<div>
            		<h5>출입 방법*</h5>
            		<label for="enter" style="margin:5px">
	            	<input type="text" class="form-control" name="enter" id="enter"> 
	            	</label>
            	</div>
	            	* 공동 현관 비밀번호 등 출입방법을 적어주세요.
            </div>
    
            <!-- Modal footer -->
            <div class="modal-footer">
            <button type="button" class="btn btn-danger" data-dismiss="modal" onclick="function1();">닫기</button>
            </div>
    		<script>
            	function function1(){
                  var count = document.getElementsByName("receiveHow").length;
               	  var receive = '';
               	  for(var i=0; i<count; i++){
               		  if(document.getElementsByName("receiveHow")[i].checked == true){
               			  receive = document.getElementsByName("receiveHow")[i].value;
               		  }
               	  }
               	  document.getElementById("received").innerHTML = receive +  "<br>출입방법: "+ document.getElementById("enter").value;
               	document.getElementById("rc").value = receive;
             	  document.getElementById("en").value = document.getElementById("enter").value;
            	}
            </script>
        </div>
        </div>
    </div>
    
    
    <%@ include file = "../common/footer.jsp" %>

</body>
</html>