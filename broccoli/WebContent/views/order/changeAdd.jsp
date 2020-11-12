<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.member.model.vo.*, java.util.*, com.kh.order.model.vo.*"%>
<% 	
	Member m = (Member)request.getSession().getAttribute("login");
	String broccoli = request.getContextPath();  
	ArrayList<DeliverRegister> dlist = (ArrayList<DeliverRegister>)request.getAttribute("dlist");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <style>
        /* The popup form - hidden by default */
        .form-popup {
        width: 400px;
        right: 15px;
        border: 3px solid #f1f1f1;
        z-index: 9;
        }

        /* Add styles to the form container */
        .form-container {
        max-width: 300px;
        padding: 10px;
        background-color: white;
        }

        /* Full-width input fields */
        .form-container input[type=text] {
        width: 100%;
        padding: 15px;
        margin: 5px 0 22px 0;
        border: none;
        background: #f1f1f1;
        }

        /* When the inputs get focus, do something */
        .form-container input[type=text]:focus {
        background-color: #ddd;
        outline: none;
        }

        /* Set a style for the submit/login button */
        .form-container .btn {
        width: 100%;
        background-color: #4CAF50;
        color: white;
        padding: 16px 20px;
        border: none;
        cursor: pointer;
        margin-bottom:10px;
        opacity: 0.8;
        }

        /* Add a red background color to the cancel button */
        .form-container .cancel {
        background-color: gray;
        }

        /* Add some hover effects to buttons */
        .form-container .btn:hover, .open-button:hover, td :hover {
        opacity: 1;
        cursor: pointer;
        }
        
        input[type=radio] {margin:5px;}
        #search{
        color: #4CAF50;
        border: none;
        padding: 10px;
        cursor: pointer;
        margin-left: 50px;
        }
        #myForm2 .btn {
        background-color: #4CAF50;
        color: white;
        padding: 10px;
        border: none;
        cursor: pointer;
        margin-bottom:10px;
        width: 50px;
        opacity: 0.8;
        }
        #myForm2 .cancel {
        background-color: red;
        }
        #div4{margin-bottom:10px}
    </style>
