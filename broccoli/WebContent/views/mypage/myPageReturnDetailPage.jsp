<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
        div{ box-sizing:border-box;}
        #navigator, #content_1>div #content_2>div {border:1px solid lightgray;}
        a{text-decoration: none; color:black}
        .wrap{width:1300px;height:1800px;margin:auto;}
        .wrap>div{width:100%;}
        #navigator{height:7.5%; margin:10px 0px;}
        #content{height:85%;}

        #navi{
            list-style-type: none;
            margin: 0;
            padding:0;
            height:100%;
            width:100%;
        }
        #navi>li{
            float:left;
            height:100%;
            width:25%;
            text-align:center;
            background:rgba(192, 190, 190, 0.301);
        }
        #navi a{
            font-size:16px;
            font-weight:600;
            color:rgba(56, 56, 100, 0.774);
            display: block;
            height:100%;
            line-height:140px;
        }
        #navi a:hover{color:rgb(13, 23, 77);
            background:rgba(15, 153, 61, 0.445);}
       
        .menu{
            display:table-cell;
            height:30px;
            width:220px;
        }
        .menu a{
            text-decoration:none;
            color:black;
            font-weight:bold;
            display:block;
            width:100%;
            height:100%;
            font-size:20px;
            line-height:50px;
        }
        .menu a:hover{
            background:rgba(15, 153, 61, 0.445);
            display:block;
        }
        #content>div{height:100%; float:left;}
        #content_1{width:20%;}
        #content_2{width:80%;}
        #content_1>div{width:98%; height:100%}
    
        .line{height:3px;background-color: rgba(128, 128, 128, 0.26);
        width:1000px;
        margin-left:20px;
        border:0px; 
        
        }
        
       .p{color:green;}
       .table{
       margin-left:100px;
       width:800px;
       height:200px;
       text-align:center;}
      
       
       
       

        #topic{color:green;}

        .reason{
            margin-left:100px;
        height:20%;
        width:800px;;}
    .select{height:30px;
    margin-top:20px;
    margin-left:15px;
    }
    .detailreason{
        margin-top:20px;
        width:400px;
        height:180px;
    }
    .textarea{width:300px;
    height:120px;
    margin-left:30px;
    
    }
    
    .refund1{
        margin:15px;
        margin-left:100px;
        height:200px;
        width:200px;
        float:left;
        text-align:center;
        line-height:30px;
        background-color:rgba(56, 201, 116, 0.452);
     }
     .refund2{
        margin:15px;
        margin-left:60px;
        height:200px;
        width:200px;
        float:left;
        text-align:center;
        line-height:px;
        background-color:rgba(56, 201, 116, 0.452);
     }
     
     .btn-secondary{
              margin-left:350px;
              margin-top:100px;
     }
     .btn-success{
         margin-top:100px;
         margin-left:90px;
     }
     .modal-header{
         background-color:green;
         color:white;
     }
     #close{background-color:green;
     color:white;}

     .table1{
         height:500px;
         width:100%;
         ;
     }
     td{border:1px solid gray;}
     .p1{font-size:13px;}
     .p2{font-size:13px; color:green; line-height: 0px;}
     #first{height:30%;}
     #second{height:10%;}
     #addressno{line-height:1px;}



   </style>
