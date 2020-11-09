<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>자주하는 질문</title>
    <link rel="stylesheet"
    href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet"
    href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
    integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
    crossorigin="anonymous">
    <script
    src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script
    src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script
    src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

    <script src="faqsteop.js" type="text/javascript"></script>
    <style>
div {box-sizing: border-box;}

.wrap {
width: 1000px;
height: 800px;
margin: auto;
margin-top: 50px;
}
.wrap>div {width: 80%;float:right;}

#footer {height: 10%;}

#footer>div {width: 100%;float: left;}

#titleEx pre{float: left; font-size: x-large;}
#titleEx p{
    float: left;
    margin-left: 30px;
    line-height: 250%;
}
#notice_SearchList, #notice_Keyword{margin-right: 10px;float:right;}

#btn-group{
	float: left;
	width:20%;
	padding-right: 10px;
}
#gogaek{height:10%; padding-left:40px;}

.none{ display:none; }
.pointer{ cursor:pointer; }
 body{font-size:14px;}
</style>
</head>
<body>

    <%@ include file="../common/menubar.jsp"%>
	
	

    <div class="wrap">

        <!-- 타이틀 명입니다. -->
        <div id="titleEx">
            <pre><b>자주하는 질문</b></pre> 
            <p>고객님들이 가장 자주하시는 질문을 모았습니다. </p>
        </div>
		<h3 align="left" id="gogaek"><b>고객센터</b></h3>
		<!-- 좌측 버튼태그 (경로) -->
		<div class="btn-group-vertical" id="btn-group">
			<a href="<%=broccoli%>/list.no" class="btn btn-outline-light text-dark">공지사항</a>
			<a href="<%=broccoli%>/list.faq" class="btn btn-outline-light text-dark">자주하는 질문</a>
			<a href="" class="btn btn-outline-light text-dark">1:1 문의</a>
		</div>
        
        <div id="qnaCategory" align="left">
				
            <select name="qCategory" id="qCategory">

            <!-- Member, Payment, Cencle, Delivery  -->
            <option value="select" selected>선택</option>
            <option value="aboutM">회원 문의</option>
            <option value="aboutP">주문/결제</option>
            <option value="aboutC">취소/교환/환불</option>
            <option value="aboutD">배송문의</option>
        </select>
        <br><br>
        </div>
        

		<!-- 게시판 리스트 -->
		<div class="wrap2" id="noticeListBoard">
			
			<table class="table table-hover" id="noticeList" >
  
				<thead align="center">
					
					<tr>
						<th>번호</th>
						<th>분류</th>
						<th>제목</th>
                        <th>내용</th>
					</tr>
				</thead>

				<tbody align="center">
					<!-- 
                    <div align="center">
                        없음 페이지
                    </div> -->
				<form action="list.faq" method="post">
		
                    <tr align="center" class="pointer" onclick="FaqToggleDetail( 'row_1' )">
                        <td>1</td>
                        <td>
                        <span id="td_row_1">회원문의</span></td>
                        <td>아이디와 비밀번호가 생각나지 않아요 어떻게 하면 좋을까요?</td>
                        <td>2020-10-30</td>
                    </tr>
                    <tr class="none" id="row_1">
                        <td colspan="6" style="border:1px solid #000000;">
                            PC오른쪽 위 의 로그인 > 화면 아래 [아이디찾기] [비밀번호 찾기]가 있습니다. 그걸 통해 확인할 수 있으며 
                            임시 비밀번호의 경우 회원가입시 등록하신 이메일로 발송됩니다.
                            <br>
                            가입시 기재한 메일주소가 기억나지 않으시거나 오류가 발생하는 경우 고객행복센터[1577-1577] 또는 카카오톡으로 문의를 주시면
                            신속하게 도움 드리겠습니다. 
                            <br>
                            상담시에는 고객님의 개인정보보호를 위해 기존에 사용하던 비밀번호는 안내가 불가하며, 개인정보 확인 후 임시 비밀번호를 지정해드립니다.
                            
                        </td>
                    </tr>
                    
                    <tr align="center" class="pointer" onclick="FaqToggleDetail( 'row_2' )">
                        <td>2</td>
                        <td>
                        <span id="td_row_2">회원문의</span></td>
                        <td>아이디와 비밀번호가 생각나지 않아요 어떻게 하면 좋을까요?</td>
                        <td>2020-10-30</td>

                    </tr>
                    <tr class="none" id="row_2">
                        <td colspan="6" style="border:1px solid #000000;">
                            PC오른쪽 위 의 로그인 > 화면 아래 [아이디찾기] [비밀번호 찾기]가 있습니다. 그걸 통해 확인할 수 있으며 
                            임시 비밀번호의 경우 회원가입시 등록하신 이메일로 발송됩니다.
                            <br>
                            가입시 기재한 메일주소가 기억나지 않으시거나 오류가 발생하는 경우 고객행복센터[1577-1577] 또는 카카오톡으로 문의를 주시면
                            신속하게 도움 드리겠습니다. 
                            <br>
                            상담시에는 고객님의 개인정보보호를 위해 기존에 사용하던 비밀번호는 안내가 불가하며, 개인정보 확인 후 임시 비밀번호를 지정해드립니다.
                            
                        </td>
                    </tr>
                    
                    <tr align="center" class="pointer" onclick="FaqToggleDetail( 'row_3' )">
                        <td>3</td>
                        <td>
                        <span id="td_row_3">회원문의</span></td>
                        <td>아이디와 비밀번호가 생각나지 않아요 어떻게 하면 좋을까요?</td>
                        <td>2020-10-30</td>

                    </tr>
                    <tr class="none" id="row_3">
                        <td colspan="6" style="border:1px solid #000000;">
                            PC오른쪽 위 의 로그인 > 화면 아래 [아이디찾기] [비밀번호 찾기]가 있습니다. 그걸 통해 확인할 수 있으며 
                            임시 비밀번호의 경우 회원가입시 등록하신 이메일로 발송됩니다.
                            <br>
                            가입시 기재한 메일주소가 기억나지 않으시거나 오류가 발생하는 경우 고객행복센터[1577-1577] 또는 카카오톡으로 문의를 주시면
                            신속하게 도움 드리겠습니다. 
                            <br>
                            상담시에는 고객님의 개인정보보호를 위해 기존에 사용하던 비밀번호는 안내가 불가하며, 개인정보 확인 후 임시 비밀번호를 지정해드립니다.
                            
                        </td>
                    </tr>
                    
                    <tr align="center" class="pointer" onclick="FaqToggleDetail( 'row_4' )">
                        <td>4</td>
                        <td>
                        <span id="td_row_4">회원문의</span></td>
                        <td>아이디와 비밀번호가 생각나지 않아요 어떻게 하면 좋을까요?</td>
                        <td>2020-10-30</td>

                    </tr>
                    <tr class="none" id="row_4">
                        <td colspan="6" style="border:1px solid #000000;">
                            PC오른쪽 위 의 로그인 > 화면 아래 [아이디찾기] [비밀번호 찾기]가 있습니다. 그걸 통해 확인할 수 있으며 
                            임시 비밀번호의 경우 회원가입시 등록하신 이메일로 발송됩니다.
                            <br>
                            가입시 기재한 메일주소가 기억나지 않으시거나 오류가 발생하는 경우 고객행복센터[1577-1577] 또는 카카오톡으로 문의를 주시면
                            신속하게 도움 드리겠습니다. 
                            <br>
                            상담시에는 고객님의 개인정보보호를 위해 기존에 사용하던 비밀번호는 안내가 불가하며, 개인정보 확인 후 임시 비밀번호를 지정해드립니다.
                        </td>
                    </tr>
                    <tr align="center" class="pointer" onclick="FaqToggleDetail( 'row_5' )">
                        <td>5</td>
                        <td>
                        <span id="td_row_5">회원문의</span></td>
                        <td>아이디와 비밀번호가 생각나지 않아요 어떻게 하면 좋을까요?</td>
                        <td>2020-10-30</td>

                    </tr>
                    <tr class="none" id="row_5">
                        <td colspan="6" style="border:1px solid #000000;">
                            PC오른쪽 위 의 로그인 > 화면 아래 [아이디찾기] [비밀번호 찾기]가 있습니다. 그걸 통해 확인할 수 있으며 
                            임시 비밀번호의 경우 회원가입시 등록하신 이메일로 발송됩니다.
                            <br>
                            가입시 기재한 메일주소가 기억나지 않으시거나 오류가 발생하는 경우 고객행복센터[1577-1577] 또는 카카오톡으로 문의를 주시면
                            신속하게 도움 드리겠습니다. 
                            <br>
                            상담시에는 고객님의 개인정보보호를 위해 기존에 사용하던 비밀번호는 안내가 불가하며, 개인정보 확인 후 임시 비밀번호를 지정해드립니다.
                        </td>
                    </tr>
                    <tr align="center" class="pointer" onclick="FaqToggleDetail( 'row_6' )">
                        <td>6</td>
                        <td>
                        <span id="td_row_6">회원문의</span></td>
                        <td>아이디와 비밀번호가 생각나지 않아요 어떻게 하면 좋을까요?</td>
                        <td>2020-10-30</td>

                    </tr>
                    <tr class="none" id="row_6">
                        <td colspan="6" style="border:1px solid #000000;">
                            PC오른쪽 위 의 로그인 > 화면 아래 [아이디찾기] [비밀번호 찾기]가 있습니다. 그걸 통해 확인할 수 있으며 
                            임시 비밀번호의 경우 회원가입시 등록하신 이메일로 발송됩니다.
                            <br>
                            가입시 기재한 메일주소가 기억나지 않으시거나 오류가 발생하는 경우 고객행복센터[1577-1577] 또는 카카오톡으로 문의를 주시면
                            신속하게 도움 드리겠습니다. 
                            <br>
                            상담시에는 고객님의 개인정보보호를 위해 기존에 사용하던 비밀번호는 안내가 불가하며, 개인정보 확인 후 임시 비밀번호를 지정해드립니다.
                        </td>
                    </tr>
                    <tr align="center" class="pointer" onclick="FaqToggleDetail( 'row_7' )">
                        <td>7</td>
                        <td>
                        <span id="td_row_7">회원문의</span></td>
                        <td>아이디와 비밀번호가 생각나지 않아요 어떻게 하면 좋을까요?</td>
                        <td>2020-10-30</td>

                    </tr>
                    <tr class="none" id="row_7">
                        <td colspan="6" style="border:1px solid #000000;">
                            PC오른쪽 위 의 로그인 > 화면 아래 [아이디찾기] [비밀번호 찾기]가 있습니다. 그걸 통해 확인할 수 있으며 
                            임시 비밀번호의 경우 회원가입시 등록하신 이메일로 발송됩니다.
                            <br>
                            가입시 기재한 메일주소가 기억나지 않으시거나 오류가 발생하는 경우 고객행복센터[1577-1577] 또는 카카오톡으로 문의를 주시면
                            신속하게 도움 드리겠습니다. 
                            <br>
                            상담시에는 고객님의 개인정보보호를 위해 기존에 사용하던 비밀번호는 안내가 불가하며, 개인정보 확인 후 임시 비밀번호를 지정해드립니다.
                        </td>
                    </tr>
                    <tr align="center" class="pointer" onclick="FaqToggleDetail( 'row_8' )">
                        <td>8</td>
                        <td>
                        <span id="td_row_8">회원문의</span></td>
                        <td>아이디와 비밀번호가 생각나지 않아요 어떻게 하면 좋을까요?</td>
                        <td>2020-10-30</td>

                    </tr>
                    <tr class="none" id="row_8">
                        <td colspan="6" style="border:1px solid #000000;">
                            PC오른쪽 위 의 로그인 > 화면 아래 [아이디찾기] [비밀번호 찾기]가 있습니다. 그걸 통해 확인할 수 있으며 
                            임시 비밀번호의 경우 회원가입시 등록하신 이메일로 발송됩니다.
                            <br>
                            가입시 기재한 메일주소가 기억나지 않으시거나 오류가 발생하는 경우 고객행복센터[1577-1577] 또는 카카오톡으로 문의를 주시면
                            신속하게 도움 드리겠습니다. 
                            <br>
                            상담시에는 고객님의 개인정보보호를 위해 기존에 사용하던 비밀번호는 안내가 불가하며, 개인정보 확인 후 임시 비밀번호를 지정해드립니다.
                        </td>
                    </tr>
                    <tr align="center" class="pointer" onclick="FaqToggleDetail( 'row_9' )">
                        <td>9</td>
                        <td>
                        <span id="td_row_9">회원문의</span></td>
                        <td>아이디와 비밀번호가 생각나지 않아요 어떻게 하면 좋을까요?</td>
                        <td>2020-10-30</td>

                    </tr>
                    <tr class="none" id="row_9">
                        <td colspan="6" style="border:1px solid #000000;">
                            PC오른쪽 위 의 로그인 > 화면 아래 [아이디찾기] [비밀번호 찾기]가 있습니다. 그걸 통해 확인할 수 있으며 
                            임시 비밀번호의 경우 회원가입시 등록하신 이메일로 발송됩니다.
                            <br>
                            가입시 기재한 메일주소가 기억나지 않으시거나 오류가 발생하는 경우 고객행복센터[1577-1577] 또는 카카오톡으로 문의를 주시면
                            신속하게 도움 드리겠습니다. 
                            <br>
                            상담시에는 고객님의 개인정보보호를 위해 기존에 사용하던 비밀번호는 안내가 불가하며, 개인정보 확인 후 임시 비밀번호를 지정해드립니다.
                        </td>
                    </tr>
                    <tr align="center" class="pointer" onclick="FaqToggleDetail( 'row_10' )">
                        <td>10</td>
                        <td>
                        <span id="td_row_10">회원문의</span></td>
                        <td>아이디와 비밀번호가 생각나지 않아요 어떻게 하면 좋을까요?</td>
                        <td>2020-10-30</td>

                    </tr>
                    <tr class="none" id="row_10">
                        <td colspan="6" style="border:1px solid #000000;">
                            PC오른쪽 위 의 로그인 > 화면 아래 [아이디찾기] [비밀번호 찾기]가 있습니다. 그걸 통해 확인할 수 있으며 
                            임시 비밀번호의 경우 회원가입시 등록하신 이메일로 발송됩니다.
                            <br>
                            가입시 기재한 메일주소가 기억나지 않으시거나 오류가 발생하는 경우 고객행복센터[1577-1577] 또는 카카오톡으로 문의를 주시면
                            신속하게 도움 드리겠습니다. 
                            <br>
                            상담시에는 고객님의 개인정보보호를 위해 기존에 사용하던 비밀번호는 안내가 불가하며, 개인정보 확인 후 임시 비밀번호를 지정해드립니다.
                        </td>
                    </tr>

                    
			</form>
          </tbody>
			</table>

            <script type="text/javascript">
                function FaqToggleDetail ( id ){
                   var latestToggleObj = null;
                   var oObj = document.getElementById( id );	
           
                   if( this.latestToggleObj != null ){
                       this.latestToggleObj.className = (this.latestToggleObj.className + " none");
                   }
                   if( this.latestToggleObj == oObj ){
                       this.latestToggleObj = null;
                       return;
                   }
                   this.latestToggleObj = null;
           
                   if( oObj.className.indexOf( "none" ) != -1 ){
                       oObj.className = oObj.className.replace( "none", "" );			
                   }else{
                       oObj.className = (oObj.className + " none");
                   }
                   this.latestToggleObj = oObj;
                }
           </script>
           

		</div>

		<div id="footer">

			<div id="searchForm" align="left">

                <form action ="test" method ="get">

                    * 검색 &nbsp; &nbsp; 

                    
                    <input type="checkbox" id="checkbox"> 제목

                    <input type="text" name="keyword" id="notice_Keyword"> 
                    <input type="submit" value ="검색" name="notice_SearchList" id="notice_SearchList">
                    
                </form>
                 
			</div>

			<div id="pagingBar" align="center">

				<a href="">&lt;</a> <a href="">1</a> <a href="">2</a> <a href="">3</a>
				<a href="">4</a> <a href="">5</a> <a href="">6</a> <a href="">7</a>
				<a href="">8</a> <a href="">9</a> <a href="">10</a> <a href="">&gt;</a>

			</div>

		</div>

	</div>
	<%@ include file="../common/footer.jsp"%>
    
</body>
</html>