</head>
<body>
	
	    <div class="form-popup" id="myForm2">
        <form class="form-container" method="post">
          <br>
          <div align="right">
            <button type="button" class="btn" style="width:120px; margin-bottom: 0px;" onclick="addAddr();">+ 새 배송지 추가</button>
			<button type="button" class="btn cancel" id="deleteAddr">삭제</button>
			</div>
			<script>
				function addAddr(){
					document.getElementById("myForm1").style.display = 'inline-block';
					document.getElementById("btn1").style.display = 'none';
				}
			</script>
          <br><br>
          <table class="table2">
          <% for(DeliverRegister d : dlist) { %>
            <tr>
                <td width="40" height="80">
                    <input type="radio" name="radio" id="radiobtn" style="width: 30px; height:20px">
                </td>
                <td width="400">
                	<% if(d.getAddressYN().equals("Y")) { %>
	                    <div id="div11" style="border: 1px solid green; display: inline-block; border-radius: 13px; 
	                    padding: 3px; margin-left: 5px; margin-top: 0px; font-size: 8px;">기본 배송지</div>
				    <% } %>
		                
	                    <div id="div4">
	                	<input type="hidden" name="dno" id="dno" value="<%= d.getDeliverNo() %>">
	                	<span id="dname">[<%= d.getDeliverName() %>]</span>   <br>
	                    <span id="dadd">
                            <%= d.getAddress() %><br>
                        </span>
                        <span id="dadd2">
                        <% if(d.getAddress2() == null) { %>
                        <% } else { %>
                        	<%= d.getAddress2() %> <br>
                        <% } %>
                        </span>
                        <span id="dname"><%= d.getReceiver() %></span>,<span id="dmobile"> <%= d.getMobile() %></span>
                    </div>
                </td>
            </tr>
           <% } %>
           
        </table>
         
        
        <button type="button" id="btn1" class="btn" style="margin-top: 30px; width: 350px; background-color: lightslategray">닫기</button>
        </form>
      </div>
      
      <script>
      	$(function(){
      		$("#btn1").click(function(){
      			if($("tr :radio").is(":checked") == true){
      				var checkedtr = $(":checked").closest("tr");
      				var checkedlist = checkedtr.children().next();
      			}else{
      				alert("배송지 목록을 선택하세요.");
      			}
      		})
      	})
      	$(function(){
      		$("#deleteAddr").click(function(){
      			
      			if($("tr :radio").is(":checked") == true){
      				var dno = $(":checked").closest("td").next().children().eq(0).val();
      				
      				$.ajax({
      					url:"ajaxUpdateAddr.or",
      					type:"post",
      					data: {dno:dno},
      					success: function(result){
      						if(result>0){
	      						location.reload();
      						}
      					},error: function(){
      						console.log("실패");
      					}
      				})
      			}else{
      				alert("삭제할 목록을 선택하세요.");
      			}
      		})
      	})
      	
      </script>

	
	<!--------------------------- 새 배송지 추가 버튼 클릭시 나타날 창 -------------------------->
    <div class="form-popup" id="myForm1" style="display:none;">
        <form name="myForm" class="form-container" method="post">
          <h1>배송지 입력</h1>
          
          <label><b>배송지 선택</b></label>
          <label for="home"> 
             <input type="radio" name="addressName" id="home" value="집" class="custom-control-input" checked>집
          </label>
          
          <label for="job">
            <input type="radio" name="addressName" id="job" value="직장" class="custom-control-input">직장
          </label> 
          <label for="etc">
            <input type="radio" name="addressName" id="etc" value="기타" class="custom-control-input">기타
          </label> 
      	  <br><br>
          <label for="name"><b>받는 분 이름*</b></label>
          <input type="text" placeholder="이름을 입력해주세요" id="name" name="name" required>
      
          <label for="mobile"><b>받는 분 휴대폰*</b></label>
          <input type="text" placeholder="-포함한 휴대폰 번호를 입력해주세요" id="mobile" name="mobile" required>

          <label for="address"><b>주소*</b></label> 
          
          <label for="default" style="font-size:11px; margin-left:30px;">
          <input type="checkbox" name="default" id="default">기본 배송지로</label>
          <button type="button" id="search" onclick="postcode();">주소 찾기</button>
          <span id="zip"> </span> 
          <span id="add1"> </span> <br>
          <input type="hidden" name="addinput" id="addinput" value="">
          <span id="add2"> </span>
          <span id="extra"> </span>
          <input type="hidden" name="addinput2" id="addinput2" value="">
          <input type="text" placeholder="상세 주소를 입력해주세요." id="addex" name="address" required>
          
            
          <button type="button" class="btn cancel" onclick="window.close();">닫기</button>
          <button type="submit" class="btn" onclick="goSubmit();">저장</button>
        </form>
      </div>

      <script>
      function goSubmit(){
    	  var count = document.getElementsByName("addressName").length;
    	  var addName = '';
    	  for(var i=0; i<count; i++){
    		  if(document.getElementsByName("addressName")[i].checked == true){
    			  addName = document.getElementsByName("addressName")[i].value;
    		  }
    	  }
    	  var add1 = document.getElementById("addinput").value;
    	  var add2 = document.getElementById("addinput2").value + (document.getElementById("addex").value); 
    	  var name = document.getElementById("name").value;
    	  var mobile = document.getElementById("mobile").value;
    	  var defaultYN = '';

    	  //부모창에 보여질 span태그에 값 전달
    	  opener.document.getElementById("add1").innerHTML = add1;
    	  opener.document.getElementById("add2").innerHTML = add2;
    	  opener.document.getElementById("name").innerHTML = name;
    	  opener.document.getElementById("mobile").innerHTML = mobile;
    	  // 폼에 있는 인풋에 넣을 값 전달
    	  opener.document.orderForm.inputadd.value = add1;
    	  opener.document.orderForm.inputadd2.value = add2;
    	  opener.document.orderForm.inputname.value = name;
    	  opener.document.orderForm.inputmobile.value = mobile;
    	  
    	  // 기본배송지여부 값 전달
    	  if(document.getElementById("default").checked == true){
	    	  opener.document.getElementById("div11").style.display = 'inline-block';
	    	  defaultYN = 'Y';
    	  }else{
	    	  opener.document.getElementById("div11").style.display = 'none';
	    	  defaultYN = 'N';
    	  }
    	  ajaxAddr(addName, add1, add2, name, mobile, defaultYN);
    	  document.myForm.submit();
    	  window.close();
    	
      }
      function postcode(){
  		new daum.Postcode({
              oncomplete: function(data) {

                  var addr = ''; // 주소 변수
                  var extraAddr = ''; // 참고항목 변수

                  if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                      addr = data.roadAddress;
                  } else { // 사용자가 지번 주소를 선택했을 경우(J)
                      addr = data.jibunAddress;
                  }

                  if(data.userSelectedType === 'R'){
                      // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                      // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                      if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                          extraAddr += data.bname;
                      }
                      // 건물명이 있고, 공동주택일 경우 추가한다.
                      if(data.buildingName !== '' && data.apartment === 'Y'){
                          extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                      }
                      // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                      if(extraAddr !== ''){
                          extraAddr = ' (' + extraAddr + ')';
                      }
                      // 조합된 참고항목을 해당 필드에 넣는다.
                      document.getElementById("add2").innerHTML = extraAddr;
                  
                  } else {
                      document.getElementById("add2").innerHTML = '';
                  }

                  // 우편번호와 주소 정보를 해당 필드에 넣는다.
                  document.getElementById('zip').innerHTML = data.zonecode;
                  document.getElementById("add1").innerHTML = addr;
                  // 인풋히든박스
                  document.getElementById("addinput").value = data.zonecode + addr;
                  document.getElementById("addinput2").value = extraAddr;
              }
          }).open();
  		}
      
      function ajaxAddr(addName, add1, add2, name, mobile, defaultYN){
    	  $.ajax({
    		  url:"ajaxAddr.or",
    		  type:"post",
    		  data:{addName:addName, 
    			  add1:add1, 
    			  add2:add2, 
    			  name:name, 
    			  mobile:mobile, 
    			  defaultYN:defaultYN},
    		success:function(result){
    			if(result > 0){
	    			alert("배송지 목록은 마이페이지에서 조회가 가능합니다.");
    			}else{
    				alert("배송지를 더이상 추가할 수 없습니다.");
    			}
    		},error:function(){
    			console.log("실패");
    		}	  
    	  })
      }
      </script>
</body>
</html>