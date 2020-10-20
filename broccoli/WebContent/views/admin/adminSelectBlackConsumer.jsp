<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>블랙컨슈머조회</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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

<script data-dapp-detection="">
(function() {
    let alreadyInsertedMetaTag = false
    function __insertDappDetected() {
        if (!alreadyInsertedMetaTag) {
            const meta = document.createElement('meta')
            meta.name = 'dapp-detected'
            document.head.appendChild(meta)
            alreadyInsertedMetaTag = true
            }
          }
        if (window.hasOwnProperty('web3')) {
          // Note a closure can't be used for this var because some sites like
          // www.wnyc.org do a second script execution via eval for some reason.
          window.__disableDappDetectionInsertion = true
          // Likely oldWeb3 is undefined and it has a property only because
          // we defined it. Some sites like wnyc.org are evaling all scripts
          // that exist again, so this is protection against multiple calls.
          if (window.web3 === undefined) {
            return
          }
            __insertDappDetected()
            } else {
              var oldWeb3 = window.web3
              Object.defineProperty(window, 'web3', {
                configurable: true,
                set: function (val) {
        if (!window.__disableDappDetectionInsertion)
              __insertDappDetected()
              oldWeb3 = val
              },
    get: function () {
        if (!window.__disableDappDetectionInsertion)
          __insertDappDetected()
        return oldWeb3
        }
      })
    }
  })()
</script>
<script type="text/javascript" charset="utf-8">
    $(document).ready(function() {
      $('#example').DataTable();
    } );
</script>
<style>
  a{color:mediumseagreen; text-decoration:none;}
  a:hover{color:black;font-weight: 800;}
