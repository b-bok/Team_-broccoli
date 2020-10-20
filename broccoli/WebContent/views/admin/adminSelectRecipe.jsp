<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>레시피전체조회</title>
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
  a{color: mediumseagreen;text-decoration: none;}
  a:hover{color: black;}
</style>
</head>
<body>
  <div class="container">
    <h2>레시피 전체조회</h2> <br><br>
    <div id="example_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer">
      <div class="row">
        <div class="col-sm-12">
          <!-- 웹상에서 보이는 소팅(sorting)부분이 코딩에 포함되어 있지 않음 > 웹에서 보이는 소스를 가져다가 붙여쓰니 2중으로 보여서 삭제함  -->
          <table id="example" class="table table-striped table-bordered dataTable no-footer" style="width: 100%;" role="grid" aria-describedby="example_info">
          <thead>
            <tr role="row">
              <th class="sorting_asc" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="순: activate to sort column descending" style="width: 50px;">순</th>
              <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="등록일: activate to sort column ascending" style="width: 120px;">등록일</th>
              <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="주문번호: activate to sort column ascending" style="width: 120px;">주문번호</th>
              <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="상품번호: activate to sort column ascending" style="width: 120px;">상품번호</th>
              <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="상품명: activate to sort column ascending" style="width: 321px;">상품명</th>
              <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="제목: activate to sort column ascending" style="width: 600px;">제목</th>
              <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="카테고리: activate to sort column ascending" style="width: 200px;">카테고리</th>
              <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="작성자: activate to sort column ascending" style="width: 120px;">작성자</th>
              <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="조회수: activate to sort column ascending" style="width: 129px;">조회수</th>            
            </tr>
          </thead>
          <tbody>
              <!-- 각 항목별 링크할 페이지 정해얌! 그 중 리뷰제목클릭시 리뷰상세피이지로 이동 -->
              <!-- 레시피 카테고리 종류  1) 매일밥상 2) 특별한날 3) 간단요리 -->
            <tr role="row" class="odd">
              <td class="sorting_1">1</td>
              <td>2020-10-01</td>
              <td><a href="#사용자 주문내역페이지로 이동하나? ">XXXXXXXXXXXXXXXX</a></td>
              <td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
              <td>국내산 오징어 1kg</td>
              <td><a href="adminRecipeDetail.html">해물파전</td>
              <td>특별한 날</td>
              <td><a href="#댓글달기로 이동하는게 나으려나??">user01</a></td>
              <td>XXXX</td>
            </tr>
            <tr role="row" class="even">
              <td class="sorting_1">2</td>
              <td>2020-10-02</td>
              <td><a href="#사용자 주문내역페이지로 이동하나? ">XXXXXXXXXXXXXXXX</a></td>
              <td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
              <td>유기농 브로콜리 1kg</td>
              <td><a href="#리뷰상세페이지로 이동">브로콜리 데치기</td>
              <td>간단요리</td>
              <td><a href="#댓글달기로 이동하는게 나으려나??">user02</a></td>
              <td>100</td>
            </tr>
            <tr role="row" class="odd">
              <td class="sorting_1">3</td>
              <td>2020-10-01</td>
              <td><a href="#사용자 주문내역페이지로 이동하나? ">XXXXXXXXXXXXXXXX</a></td>
              <td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
              <td>유기농 브로콜리 1kg</td>
              <td><a href="#리뷰상세페이지로 이동">야채볶음</td>
              <td>매일밥상</td>
              <td><a href="#댓글달기로 이동하는게 나으려나??">user03</a></td>
              <td>99</td>
            </tr>
            <tr role="row" class="even">
              <td class="sorting_1">4</td>
              <td>2020-10-02</td>
              <td><a href="#사용자 주문내역페이지로 이동하나? ">XXXXXXXXXXXXXXXX</a></td>
              <td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
              <td>냉동 블루베리 500g</td>
              <td><a href="#리뷰상세페이지로 이동">까페 와플만들기</td>
              <td>특별한 날</td>
              <td><a href="#댓글달기로 이동하는게 나으려나??">user02</a></td>
              <td>XXXX</td>
            </tr>
            <tr role="row" class="odd">
              <td class="sorting_1">5</td>
              <td>2020-10-01</td>
              <td><a href="#사용자 주문내역페이지로 이동하나? ">XXXXXXXXXXXXXXXX</a></td>
              <td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
              <td>유기농 브로콜리 1kg</td>
              <td><a href="#리뷰상세페이지로 이동">크림스튜</td>
              <td>특별한 날</td>
              <td><a href="#댓글달기로 이동하는게 나으려나??">user01</a></td>
              <td>XXXX</td>
            </tr>
            <tr role="row" class="even">
              <td class="sorting_1">6</td>
              <td>2020-10-02</td>
              <td><a href="#사용자 주문내역페이지로 이동하나? ">XXXXXXXXXXXXXXXX</a></td>
              <td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
              <td>냉동 블루베리 500g</td>
              <td><a href="#리뷰상세페이지로 이동">블루베리 요루르트</td>
              <td>매일밥상</td>
              <td><a href="#댓글달기로 이동하는게 나으려나??">user02</a></td>
              <td>XXXX</td>
            </tr>
            <tr role="row" class="odd">
              <td class="sorting_1">7</td>
              <td>2020-10-01</td>
              <td><a href="#사용자 주문내역페이지로 이동하나? ">XXXXXXXXXXXXXXXX</a></td>
              <td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
              <td>유기농 브로콜리 1kg</td>
              <td><a href="#리뷰상세페이지로 이동">크림스튜</td>
              <td>특별한 날</td>
              <td><a href="#댓글달기로 이동하는게 나으려나??">user01</a></td>
              <td>XXXX</td>
            </tr>
            <tr role="row" class="even">
              <td class="sorting_1">8</td>
              <td>2020-10-02</td>
              <td><a href="#사용자 주문내역페이지로 이동하나? ">XXXXXXXXXXXXXXXX</a></td>
              <td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
              <td>유기농 브로콜리 1kg</td>
              <td><a href="#리뷰상세페이지로 이동">브로콜리 데치기</td>
              <td>매일밥상</td>
              <td><a href="#댓글달기로 이동하는게 나으려나??">user02</a></td>
              <td>XXXX</td>
            </tr>
            <tr role="row" class="odd">
              <td class="sorting_1">9</td>
              <td>2020-10-04</td>
              <td><a href="#사용자 주문내역페이지로 이동하나? ">XXXXXXXXXXXXXXXX</a></td>
              <td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
              <td>노르웨이산 연어 400g</td>
              <td><a href="#리뷰상세페이지로 이동">연어스테이크</td>
              <td>특별한 날</td>
              <td><a href="#댓글달기로 이동하는게 나으려나??">user05</a></td>
              <td>XXXX</td>
            </tr>
            <tr role="row" class="even">
              <td class="sorting_1">10</td>
              <td>2020-10-02</td>
              <td><a href="#사용자 주문내역페이지로 이동하나? ">XXXXXXXXXXXXXXXX</a></td>
              <td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
              <td>유기농 브로콜리 1kg</td>
              <td><a href="#리뷰상세페이지로 이동">브로콜리 데치기</td>
              <td>매일밥상</td>
              <td><a href="#댓글달기로 이동하는게 나으려나??">user02</a></td>
              <td>XXXX</td>
            </tr>
            <tr role="row" class="odd">
              <td class="sorting_1">11</td>
              <td>2020-10-01</td>
              <td><a href="#사용자 주문내역페이지로 이동하나? ">XXXXXXXXXXXXXXXX</a></td>
              <td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
              <td>노르웨이산 연어 400g</td>
              <td><a href="#리뷰상세페이지로 이동"> 연어초밥</td>
              <td>간단요리</td>
              <td><a href="#댓글달기로 이동하는게 나으려나??">user06</a></td>
              <td>XXXX</td>
            </tr>
            <tr role="row" class="even">
              <td class="sorting_1">12</td>
              <td>2020-10-01</td>
              <td><a href="#사용자 주문내역페이지로 이동하나? ">XXXXXXXXXXXXXXXX</a></td>
              <td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
              <td>생갈치 2마리(사가제</td>
              <td><a href="#리뷰상세페이지로 이동">갈치구이</td>
              <td>매일밥상</td>
              <td><a href="#댓글달기로 이동하는게 나으려나??">user03</a></td>
              <td>XXXX</td>
            </tr>
            <tr role="row" class="odd">
              <td class="sorting_1">13</td>
              <td>2020-10-01</td>
              <td><a href="#사용자 주문내역페이지로 이동하나? ">XXXXXXXXXXXXXXXX</a></td>
              <td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
              <td>냉동굴 800g</td>
              <td><a href="#리뷰상세페이지로 이동">오이스터 파스터</td>
              <td>특별한 날</td>
              <td><a href="#댓글달기로 이동하는게 나으려나??">user01</a></td>
              <td>XXXX</td>
            </tr>
            <tr role="row" class="even">
              <td class="sorting_1">14</td>
              <td>2020-10-01</td>
              <td><a href="#사용자 주문내역페이지로 이동하나? ">XXXXXXXXXXXXXXXX</a></td>
              <td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
              <td>송이버섯 1팩</td>
              <td><a href="#리뷰상세페이지로 이동">버섯리조또</td>
              <td>간단요리</td>
              <td><a href="#댓글달기로 이동하는게 나으려나??">user08</a></td>
              <td>XXXX</td>
            </tr>
            <tr role="row" class="odd">
              <td class="sorting_1">15</td>
              <td>2020-10-01</td>
              <td><a href="#사용자 주문내역페이지로 이동하나? ">XXXXXXXXXXXXXXXX</a></td>
              <td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
              <td>충주 사과 3kg</td>
              <td><a href="#리뷰상세페이지로 이동">까나페</td>
              <td>특별한 날</td>
              <td><a href="#댓글달기로 이동하는게 나으려나??">user10</a></td>
              <td>XXXX</td>
            </tr>
            <tr role="row" class="even">
              <td class="sorting_1">16</td>
              <td>2020-10-01</td>
              <td><a href="#사용자 주문내역페이지로 이동하나? ">XXXXXXXXXXXXXXXX</a></td>
              <td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
              <td>팬케이크 파우더 2인분</td>
              <td><a href="#리뷰상세페이지로 이동">팬케이크</td>
              <td>간단요리</td>
              <td><a href="#댓글달기로 이동하는게 나으려나??">user16</a></td>
              <td>XXXX</td>
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