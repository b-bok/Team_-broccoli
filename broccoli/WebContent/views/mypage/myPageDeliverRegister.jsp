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
        }
        #navi a:hover{color:rgb(13, 23, 77);}
        #navi a:hover{background:rgba(15, 153, 61, 0.445);}
       
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
        }

        #content>div{height:100%; float:left;}
        #content_1{width:20%;}
        #content_2{width:80%;}

      
        #content_1>div{width:98%; height:100%
        
        }
        
        

        #content_2>div{width:100%; height:100%;

        
        }

       #p1{height:80%; padding:15px;}
        #p2{height:20%; text-align:center;}

        #topic{color:green;
        font-weight:bold;
        }

        #topic1{
            text-align: center;
        }
       #deliver{
          float:right;
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
                    <div class="menu"><a href="<%= broccoli%>/myPageInformChangeDelete.my">내 정보 조회/ 수정/ 탈퇴</a></div><br>
                    <div class="menu"><a href="<%= broccoli%>/myPageDeliverRegister.my">배송지 등록▶</a></div><br>
                    <div class="menu"><a href="<%= broccoli%>/myPagePoint.my">적립금 조회</a></div><br>
                    <div class="menu"><a href="<%= broccoli%>/myPageMyQNA.my?currentPage=1">내 문의 조회</a></div><br>
                    <div class="menu"><a href="<%= broccoli%>/myPageMyReview.my">내 리뷰 조회</a></div><br>
                    <div class="menu"><a href="<%= broccoli%>/myPageMyRecipe.my">내 레시피 조회</a></div>
          </div>
        </div>
 
        <div id="content_2">
          <div id="content_2_1">
              <br><br><h3 style= font-weight:bold;>배송지 등록</h3>
                    <hr>
            <div class="container">
              <table class="table">
                          <thead>
                            <tr>
                              <th>번호</th>
                              <th>수령인</th>
                              <th>전화번호</th>
                              <th>주소</th>
                            </tr>
                          </thead>
                          <tbody>
                         
                          </tbody>
                        </table>
            </div>
                        <br>
                        <!-- 등록된 배송지 없을 경우 -->
                        
                         <h4 id="topic1">현재 등록된 배송지가 없습니다.</h4>
                         <div class="container">  
  <!-- 배송지등록 버튼-->
  <button type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal">
    배송지 등록
  </button>

  <!-- The Modal -->
  <div class="modal" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- 배송지 등록 창 헤더 -->
        <div class="modal-header">
          <h4 class="modal-title">배송지 등록</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- 배송지 등록 창 바디 -->
        <div class="modal-body">
          <form action="">
               <label class="col-sm-3 control-label">배송지명</label>
               <input type="text" name="first" size=30 maxlength= 30 placeholder="ex)현관앞, 철제함, 직접수령..."><br><br>
               <label class="col-sm-3 control-label">수령인</label>
               <input type="text" name="last"size=30 maxlength= 30><br><br>
             
               <div class="input-group">
               &nbsp;&nbsp;&nbsp;주소&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="text" name="last"size=10 maxlength= 10 placeholder="우편번호">
                  <div class="input-group-append" size=10>
                   <button class="btn btn-success" type="submit">주소찾기</button>  
                  </div>
                 </div><br>
                 <label class="col-sm-3 control-label">      </label>
               <input type="text" name="last"size=30 maxlength= 30 placeholder="상세주소"><br><br>
               <label class="col-sm-3 control-label">연락처</label>
               <input type="tel" name="phone" size= 30 maxlength=13 placeholder="-없이입력" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" /><br><br>
               <label class="col-sm-3 control-label">기본배송지</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <input type="checkbox" background-color="black"> 기본배송지로 설정
           </form>
        </div>
        
        <!-- 배송지 등록 창 푸터 -->
        <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
        <button type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal2">등록</button>
        <div class="container">

  

  <!-- The Modal -->
  <div class="modal" id="myModal2">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- 팝업 내용 -->
        <div class="modal-body">
          성공적으로 등록되었습니다.
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-success" data-dismiss="modal">확인</button>
        </div>
        
      </div>
    </div>
  </div>
  
</div>

         
        </div>
        
      </div>
    </div>
  </div>
  
</div>

                        <br>
          </div>
        </div>
      </div>
    </div>

<%@ include file="../common/footer.jsp"%>
</body>
</html>