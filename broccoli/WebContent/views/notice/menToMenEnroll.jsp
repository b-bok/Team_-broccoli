<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
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
.rect{
    background-color:#f2f2f2;
    padding: 10px;
}


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


</style>
</head>
<body>
<body>
<%@ include file="../common/menubar.jsp"%>
<br clear="both">

<div class="wrap" style="margin-top:50px;">
    
    <div id="content">

        <div id="content_1">
               <br>

         </div>

            <div id="content_2">
             <br><br><h3>l 1:1 문의</h1><hr>
                
               <form class="qnaenroll" action="insert.con" method="POST">
                  <table align = "center" border="1" style="border-color:rgba(128, 128, 128, 0.13)">
                    <tr>
                        <th class="rect" rowspan="2" width="100" style="text-align:center; padding:5px;">제목</th>
                        <td width="100" style="padding:5px;">
                            <select name="category">
                             <option value="return" selected>선택</option>
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
                        <th class="rect" height="70"width="100"style="text-align:center; padding:5px; ">주문번호</th>
                        <td><input type="text"> <button type="button" class="btn btn-success btn-sm">주문조회</button></td>
                    </tr>
                    <tr>
                        <th class="rect" height="70"width="100"style="text-align:center;">이메일</th>
                        <td><input type="email" name="email" width="30">
                        <input type ="checkbox"> 이메일 수신을 받겠습니다.</td>
                        
                    </tr>
                    <tr>
                        <th class="rect" height="00" width="100"style="text-align:center;">내용</th>
                        <td style="width:30px; height:30px; padding: 20px;"><br>1:1 문의 작성 전 확인해주세요!<br><br>
                           
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
                            <textarea name="ourtext" style="width:700px; height:500px; resize:none;"></textarea>

                        </td>
                    </tr>
                    <tr>
                        <th class="rect" height="70" width="100"style="text-align:center;">이미지</th>
                        <td> <form class="attachform" name="file">
                                                <table id='insertTable' border=0 cellpadding=1 cellspacing=0 margin-left="50px">
                                                   <tr>
                                                       <td valign=bottom>
                                                           <input type='file' maxLength='100' name='filename1' size='20'>
                                                       </td>
                                                       <td width=80>
                                                           <input type="button" value="추가" onClick="addFile(this.form)" border=0 style='cursor:hand'>
                                                           <input type="button" value="삭제" onClick='deleteFile(this.form)' border=0 style='cursor:hand'>
                                                       </td>
                                                   </tr>
                                               </table>
                                               <input type="hidden" name="rowCount" value="1">
                                           </form>     
                             </td>
                        
                    </tr>
                    
                   </table>
                   <div class="enrollbutton" align="center"><br>
                    <button type="button" class="btn btn-outline-success btn-sm">등록하기</button>
                    <a href="<%=broccoli%>/list.no" class="btn btn-outline-light text-dark">뒤로가기</a>
                   </div>
                   
               </form>

               
               
            </div>
         
    </div>
</div>
<%@ include file="../common/footer.jsp"%>

</body>
</html>