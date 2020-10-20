<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>신고상세조회</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>신고상세내역</title>
  <!-- 차후 소스들은 관리자 대쉬보드 헤더+사이드바 페이지에 담아서 include 시키기 -->
  <!-- 대쉬보드에서 쓸 공통 css -->
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/r/bs-3.3.5/jq-2.1.4,dt-1.10.8/datatables.min.css">
  <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&family=Nanum+Myeongjo:wght@800&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script type="text/javascript" src="https://cdn.datatables.net/r/bs-3.3.5/jqc-1.11.3,dt-1.10.8/datatables.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script> 
  <!-- 엔딩 :  대쉬보드에서 쓸 공통 css --> 

  <!-- 리뷰/레시피/신고조회 페이지에 넣을 css -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        /* 목록버튼  */
        .btn {
            border: 2px solid black;
            background-color: white;
            color: black;
            padding: 5px 20px;
            font-size: 12px;
            cursor: pointer;
            }

        .success {
            border-color: #4CAF50;
            color: green;
            }

        .success:hover {
            background-color: #4CAF50;
            color: white;
        }

        /* 블랙컨슈머, 블라인드 처리 */
        .danger {
            border-color: #f44336;
            color: red
        }

        .danger:hover {
            background: #f44336;
            color: white;
        }

        /* 일반처리 >> db 미팅때 삭제하기로  */
        /* .warning {
            border-color: #ff9800;
            color: orange;
        }

        .warning:hover {
            background: #ff9800;
            color: white;
        } */

        /* 링크속성 */
        a{color: mediumseagreen;text-decoration: none;}
        a:hover{color: black;}
    </style>
</head>
<body>
    <div class="container" style="overflow-x:auto;">
        <h2>신고 상세조회</h2><br><br>
        <table class="table table-bordered">
          <tbody>
            <tr>
              <th class="table-success">카테고리</th>
              <td>리뷰</td>
              <th class="table-success">리뷰제목</th>
              <td><a href=""> 음식이 상해서 왔어요!</a> <br>리뷰한 글로 링크! 단, 상품카테고리 DB 컬럼값 확인하기 </td>
            </tr>
            <tr>
              <th class="table-success">신고자</th>
              <td>user11</td>
              <th class="table-success">상품번호</th>
              <td><a href="#상품상세페이지로 이동"> xxxxxxxxxx</a></td>
            </tr>
            <tr class="table-default">
              <th colspan="4">신고내용</th>
            </tr>
            <tr class="table-default">
              <td colspan="4">
                1. 상품과 관련없는 비방내용 <br>
                >> 라디오박스로 표시된 신고내용 표시하기 <br>
                >> 기타는 5.번으로 직접 입력된 내용이 노출됨 <br>
              </td>
            </tr>
          </tbody>
        </table>
        <!--  -->
        <button class="btn success" onclick="location.href='adminSelectReport.jsp'">목록</button>
        <button class="btn success" onclick="">이전</button>
        <button class="btn success" onclick="">이후</button>
        <button class="btn danger" onclick="reportConfirm1();">블랙컨슈머처리</button>
        <button class="btn danger" onclick="reportConfirm2();">블라인드처리</button>
        <!-- db설계시에 삭제하는 걸로 결론남! -->
        <!-- <button class="btn warning" onclick="">일반접수</button> -->

        </div>

     <!-- 블랙컨슈머, 블라인드 처리하기 -->
     <script>
         // 나중에 제이쿼리로 바꾸기 
         function reportConfirm1(){
             confirm("해당 신고자를 블랙컨슈머 처리하시겠습니까?");

             // 조건문처리하기
             // 1) yes일때(즉 신고자의 말이 거짓일때)
             // 해당 신고자가 회원관리 블랙컨슈머 조회 페이지에서 보이게 처리  
         }

         function reportConfirm2(){
             confirm("해당 글을 블라인드 처리하시겠습니까?");

             //조건문처리하기 
             // 1) yes일때(즉 신고자의 말이 참일 때 )
             // 신고된 리뷰글을 블라인드 처리 시키기
             // 블라인드 시키는 조건을 협의해야하나?? 
         }
     </script>
</body>
</html>