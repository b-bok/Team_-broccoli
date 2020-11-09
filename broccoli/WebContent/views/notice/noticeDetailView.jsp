<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
    width:1000px;
    height:800px;
    margin:auto;
    margin-top:100px;
}
    #detail-area tr td{
    border-color:white;
    padding:10px;
}
    .submitBtn{
    padding-right: 30px;
    margin-bottom: 30px;

}
    #titleEx pre{
    float: left;
    font-size: x-large;
    margin-top: 50px;
    padding-left: 30px;
}
    #titleEx p{
    float: left;
    margin-left: 30px;
    line-height: 250%;
    margin-top: 50px;
    padding-left: 30px;
}
    #textarea1{
        width:700px;
        height:600px;
        border: 0.5px solid #f2f2f2;
    }
    #hr1{
        border:0;
        height:3px;
        background:greenyellow;
    }

</style>
</head>
<body>

	<%@ include file="../common/menubar.jsp"%>

    <div id="titleEx">
        <pre><b>공지사항</b></pre> 
        <p>브로콜리의 새로운 소식과 유용한 정보들을 이곳에서 확인하세요 </p>
    </div>
    <br>
    <!-- 메뉴바 포함 할 것-->
    
    <div class="outer">
        <hr style= "size:50" >
        <form action="detail.no" method="POST">
        <table id="detail-area" align="center">
            <tr>
                <th width="100">제목</th>
                <td colspan="3" width="500">해당 공지사항 제목 자리</td>
            </tr>
            <tr>
                <th>작성자</th>
                <td>작성자이름</td>
            </tr>
            <tr>
                <th>작성일</th>
                <td>해당 날짜 데이터</td> 
            </tr>
            <tr>
                <th>조회수</th>
                <td>해당조회수자리</td>
            </tr>
            <tr>
                <th>내용</th>
                <td colspan="2">
                    <br><br><br>
                    <textarea id="textarea1" name="textarea1" style="resize: none;">해당 조회된 공지사항의 내용</textarea>
                </td>
            </tr>
        </table>
		</form>
        <br><br>

        <hr width=80% color="green" align="center" size=50;/>
        <div class="submitBtn"align="right">

            <a href="" class="btn btn-basic btn-sm" style="background-color: green; color:white;">목록가기</a>

        </div>
        


    </div>
    
<%@ include file="../common/footer.jsp"%>

</body>
</html>