<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    

     <title>Document</title>
     

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


   <style>


    div{ box-sizing:border-box;}
    #navigator, #content_1>div #content_2>div {border:1px solid lightgray;}
    a{text-decoration: none; color:black}
    .wrap{width:1300px;height:1800px;margin:auto;}
    .wrap>div{width:100%;}
    #navigator{height:7.5%; margin:10px 0px;}
    #content{height:80%;}

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
    #content_2>div{width:100%; height:100%;}
    #topic{color:green;}
    .productname{
        height:25px;
        margin-left:10px;
        
        width:500px;
        width:50%;
        display:inline-block;
        color:black;
    }
    .product{
        height:140px;
        margin-top:px;
        border:3px solid rgba(128, 128, 128, 0.473);
    }
    .btn{float:right; margin-right:10px; margin-top:30px;}
    .detail{
        height:25px;
        
        width:30%;
        width:100px;
        margin-left:280px;
        display:inline-block;}
    .detail a{
        color:gray;
    }
    .detail a:hover{
     text-decoration:none;
     color:green;
    }
    .date{
        height:100%;
        height:170px;
        
        margin-top:15px;
        margin-left:50px;
        margin-right:150px;
        color:gray;
    }
    #dateoption{
        float:right;
        margin-right:40px;
        margin-top:20px
    }
    .line{
        margin-top:0;
        background-color: rgba(128, 128, 128, 0.11);
        height:2px;
        width:800px;
    }
    .product>div{width:100%;}
    .product1{height:20%;
      }
    .product2{height:80%;
      }
    
    .product2_1{width:25%;height:95%;text-align: center;
        line-height:5.5;
     border:1px solid red;  float:left;
     margin-top:3px;
     margin-left:5px;
     margin-right:3px;}
     .product2_2{width:50%;height:95%; text-align: center;
     line-height:5.5;
      float:left;
     margin-top:3px;
     margin-right:3px;}
     .product2_3{width:23%;height:95%;text-align: center;
        line-height:5.5;
      float:left;
     margin-top:3px;}
    
    



    
    .modal-dialog{
        border:6px solid rgb(13, 167, 13) ;
        width:1000px;
    }
    .modal-content{
        border:1px solid  rgb(13, 167, 13);
        
    }
    .modal-header{
        border:1px solid  rgb(13, 167, 13);
          background-color:rgb(13, 167, 13);
          color:white;

    }
    .modal-body{
        height:600px;
    }
    .modal-footer{
        height:200%;
        padding-top:1px;
        margin-top:1px;
    }
    .modal-table{
       
        width:100%;
        height:100%;
        line-height:18px;
    }
    tr{}
    td{}
    #tr1{height:200px;}
    .image{
        border:1px solid red;
        width:30%;
        float:left;
        margin-left:30px;
        height:70%;
        
    }
    .pname{
        
        width:50%;
        float:left;
        margin-left:20px;
        height:70%;
        padding:5px;
        vertical-align:middle;
        overflow:hidden;word-wrap:break-word;
    }
    
   
   .maintext{float:left;margin-left:67px;
   margin-top:5px;}

  .subtext{width:70%;margin-top:5px;
    float:left;margin-left:67px;}

  .h{float:left;margin-left:67px;}



#insertTable{margin-left:40px;}

</style>
<script type="text/javascript">

	//첨부파일 추가
    var rowIndex = 1;
               
    function addFile(form){
        if(rowIndex > 4) return false;

        rowIndex++;
        var getTable = document.getElementById("insertTable");
	var oCurrentRow = getTable.insertRow(getTable.rows.length);
        var oCurrentCell = oCurrentRow.insertCell(0);
        oCurrentCell.innerHTML = "<tr><td colspan=2><INPUT TYPE='FILE' NAME='filename" + rowIndex + "' size=25></td></tr>";
    }
   
	//첨부파일 삭제
    function deleteFile(form){
        if(rowIndex<2){
            return false;
        }else{
        	rowIndex--;
			var getTable = document.getElementById("insertTable");
			getTable.deleteRow(rowIndex);
       }
    }
    
</script>







