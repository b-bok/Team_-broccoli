<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        div, form, input{
            box-sizing:border-box;
        }
        #navigator, #content_1>div #content_2>div {border:1px solid lightgray;}
        a{text-decoration: none; color:black; font-size:12px;}
        
        .wrap{width:1300px;height:2000px;margin:auto;}

        
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
            text-decoration:none;
        }
        #navi a:hover{color:rgb(13, 23, 77);}
        #navi a:hover{background:rgba(15, 153, 61, 0.445);}
       
        .menu{
            display:table-cell;
            height:30px;
            width:240px;
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
        }

        #content>div{height:100%; float:left;}
        #content_1{width:20%;}
        #content_2{width:80%;}

      
        #content_1>div{width:98%; height:100%
        
        }
        
        

        #content_2>div{width:100%; height:100%;}
       
        #p1{height:80%; padding:15px;}
        #p2{height:20%; text-align:center;}

        #topic{color:green;
        font-weight:bold;
        }

        #topic1{
            font-weight:bold;
        }

        .container{
            float:left;
        }
        #container{
            font-weight:bold;
        }

        #form-group{
            font-weight:bold;
        }
       
       
       
    input[type='radio'] {
    -webkit-appearance:none;
    width:16px;
    height:16px;
    border:1px solid darkgray;
     border-radius:50%;
    outline:none;
    background:#e6e6e6;
  }
  input[type='radio']:before {
    content:'';
    display:block;
    width:60%;
    height:60%;
    margin: 20% auto;  
    border-radius:50%;  
  }
  input[type='radio']:checked:before {
  	background:#04ce25;
  }
        
       

        

        
    </style>
</head>
<body>

<%@ include file="../common/menubar.jsp"%>

