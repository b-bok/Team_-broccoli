<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="com.kh.notice.model.vo.Notice"%>

<%
	Notice n = (Notice)request.getAttribute("n");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link rel="stylesheet"
    href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet"
    href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
    integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
    crossorigin="anonymous">
    </head>
    <script
    src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script
    src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script
    src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>


<style>
    .outer{

    background: white;
    width:1200px;
    height:800px;
    margin:auto;
    margin-top:100px;
    box-sizing: border-box;
}
    #detail-area tr td{
    border-color:white;
    padding:10px;
}
    .submitBtn{
    padding-right: 30px;
    margin-bottom: 30px;

}
    #titleEx #bgspan{
    float: left;
    margin-top: 50px;
    padding-left: 30px;
    text-align: center;
    font-size:30px;

}
    #titleEx #smspan{
    float: left;
    margin-left: 100px;
    line-height: 500%;
    margin-top: 50px;
    padding-left: 30px;
    text-align: center;

}
    #textarea1{
        width:700px;
        height:600px;
        border: 0.5px solid #f2f2f2;
    }
    #hr1{
        border:0;
        height:3px;
        background:#3cb371;
    }

    body{
    font-size:16px;
    }
</style>
</head>
<body>

	<%@ include file="../common/menubar.jsp"%>

    
    <div class="outer">
    <div id="titleEx">
        <span id="bgspan"><b>공지사항</b></span> 
        <span id="smspan">브로콜리의 새로운 소식과 유용한 정보들을 이곳에서 확인하세요 </span>
    </div>
    <br><br><br><br><br><br>
    <!-- 메뉴바 포함 할 것-->
        
        <hr id="hr1">
        <form action="detail.no" method="POST">
        
        <table id="detail-area" align="center">
            <tr>
                <th width="100">제목</th>
                <td colspan="3" width="500"><%= n.getNoticeTitle() %></td>
            </tr>
            <tr>
                <th>작성자</th>
                <td><b>브로콜리</b></td>
            </tr>
            <tr>
                <th>작성일</th>
                <td><%=n.getNoticeEnroll() %></td> 
            </tr>
            <tr>
                <th>조회수</th>
                <td><%=n.getNoticeViews() %></td>
            </tr>
            <tr>
                <th>내용</th>
                <td colspan="2">
                    <br><br><br>
                    <textarea id="textarea1" name="textarea1" style="resize: none; border:none" readonly><%=n.getNoticeContent() %></textarea>
                </td>
            </tr>
        </table>
		</form>
        <div class="submitBtn"align="right">
         
			<button onclick="history.back()" class="btn btn-basic btn-sm" style="background-color: green; color:white;">목록가기</button>
        </div>
        
        <br><br><br><br>
        <br><br><br><br>

        <hr width=80% color="green" align="center" size=50;/>
        


    </div>
    
<%@ include file="../common/footer.jsp"%>

</body>
</html>