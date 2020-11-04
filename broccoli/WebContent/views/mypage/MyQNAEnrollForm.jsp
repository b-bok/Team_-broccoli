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
    #navigator, #content_1>div #content_2>div {border:px solid rgb(160, 138, 138);}
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

    #p1{height:80%; padding:15px;}
    #p2{height:20%; text-align:center;}

    #topic{color:green;}
   
   
    .myqna-area{
    border:1px solid white;
    text-align:center;
    width:100%;
    border-collapse:collapse;
    }
    .myqna-area tbody tr:hover{
    background:rgba(111, 114, 111, 0.062);
    cursor: pointer;
    }
    .paging-area a{
    text-decoration:none;
    color:white;
    margin:5px;
    }
    .myqna-area thead{
    background:rgba(29, 216, 29, 0.548);
    cursor: pointer;
    }

    #qnaenroll-button{float:right; 
    background-color:rgba(13, 175, 13, 0.788);
    border:none;}
    
    
    
    .container {
   height: 36px;
   margin: 200px 0;
}

#qnaenroll{
    border: 1px solid black
}


</style>
</head>
<body>
<%@ include file="../common/menubar.jsp"%>
<br clear="both">

<div class="wrap">
    <div id="navigator">
        <ul id="navi">
            <li><a href="">내 정보</a></li>
            <li><a href="">적립금</a></li>
            <li><a href="">찜상품</a></li>
            <li><a href="">장바구니</a></li>
        </ul>
    </div>

    <div id="content">

        <div id="content_1">
               <br>
                <h1 id = "topic">마이페이지</h1>
                <br>
                 <div class="menu"><a href="<%= broccoli%>/myPageMain.my">주문 조회/ 배송 조회</a></div><br>
                    <div class="menu"><a href="<%= broccoli%>/myPageReturnAndExchange.my">반품/ 교환 조회▶</a></div><br>
                    <div class="menu"><a href="<%= broccoli%>/myPagePick.my">찜상품 조회</a></div><br>
                    <div class="menu"><a href="<%= broccoli%>/myPageInformChangeDelete.my">내 정보 조회/ 수정/ 탈퇴</a></div><br>
                    <div class="menu"><a href="<%= broccoli%>/myPageDeliverRegister.my">배송지 등록</a></div><br>
                    <div class="menu"><a href="<%= broccoli%>/myPagePoint.my">적립금 조회</a></div><br>
                    <div class="menu"><a href="<%= broccoli%>/myPageMyQNA.my?currentPage=1">내 문의 조회</a></div><br>
                    <div class="menu"><a href="<%= broccoli%>/myPageMyReview.my">내 리뷰 조회</a></div><br>
                    <div class="menu"><a href="<%= broccoli%>/myPageMyRecipe.my">내 레시피 조회</a></div>
        </div>

            <div id="content_2">
             <br><br><h1>내 문의 조회 > 1 : 1 문의</h1><hr>
                
               <form class="qnaenroll">
                  <table align = "center" border="1px" style="border-color:rgba(128, 128, 128, 0.13)">
                    <tr>
                        <th rowspan="2" width="70" style="text-align:center; background-color:rgba(24, 212, 65, 0.13)">제목</th>
                        <td width="100">
                            <select name="category">
                             <option value="return">배송지연</option>
                             <option value="return">반품문의</option>
                             <option value="return">환불문의</option>
                             <option value="return">교환문의</option>
                             <option value="return">기타문의</option>
                            </select>
                        </td> 
                    </tr>
                    <tr>
                        <th><input type="text" size="100"></th>
                    </tr>
                    <tr>
                        <th height="70"width="100"style="text-align:center; background-color:rgba(24, 212, 65, 0.13)">주문번호</th>
                        <td><input type="text"> <button type="button" class="btn btn-success btn-sm">주문조회</button></td>
                    </tr>
                    <tr>
                        <th height="70"width="100"style="text-align:center; background-color:rgba(24, 212, 65, 0.13)">이메일</th>
                        <td><input type="email" name="email" width="30">
                        <input type ="checkbox"> 이메일 수신을 받겠습니다.</td>
                        
                    </tr>
                    <tr>
                        <th height="500" width="100"style="text-align:center; background-color:rgba(24, 212, 65, 0.13)">내용</th>
                        <td style="width:30px; height:30px;"><br>1:1 문의 작성 전 확인해주세요!<br><br>
                           
                                반품 / 환불
                            - 제품 하자 혹은 이상으로 반품(환불) 이 필요한 경우 사진과 함께 구체적인 내용을 남겨주세요.
                            <br><br>
                            주문취소
                            -배송 단계별로 주문취소 방법이 상이합니다
                            [입금확인] 단계 : 주문내역 상세페이지에서 직접 취소 가능
                            [상품준비중] 이후에는 취소가 제한되는 점 고객님의 양해 부탁드립니다
                            부분취소는 불가능합니다. 전체 주문 취소 후 재구매 해주세요
                            <br><br>
                            배송
                            - 주문 완료 후 배송방법 변경이 불가능합니다
                            - 배송일 및 배송시간 지정은 불가능합니다
                            <br><br>
                            <textarea name="ourtext" style="width:700px; height:300px;" maxlength="2000"></textarea>

                        </td>
                    </tr>
                    <tr>
                        <th height="70" width="100"style="text-align:center; background-color:rgba(24, 212, 65, 0.13)">이미지</th>
                        <td><button>파일선택</button>   선택된 파일없음&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <button>+</button><button>업로드 추가</button> 파일은최대 5개까지 지원됩니다.</td>
                        
                    </tr>
                    
                   </table>
                   <div class="enrollbutton" align="center"><br>
                    <button type="button" class="btn btn-success">등록하기</button>
                   </div>
                   
               </form>

               
               
            </div>
         
    </div>
</div>

</body>
</html>