</style>
</head>
<body>
  <div class="container">
    <h2>블랙컨슈머조회</h2> <br><br>
    <div id="example_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer">
      <div class="row">

        <div class="col-sm-12">
          <!-- 웹상에서 보이는 소팅(sortin)부분이 코딩에 포함되어 있지 않음 > 웹에서 보이는 소스를 가져다가 붙여쓰니 2중으로 보여서 삭제함  -->
          <table id="example" class="table table-striped table-bordered dataTable no-footer" style="width: 100%;" role="grid" aria-describedby="example_info">
          <thead>
            <tr role="row">
              <!-- 경과일이 30일 지나면 블랙컨슈머 해제하는 버튼처리? 일단 전체 체크박스 가능하게 처리는 완료! -->
              <!-- >> 자동화하면 어떨까? 화면에는 한번 블랙컨슈머로 등록되어도 다 보여지되 30일 경고하면 아이디의 컬러가 달라지게   -->
              <!-- 해제되면 블라인드 처리가 해지시켜야하나???  -->
              <th><input type="checkbox" id="blackSelect"></th>
              <th class="sorting_asc" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="순: activate to sort column descending" style="width: 50px;">순</th>
              <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="아이디: activate to sort column ascending" style="width: 100px;">아이디</th>
              <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="해당신고글: activate to sort column ascending" style="width: 200px;">해당신고글</th>
              <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="신고일자: activate to sort column ascending" style="width: 100px;">신고일자</th>
              <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="경과일: activate to sort column ascending" style="width: 100px;">경과일</th>
              <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="등록사유: activate to sort column ascending" style="width: 320px;">등록사유</th>
            </tr>
          </thead>
            <script>
    // 전체선택할 수 있는 jquery 
    $(document).ready(function(){
        $("#blackSelect").click(function(){
            if($("#blackSelect").prop("checked")){
                $("input[name=chk]").prop("checked",true);
            }else{
            $("input[name=chk]").prop("checked",false);
            }
        })
    })
  </script>
          <tbody>
              <!-- 등록사유 종류 
                1) 상품과 관련없는 비방내용 
                2) 음란, 욕설 부적절한 내용
                3) 구매후기 취지에 어긋난 내용
                4) 기타 : (세부사항 영역있음)
              -->

            <tr role="row" class="odd">
                <td><input type="checkbox" name="chk"></td>
                <td class="sorting_1">1</td>
                <td>user01</td> 
                <td>XXXXXXXXXXXXXX</td>
                <td>2020-10-13</td>
                <td>2</td>
                <td>구매후기 취지에 어긋난 내용</td>

            </tr>
            <tr role="row" class="even">
                <td><input type="checkbox" name="chk"></td>
                <td class="sorting_1">2</td>
                <td>user02</td>
                <td>XXXXXXXXXXXXXX</td>
                <td>2020-10-02</td>
                <td>13</td>
                <td>구매후기 취지에 어긋난 내용</td>
            </tr>
            <tr role="row" class="odd">
                <td><input type="checkbox" name="chk"></td>
                <td class="sorting_1">3</td>
                <td>user03</td>
                <td>XXXXXXXXXXXXXX</td>
                <td>2020-10-02</td>
                <td>13</td>
                <td>상품과 관련없는 비방내용</td>
            </tr>
            <tr role="row" class="even">
                <td><input type="checkbox" name="chk"></td>
                <td class="sorting_1">4</td>
                <td>user04</td>
                <td>XXXXXXXXXXXXXX</td>
                <td>2020-10-02</td>
                <td>13</td>
                <td>상품과 관련없는 비방내용</td>
            </tr>
            <tr role="row" class="odd">
                <td><input type="checkbox" name="chk"></td>
                <td class="sorting_1">5</td>
                <td>user05</td>
                <td>XXXXXXXXXXXXXX</td>
                <td>2020-10-02</td>
                <td>13</td>
                <td>구매후기 취지에 어긋난 내용</td>
            </tr>
            <tr role="row" class="even">
                <td><input type="checkbox" name="chk"></td>
                <td class="sorting_1">6</td>
                <td>user06</td>
                <td>XXXXXXXXXXXXXX</td>
                <td>2020-10-02</td>
                <td>13</td>
                <td>음란, 욕설 부적절한 내용</td>
            </tr>
            <tr role="row" class="odd">
                <td><input type="checkbox" name="chk"></td>
                <td class="sorting_1">7</td>
                <td>user07</td>
                <td>XXXXXXXXXXXXXX</td>
                <td>2020-10-02</td>
                <td>13</td>
                <td>음란, 욕설 부적절한 내용</td>
            </tr>
            <tr role="row" class="even">
                <td><input type="checkbox" name="chk"></td>
                <td class="sorting_1">8</td>
                <td>user08</td>
                <td>XXXXXXXXXXXXXX</td>
                <td>2020-10-05</td>
                <td>10</td>
                <td>제품하자</td>
            </tr>
            <tr role="row" class="odd">
                <td><input type="checkbox" name="chk"></td>
                <td class="sorting_1">9</td>
                <td>user09</td>
                <td>XXXXXXXXXXXXXX</td>
                <td>2020-10-02</td>
                <td>12</td>
                <td>음란, 욕설 부적절한 내용</td>
            </tr>
            <tr role="row" class="even">
                <td><input type="checkbox" name="chk"></td>
                <td class="sorting_1">10</td>
                <td>user10</td>
                <td>XXXXXXXXXXXXXX</td>
                <td>2020-10-03</td>
                <td>12</td>
                <td><a href="#신고내역 상세조회로 이동">기타</a></td>
            </tr>
            <tr role="row" class="odd">
                <td><input type="checkbox" name="chk"></td>
                <td class="sorting_1">11</td>
                <td>broccoli</td>
                <td>XXXXXXXXXXXXXX</td>
                <td>2020-10-03</td>
                <td>12</td>
                <td><a href="#신고내역 상세조회로 이동">기타</a></td>
            </tr>
            <tr role="row" class="even">
                <td><input type="checkbox" name="chk"></td>
                <td class="sorting_1">12</td>
                <td>calliflower</td>
                <td>XXXXXXXXXXXXXX</td>
                <td>2020-10-03</td>
                <td>12</td>
                <td><a href="#신고내역 상세조회로 이동">기타</a></td>
            </tr>
            <tr role="row" class="odd">
                <td><input type="checkbox" name="chk"></td>
                <td class="sorting_1">13</td>
                <td>carrot</td>
                <td>XXXXXXXXXXXXXX</td>
                <td>2020-10-10</td>
                <td>5</td>
                <td><a href="#신고내역 상세조회로 이동">기타</a></td>
            </tr>
            <tr role="row" class="even">
                <td><input type="checkbox" name="chk"></td>
                <td class="sorting_1">14</td>
                <td>onion</td>
                <td>XXXXXXXXXXXXXX</td>
                <td>2020-10-01</td>
                <td>15</td>
                <td><a href="#신고내역 상세조회로 이동">기타</a></td>
            </tr>
            <tr role="row" class="odd">
                <td><input type="checkbox" name="chk"></td>
                <td class="sorting_1">15</td>
                <td>spinach</td>
                <td>XXXXXXXXXXXXXX</td>
                <td>2020-10-01</td>
                <td>15</td>
                <td>구매후기 취지에 어긋난 내용</td>
            </tr>
            <tr role="row" class="even">
                <td><input type="checkbox" name="chk"></td>
                <td class="sorting_1">16</td>
                <td>shallot</td>
                <td>XXXXXXXXXXXXXX</td>
                <td>2020-10-01</td>
                <td>15</td>
                <td>구매후기 취지에 어긋난 내용</td>
            </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
  <script type="text/javascript">
    $('#example')
      .removeClass( 'display' )
      .addClass('table table-striped table-bordered');
  </script> 
</body>
</html>