<br clear="both">

    <div class="wrap">
        <div id="navigator">
            <ul id="navi">
                <li><a href="<%= broccoli%>/myPageInformChangeDelete.my">내 정보</a></li>
                <li><a href="<%= broccoli%>/myPagePoint.my">적립금</a></li>
                <li><a href="<%= broccoli%>/myPagePick.my">찜상품</a></li>
                <li><a href="<%= broccoli%>/main.jsp">메인으로가기</a></li>
            </ul>
        </div>

        <div id="content">

            <div id="content_1">
                <div id="content_1_1">
                    <br>
                    <h1 id = "topic">마이페이지</h1>
                    <br>
                    <div class="menu"><a href="<%= broccoli%>/myPageMain.my">주문 조회/ 배송 조회</a></div><br>
                    <div class="menu"><a href="<%= broccoli%>/myPageReturnAndExchange.my">반품/ 교환 조회</a></div><br>
                    <div class="menu"><a href="<%= broccoli%>/myPagePick.my">찜상품 조회</a></div><br>
                    <div class="menu"><a href="<%= broccoli%>/myPageInformChangeDelete.my">내 정보 조회/ 수정/ 탈퇴▶</a></div><br>
                    <div class="menu"><a href="<%= broccoli%>/myPageDeliverRegister.my">배송지 등록</a></div><br>
                    <div class="menu"><a href="<%= broccoli%>/myPagePoint.my">적립금 조회</a></div><br>
                    <div class="menu"><a href="<%= broccoli%>/myPageMyQNA.my">내 문의 조회</a></div><br>
                    <div class="menu"><a href="<%= broccoli%>/myPageMyReview.my">내 리뷰 조회</a></div><br>
                    <div class="menu"><a href="<%= broccoli%>/myPageMyRecipe.my">내 레시피 조회</a></div>
                </div>
               
            </div>

            <div id="content_2">
                <div id="content_2_1">
                    
                    <br><br><h3 id = "topic1">내 정보 조회/ 수정/ 탈퇴</h3>
                    
                    <hr><br><br>
                    
                    <form action="phone_add.html" method="post" class="form-horizontal">
                        <div class="form-inline form-group" >
                           <label for="id" class="col-sm-2 control-label" >아이디</label>
                           <div class="col-sm-10">
                            <input type="text" size= 50 class="form-control" id="id" name="id">&nbsp;&nbsp;<button type="button" class="btn btn-outline-success">아이디 중복확인</button>
                           </div>
                        </div>
                        <div class="form-inline form-group" >
                            <label for="password" class="col-sm-2 control-label" >현재 비밀번호</label>
                            <div class="col-sm-10">
                             <input type="text" size= 50 class="form-control" id="password" name="password">
                            </div>
                        </div>
                        <div class="form-inline form-group" >
                            <label for="new_password" class="col-sm-2 control-label">새 비밀번호</label>
                            <div class="col-sm-10">
                             <input type="text" size= 50 class="form-control" id="new_password" name="new_password">
                            </div>
                        </div>
                        <div class="form-inline form-group" >
                            <label for="check_new_password" class="col-sm-2 control-label">새 비밀번호 확인</label>
                            <div class="col-sm-10">
                             <input type="text" size= 50 class="form-control" id="check_new_password" name="check_new_password">
                            </div>
                        </div>
                        <div class="form-inline form-group" >
                            <label for="name"class="col-sm-2 control-label" >이름</label>
                            <div class="col-sm-10">
                             <input type="text" size= 50 class="form-control" id="name" name="name">
                            </div>
                        </div>
                        <div class="form-inline form-group" >
                            <label for="email"class="col-sm-2 control-label" >이메일</label>
                            <div class="col-sm-10">
                             <input type="text" size= 50 class="form-control" id="email" name="email">&nbsp;&nbsp;<button type="button" class="btn btn-outline-success">이메일 중복확인</button>
                            </div>
                        </div>
                        <div class="form-inline form-group" >
                            <label for="phone_num" class="col-sm-2 control-label">휴대폰</label>
                            <div class="col-sm-10">
                             <input type="text" size= 50 class="form-control" id="phone_num" name="phone_num"data-rule-required="true" placeholder="-를 제외하고 숫자만 입력하세요." maxlength="11">
                            </div>
                        </div>

                        
                        
                        <div class="form-inline form-group">
                           <label class="col-sm-2 control-label" for="gender">성별</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              <input type="radio" style="width:20px;height:20px;border:1px;" class="form-check-input" id="man" name="gender" value="option1" checked>&nbsp;남
                        
                         
                        
                            <label class="col-sm-1 control-label" for="radio1"></label>
                               <input type="radio" style="width:20px;height:20px;border:1px;" class="form-check-input" id="woman" name="gender" value="option2" checked>&nbsp;여
                        
                        
                            <label class="col-sm-1 control-label" for="radio1"></label>
                               <input type="radio" style="width:20px;height:20px;border:1px;" class="form-check-input" id="nothing" name="gender" value="option3" checked>&nbsp;선택안함
                        </div><br><hr>
                        <div class="form-inline form-group">
                            <label class="col-sm-2 control-label" for="allow">이용약관동의</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                               <input type="radio" style="width:20px;height:20px;border:1px;" class="form-check-input" id="radio1" name="optradio" value="option1" checked>&nbsp;SMS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         
                          
                         
                             <label  for="radio1"></label>
                                <input type="radio" style="width:20px;height:20px;border:1px;" class="form-check-input" id="radio2" name="optradio" value="option2" checked>&nbsp;이메일&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         
                         
                             <label for="radio1"></label>
                                <input type="radio" style="width:20px;height:20px;border:1px;" class="form-check-input" id="radio3" name="optradio" value="option3" checked>&nbsp;선택안함
                         </div><hr>
                         
                          <!-- 정보수정하기 -->
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <button type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal" style="background-color:#04ce25">
                            정보수정하기
                          </button>
                        
                          <!-- The Modal -->
                          <div class="modal fade" id="myModal">
                            <div class="modal-dialog">
                              <div class="modal-content">
                              
                                <!-- Modal Header -->
                                <div class="modal-header">
                                  <h4 class="modal-title">수정하시겠습니까?</h4>
                                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                                </div>
                                <!-- Modal footer -->
                                <div class="modal-footer">
                                  <button type="button" class="btn btn-success" data-dismiss="modal"style="background-color:#04ce25">예</button>
                                  <button type="button" class="btn btn-danger" data-dismiss="modal">아니요</button>
                                </div>
                                
                              </div>
                            </div>
                          </div>
                          <!-- 회원탈퇴하기 -->
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#myModal">
                            회원탈퇴하기
                          </button>
                        
                          <!-- The Modal -->
                          <div class="modal fade1" id="myModal1">
                            <div class="modal-dialog">
                              <div class="modal-content">
                              
                                <!-- Modal Header -->
                                <div class="modal-header">
                                  <h4 class="modal-title1">탈퇴하시겠습니까?</h4>
                                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                                </div>
                                <!-- Modal footer -->
                                <div class="modal-footer">
                                  <button type="button" class="btn btn-success" data-dismiss="modal">예</button>
                                  <button type="button" class="btn btn-danger" data-dismiss="modal">아니요</button>
                                </div>
                                
                              </div>
                            </div>
                          </div>
                    </div>
                      
                        

                      </form>
                    

                </div>
                
                </div>
            </div>
        </div>
    </div>

</body>
</html>