</head>
<body>
<%@ include file = "../common/menubar.jsp" %>
    <br clear="both">

    <div class="wrap">
        <div id="navigator">
            <ul id="navi">
                 <li><a href="<%= broccoli%>/myPageMain.my">내 정보</a></li>
            <li><a href="<%= broccoli%>/myPagePoint.my">적립금</a></li>
            <li><a href="<%= broccoli%>/myPagePick.my">찜상품</a></li>
            <li><a href="">장바구니</a></li>
            </ul>
        </div>

        <div id="content">

            <div id="content_1">
                    <br>
                    <h1 id = "topic">마이페이지</h1>
                    <br>
                     <div class="menu"><a href="<%= broccoli%>/myPageMain.my">주문 조회/ 배송 조회</a></div><br>
                    <div class="menu"><a href="<%= broccoli%>/myPageReturnAndExchange.my">반품/ 교환 조회 ▶</a></div><br>
                    <div class="menu"><a href="<%= broccoli%>/myPagePick.my">찜상품 조회</a></div><br>
                    <div class="menu"><a href="<%= broccoli%>/myPageInformChangeDelete.my">내 정보 조회/ 수정/ 탈퇴</a></div><br>
                    <div class="menu"><a href="<%= broccoli%>/myPageDeliverRegister.my">배송지 등록</a></div><br>
                    <div class="menu"><a href="<%= broccoli%>/myPagePoint.my">적립금 조회</a></div><br>
                    <div class="menu"><a href="<%= broccoli%>/myPageMyQNA.my?currentPage=1">내 문의 조회</a></div><br>
                    <div class="menu"><a href="<%= broccoli%>/myPageMyReview.my">내 리뷰 조회</a></div><br>
                    <div class="menu"><a href="<%= broccoli%>/myPageMyRecipe.my">내 레시피 조회</a></div><br>
                
               
            </div>

            <div id="content_2"><br><br>
           <h3>반품/ 교환 조회 >반품</h3>
            <hr><p class="p">*필수입력</p><h4>&nbsp;&nbsp;&nbsp;&nbsp;1.반품요청 상품선택 </h4><hr class="line">
            <table class="table">
               <tr>
                   <th>상품주문번호</th><th>상품명</th><th>주문금액</th><th>수량</th><th>배송비</th>
               </tr>
               
               <tr> 
                   <td>123456789</td><td>브로콜리600g</td><td>7,500원</td><td>1개</td><td>0원</td>
               </tr>

            </table><hr class=line>
             <div class="reason"> 사유선택:
                <select name="reason" class="select">
                    <option value="select">구매의사취소</option>
                    <option value="trouble">상품파손 및 불량</option>
                    <option value="style">색상및사이즈변경</option>
                    <option value="mistake">다른상품잘못주문</option>
                    <option value="else">기타</option>
                </select>
                
                <div class="detailreason">
                    자세한사유:<br><br>
                    <textarea class="textarea" maxlength="500"></textarea>
                    
                </div>
                사진첨부:
                <input type="file">
            </div>
            <hr class=line>
            <h4>&nbsp;&nbsp;&nbsp;&nbsp;2.환불예정금액 </h4>
          
            <div class="refund1"><h5>취소상품 총 금액합계<br></h5></div>
            <div class="refund2"><h5>환불금액 차감내역<br></h5></div>
            <div class="refund2"><h5>환불예정금액<br></h5></div>

            <button type="button" class="btn btn-secondary">뒤로가기</button>
            <button type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal">수거정보입력</button>
            
            

  
  <!-- The Modal -->
  <div class="modal" id="myModal">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
  
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">반품수거 정보입력</h4>
          <button type="button" id="close" data-dismiss="modal">&times;</button>
        </div>
  
        <!-- Modal body -->
        <div class="modal-body">
            <table class="table1">
               <tr><td id="first"><p class="p1">반품요청을 하시기 전에는 반드시 반품 수거 및 반품비용 결제방식을 먼저 협의해주세요<br>반품 수거완료 후
                상품확인을 통해</p> <p class="p2">상품 파손등의 특별한 사유가 없는 경우 배송비 외에 추가 반품 배송이 청구</p><p class="p1">될 수 있습니다 자동수거요청 이후</p>
             <p class="p2">수거 주소 변경 및 수거취소 요청은 수거요청하신 택배사를 통해 진행</p><p class="p1">해주세요.</p></td></tr>
               <tr><td id="secont">해당상품을 발송하셨습니까? <input type="radio" name="send" value="yes">네, 이미 발송했습니다.
                <input type="radio" name="send" value="no">아니요, 아직입니다.
                </td></tr>
               <tr><td id="third"><br><h5>반품상품 택배정보입력</h5><br>
                
                <form action="">
                    &nbsp;&nbsp;
                    <label type="col-sm-3 control-label">택배사</label>
                    <select name="reason" class="select">
                        <option value="select">택배사 선택</option>
                        <option value="trouble">한진택배</option>
                        <option value="style">롯데택배</option>
                        <option value="mistake">기타</option>
                    </select><br><br>
                    <label class="col-sm-3 control-label">신청자명</label>
                    <input type="text" name="first" size=30 maxlength= 30><br><br>
                    <label class="col-sm-3 control-label">연락처</label>
                    <input type="tel" name="phone" size= 30 maxlength=13 placeholder="-없이입력" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" /><br><br>
                  
                    <div class="input-group">
                    &nbsp;&nbsp;&nbsp;주소&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <input id="addressno" type="text" name="last"size=10 maxlength= 10 placeholder="우편번호">
                       <div class="input-group-append" size=10>
                        <button class="btn btn-success" type="submit">주소찾기</button>  
                       </div>
                      </div><br>
                      <label class="col-sm-3 control-label">      </label>
                    <input type="text" name="last"size=30 maxlength= 30 placeholder="상세주소"><br><br>
                    
                </form>
               </td>
            
            </tr>

            </table>

        </div>
  
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">반품철회</button>
          <button type="button" class="btn btn-success" data-dismiss="modal">반품신청</button>
        </div>
  
      </div>
    </div>
  </div>
           
            

                
            </div>
            
        </div>
    </div>
    <%@ include file = "../common/footer.jsp" %>
</body>
</html>

        