</head>
<body>
<%@ include file="../common/menubar.jsp"%>
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
                    <div class="menu"><a href="<%= broccoli%>/myPageReturnAndExchange.my">반품/ 교환 조회</a></div><br>
                    <div class="menu"><a href="<%= broccoli%>/myPagePick.my">찜상품 조회</a></div><br>
                    <div class="menu"><a href="<%= broccoli%>/myPageInformChangeDelete.my">내 정보 조회/ 수정/ 탈퇴</a></div><br>
                    <div class="menu"><a href="<%= broccoli%>/myPageDeliverRegister.my">배송지 등록</a></div><br>
                    <div class="menu"><a href="<%= broccoli%>/myPagePoint.my">적립금 조회</a></div><br>
                    <div class="menu"><a href="<%= broccoli%>/myPageMyQNA.my?currentPage=1">내 문의 조회</a></div><br>
                    <div class="menu"><a href="<%= broccoli%>/myPageMyReview.my">내 리뷰 조회▶</a></div><br>
                    <div class="menu"><a href="<%= broccoli%>/myPageMyRecipe.my">내 레시피 조회</a></div><br>
            
           
        </div>

        <div id="content_2" >
       <h1>내 리뷰 조회 > 리뷰 가능한 상품 목록</h1>
       <select id="dateoption">
           <option>전체기간</option>
           <option>2020년 </option>
           <option>2019년 </option>
           <option>2018년 </option>
       </select>

        <hr style="background-color:rgba(128, 128, 128, 0.301); height:3px; border:none"> 
        <br>
        <div id="productlist" style=" height:800px">
          
          <div class="date">2020.11.02
            <div class="product">
                <div class="product1"><div class="productname" >브로콜리</div><div class="detail"><a href="">상세조회 ></a></div><hr class="line"></div>
                <div class="product2">
                    <div class="product2_1">사진</div>
                    <div class="product2_2">주문번호 / 결제금액</div>
                    <div class="product2_3"> 
                        <div class="container1" method="post" enctype="multipart/form-data">
                            <input type="hidden" name="memNo" value="">
                          
                            <!-- Button to Open the Modal -->
                            <button type="button"class="btn btn-outline-success" data-toggle="modal" data-target="#myModal">리뷰작성하기</button>
                          
                            <!-- The Modal -->
                            <div class="modal " id="myModal" >
                              <div class="modal-dialog ">
                                <div class="modal-content">
                                
                                  <!-- Modal Header -->
                                  <div class="modal-header">
                                    <h4 class="modal-title">리뷰</h4>
                                    <button type="button" class="close" style="color:white" data-dismiss="modal">&times;</button>
                                  </div>
                                  
                                  <!-- Modal body -->
                                  <div class="modal-body">
                                    <table class="modal-table" border=1 width=150 height=150 frame="void">
                                        <tr id="tr1"><td><div class="image"><img src="images/200x200.png" alt="My Image"></div>
                                                <div class="pname"><br><br><br>브로콜리</div></td>
                                        
                                            </tr>
                                       
                                        
                                        <tr><td>상품 만족도<br><br>
                                            <div>별점 추가예정</div><br>
                                            어떤점이좋았나요?<br><br>
                                            <h7 class="h">제목</h7><br>
                                            <input type="text"  name="text" class="maintext" maxlength="50px"><br><br>
                                            <h7 class="h">내용</h7><br>
                                            <textarea type="text" name="content" class="subtext" maxlength="1000px"></textarea>
                                       </td></tr>
                                        <tr><td><h7 class="attach">첨부파일</h7><br>
                                            <form class="attachform" name="file">
                                                <table id='insertTable' border=0 cellpadding=1 cellspacing=0 margin-left="50px">
                                                   <tr>
                                                       <td valign=bottom>
                                                           <input type='file' maxLength='100' name='filename1' size='20'>
                                                       </td>
                                                       <td width=80>
                                                           <input type="button" value="추가" onClick="addFile(this.form)"  style='cursor:hand'>
                                                           <input type="button" value="삭제" onClick='deleteFile(this.form)'  style='cursor:hand'>
                                                       </td>
                                                   </tr>
                                               </table>
                                               <input type="hidden" name="rowCount" value="1">
                                           </form>                
                                           
                                           
                                        </td></tr>
                                    </table>        

                                  </div>
                                  
                                  <!-- Modal footer -->
                                  <div class="modal-footer">
                                    <button type="reset" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                                    <button type="submit" class="btn btn-success" data-dismiss="modal">작성</button>
                                  </div>
                                  
                                </div>
                              </div>
                            </div>
                            
                          </div>
                          
                        </div>
                </div>
            </div>
          </div>
            
          <div class="date">2020.10.02
            <div class="product">
                <div class="product1"><div class="productname" >브로콜리</div><div class="detail"><a href="">상세조회 ></a></div><hr class="line"></div>
                <div class="product2">
                       <div class="product2_1">사진</div>
                       <div class="product2_2">주문번호 / 결제금액</div>
                       <div class="product2_3"> <button type="button"class="btn btn-outline-success">리뷰작성하기</button></div>
                </div>
            </div>
        </div>
        <div class="date">2020.09.02
            <div class="product">
                <div class="product1"><div class="productname" >브로콜리</div><div class="detail"><a href="">상세조회 ></a></div><hr class="line"></div>
                <div class="product2">
                    <div class="product2_1">사진</div>
                    <div class="product2_2">주문번호 / 결제금액</div>
                    <div class="product2_3"> <button type="button"class="btn btn-outline-success">리뷰작성하기</button></div>
                </div>
            </div>
        </div>
            
        <div class="date">2020.08.02
            <div class="product">
                <div class="product1"><div class="productname" >브로콜리</div><div class="detail"><a href="">상세조회 ></a></div><hr class="line"></div>
                <div class="product2">
                    <div class="product2_1">사진</div>
                    <div class="product2_2">주문번호 / 결제금액</div>
                    <div class="product2_3"> <button type="button"class="btn btn-outline-success">리뷰작성하기</button></div>
                </div>
            </div>
        </div>
        </div>
        <div class="container2">
            <ul class="pagination justify-content-center">
              <li class="page-item"><a class="page-link" href="#">이전</a></li>
              <li class="page-item active"><a class="page-link" href="#">1</a></li>
              <li class="page-item "><a class="page-link" href="#">2</a></li>
              <li class="page-item"><a class="page-link" href="#">3</a></li>
              <li class="page-item"><a class="page-link" href="#">다음</a></li>
            </ul>
        </div>
            
        </div>
        
    </div>
    
</div>



</div>


    




<%@ include file="../common/footer.jsp"%>


</body>
</html>


