<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>신고상세조회</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>신고전체조회</title>
<!-- 차후 소스들은 관리자 대쉬보드 헤더+사이드바 페이지에 담아서 include 시키기 -->
<!-- 대쉬보드에서 쓸 공통 css -->
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/r/bs-3.3.5/jq-2.1.4,dt-1.10.8/datatables.min.css">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&family=Nanum+Myeongjo:wght@800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript" src="https://cdn.datatables.net/r/bs-3.3.5/jqc-1.11.3,dt-1.10.8/datatables.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script> 
<!-- 엔딩 :  대쉬보드에서 쓸 공통 css --> 

<!-- 리뷰/레시피/신고 조회 페이지에 넣을 css -->
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
  /* 링크속성 */
  a{color: mediumseagreen;text-decoration: none;}
  a:hover{color: black;}
</style>
</head>
<body>
  <div class="container">
    <h2>신고전체조회</h2> <br><br>
    <div id="example_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer">
      <div class="row">

        <div class="col-sm-12">
          <!-- 웹상에서 보이는 소팅(sortin)부분이 코딩에 포함되어 있지 않음 > 웹에서 보이는 소스를 가져다가 붙여쓰니 2중으로 보여서 삭제함  -->
          <table id="example" class="table table-striped table-bordered dataTable no-footer" style="width: 100%;" role="grid" aria-describedby="example_info">
          <thead>
            <tr role="row">
              <th class="sorting_asc" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="순: activate to sort column descending" style="width: 50px;">순</th>
              <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="등록일: activate to sort column ascending" style="width: 120px;">등록일</th>
              <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="카테고리: activate to sort column ascending" style="width: 120px;">카테고리</th>
              <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="상품번호: activate to sort column ascending" style="width: 120px;">상품번호</th>
              <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="상품명: activate to sort column ascending" style="width: 321px;">상품명</th>
              <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="신고내용: activate to sort column ascending" style="width: 600px;">신고내용</th>
              <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="신고자: activate to sort column ascending" style="width: 120px;">신고자</th>
              <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="처리유무: activate to sort column ascending" style="width: 129px;">처리유무</th>            
            </tr>
          </thead>
          <tbody>
              <!-- 신고출처는 리뷰와 레시피 2개로만 하기로 담당 팀원으로부터 확인 -->
              <!-- 등록사유 종류 
                1) 상품과 관련없는 비방내용 
                2) 음란, 욕설 부적절한 내용
                3) 구매후기 취지에 어긋난 내용
                4) 기타 : (세부사항 영역있음)
              -->
            <tr role="row" class="odd">
              <td class="sorting_1">16</td>
              <td>2020-10-14</td>
              <td>리뷰</td>
              <td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
              <td>유기농 브로콜리 1kg</td>
              <td><a href="adminReportDetail.html">기타</td>
              <td><a href="#어디로 이동하는게 나으려나??">user01</a></td>
              <td><a href="">검토중</a> </td>
            </tr>
            <tr role="row" class="even">
              <td class="sorting_1">15</td>
              <td>2020-10-14</td>
              <td>레시피</td>
              <td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
              <td>유기농 브로콜리 1kg</td>
              <td><a href="#신고내역 상세조회로 이동">상품과 관련없는 비방내용</td>
              <td><a href="#어디로 이동하는게 나으려나??">user01</a></td>
              <td><a href="">접수완료</a> </td>
            </tr>
            <tr role="row" class="odd">
              <td class="sorting_1">14</td>
              <td>2020-10-13</td>
              <td>리뷰</td>
              <td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
              <td>유기농 브로콜리 1kg</td>
              <td><a href="#신고내역 상세조회로 이동">상품과 관련없는 비방내용</td>
              <td><a href="#어디로 이동하는게 나으려나??">user01</a></td>
              <td><a href="">검토중</a> </td>
            </tr>
            <tr role="row" class="even">
              <td class="sorting_1">13</td>
              <td>2020-10-13</td>
              <td>리뷰</td>
              <td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
              <td>유기농 브로콜리 1kg</td>
              <td><a href="#신고내역 상세조회로 이동">구매후기 취지에 어긋난 내용</td>
              <td><a href="#어디로 이동하는게 나으려나??">user01</a></td>
              <td><a href="#">검토완료</a> </td>
            </tr>
            <tr role="row" class="odd">
              <td class="sorting_1">12</td>
              <td>2020-10-13</td>
              <td>리뷰</td>
              <td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
              <td>유기농 브로콜리 1kg</td>
              <td><a href="#신고내역 상세조회로 이동"> 구매후기 취지에 어긋난 내용</td>
              <td><a href="#어디로 이동하는게 나으려나??">user01</a></td>
              <td><a href="#">검토완료</a> </td>
            </tr>
            <tr role="row" class="even">
              <td class="sorting_1">11</td>
              <td>2020-10-12</td>
              <td>리뷰</td>
              <td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
              <td>유기농 브로콜리 1kg</td>
              <td><a href="#신고내역 상세조회로 이동">음란, 욕설 부적절한 내용</td>
              <td><a href="#어디로 이동하는게 나으려나??">user01</a></td>
              <td><a href="#">접수완료</a> </td>
            </tr>
            <tr role="row" class="odd">
              <td class="sorting_1">10</td>
              <td>2020-10-12</td>
              <td>레시피</td>
              <td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
              <td>유기농 브로콜리 1kg</td>
              <td><a href="#신고내역 상세조회로 이동">상품과 관련없는 비방내용</td>
              <td><a href="#어디로 이동하는게 나으려나??">user01</a></td>
              <td><a href="#">접수완료</a> </td>
            </tr>
            <tr role="row" class="even">
              <td class="sorting_1">9</td>
              <td>2020-10-11</td>
              <td>레시피</a></td>
              <td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
              <td>유기농 브로콜리 1kg</td>
              <td><a href="#신고내역 상세조회로 이동">음란, 욕설 부적절한 내용</td>
              <td><a href="#어디로 이동하는게 나으려나??">user01</a></td>
              <td><a href="#">접수완료</a> </td>
            </tr>
            <tr role="row" class="odd">
              <td class="sorting_1">8</td>
              <td>2020-10-11</td>
              <td>리뷰</td>
              <td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
              <td>유기농 브로콜리 1kg</td>
              <td><a href="#신고내역 상세조회로 이동">구매후기 취지에 어긋난 내용</td>
              <td><a href="#어디로 이동하는게 나으려나??">user01</a></td>
              <td><a href="#">접수완료</a> </td>
            </tr>
            <tr role="row" class="even">
              <td class="sorting_1">7</td>
              <td>2020-10-10</td>
              <td>레시피</td>
              <td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
              <td>유기농 브로콜리 1kg</td>
              <td><a href="#신고내역 상세조회로 이동">구매후기 취지에 어긋난 내용 </td>
              <td><a href="#어디로 이동하는게 나으려나??">user01</a></td>
              <td><a href="#">접수완료</a> </td>
            </tr>
            <tr role="row" class="odd">
              <td class="sorting_1">6</td>
              <td>2020-10-09</td>
              <td>리뷰</td>
              <td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
              <td>유기농 브로콜리 1kg</td>
              <td><a href="#신고내역 상세조회로 이동">구매후기 취지에 어긋난 내용</td>
              <td><a href="#어디로 이동하는게 나으려나??">user01</a></td>
              <td><a href="#">접수완료</a> </td>
            </tr>
            <tr role="row" class="even">
              <td class="sorting_1">5</td>
              <td>2020-10-08</td>
              <td>레시피</td>
              <td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
              <td>유기농 브로콜리 1kg</td>
              <td><a href="#신고내역 상세조회로 이동">상품과 관련없는 비방내용</td>
              <td><a href="#어디로 이동하는게 나으려나??">user01</a></td>
              <td><a href="#">접수완료</a> </td>
            </tr>
            <tr role="row" class="odd">
              <td class="sorting_1">4</td>
              <td>2020-10-07</td>
              <td>리뷰</td>
              <td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
              <td>유기농 브로콜리 1kg</td>
              <td><a href="#신고내역 상세조회로 이동">구매후기 취지에 어긋난 내용 </td>
              <td><a href="#어디로 이동하는게 나으려나??">user01</a></td>
              <td><a href="#">접수완료</a> </td>
            </tr>
            <tr role="row" class="even">
              <td class="sorting_1">3</td>
              <td>2020-10-06</td>
              <td>레시피</td>
              <td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
              <td>유기농 브로콜리 1kg</td>
              <td><a href="#신고내역 상세조회로 이동">구매후기 취지에 어긋난 내용</td>
              <td><a href="#어디로 이동하는게 나으려나??">user01</a></td>
              <td><a href="#">접수완료</a> </td>
            </tr>
            <tr role="row" class="odd">
              <td class="sorting_1">2</td>
              <td>2020-10-05</td>
              <td>리뷰</td>
              <td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
              <td>유기농 브로콜리 1kg</td>
              <td><a href="#">기타</td>
              <td><a href="#어디로 이동하는게 나으려나??">user01</a></td>
              <td><a href="#">접수완료</a> </td>
            </tr>
            <tr role="row" class="even">
              <td class="sorting_1">1</td>
              <td>2020-10-01</td>
              <td>레시피</td>
              <td><a href="#상품 세부페이지">XXXXXXXXXXXXXXXX</a></td>
              <td>유기농 브로콜리 1kg</td>
              <td><a href="#신고내역 상세조회로 이동">기타</td>
              <td><a href="#어디로 이동하는게 나으려나??">user01</a></td>
              <td><a href="#">접수완료</a> </td>
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