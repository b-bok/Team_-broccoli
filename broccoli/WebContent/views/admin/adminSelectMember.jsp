<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>회원전체조회</title>
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

<!-- 전체조회 테이블(게시판) 적용 소스 -->
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
</head>
<body>
  <div class="container">
    <h2>전체회원</h2> <br><br>
    <div id="example_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer">
      <div class="row">

        <div class="col-sm-12">
          <!-- 웹상에서 보이는 소팅(sortin)부분이 코딩에 포함되어 있지 않음 > 웹에서 보이는 소스를 가져다가 붙여쓰니 2중으로 보여서 삭제함  -->
          <table id="example" class="table table-striped table-bordered dataTable no-footer" style="width: 100%;" role="grid" aria-describedby="example_info">
          <thead>
            <tr role="row">
              <th class="sorting_asc" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="순: activate to sort column descending" style="width: 30px;">순</th>
              <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="아이디: activate to sort column ascending" style="width: 100px;">아이디</th>
              <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="이름: activate to sort column ascending" style="width: 50px;">이름</th>
              <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="이메일: activate to sort column ascending" style="width: 120px;">이메일</th>
              <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="휴대폰: activate to sort column ascending" style="width: 120px;">휴대폰</th>
              <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="주소: activate to sort column ascending" style="width: 321px;">주소</th>
              <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="상세주소: activate to sort column ascending" style="width: 321px;">상세주소</th>
              <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="우편번호: activate to sort column ascending" style="width: 120px;">우편번호</th>
              <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="성별: activate to sort column ascending" style="width: 50px;">성별</th>
              <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="적립금: activate to sort column ascending" style="width: 100px;">적립금</th>
              <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="가입일: activate to sort column ascending" style="width: 100px;">가입일</th>
              <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="회원탈퇴여부: activate to sort column ascending" style="width: 150px;">탈퇴여부</th>
            </tr>
          </thead>
          <tbody>
            <tr role="row" class="odd">
              <td class="sorting_1">1</td>
              <td>user01</td>
              <td>김브로</td>
              <td>bro@gmail.com</td>
              <td>010-2222-3333</td>
              <td>서울시 강남구 역삼동 101</td>
              <td>파이낸스센터 2001호</td>
              <td>123456</td>
              <td>여</td>
              <td>5000</td>
              <td>2020-10-01</td>
              <td>Y</td>

            </tr>
            <tr role="row" class="even">
              <td class="sorting_1">2</td>
              <td>user02</td>
              <td>박컬리</td>
              <td>coli@gmail.com</td>
              <td>010-2222-3333</td>
              <td>서울시 서초구 방배동 101</td>
              <td>진도오피스텔 202호</td>
              <td>234567</td>
              <td>남</td>
              <td>5000</td>
              <td>2020-10-02</td>
              <td>Y</td>
            </tr>
            <tr role="row" class="odd">
              <td class="sorting_1">3</td>
              <td>user03</td>
              <td>이야채</td>
              <td>broccoli@gmail.com</td>
              <td>010-2222-3333</td>
              <td>서울시 강남구 역삼동 101</td>
              <td>진도오피스텔 202호</td>
              <td>123456</td>
              <td>여</td>
              <td>5000</td>
              <td>2020-10-03</td>
              <td>Y</td>
            </tr>
            <tr role="row" class="even">
              <td class="sorting_1">4</td>
              <td>user04</td>
              <td>이브로</td>
              <td>broccoli@gmail.com</td>
              <td>010-2222-3333</td>
              <td>서울시 강남구 역삼동 101</td>
              <td>진도오피스텔 202호</td>
              <td>123456</td>
              <td>여</td>
              <td>0</td>
              <td>2020-10-01</td>
              <td>Y</td>
            </tr>
            <tr role="row" class="odd">
              <td class="sorting_1">5</td>
              <td>user05</td>
              <td>최브로</td>
              <td>broccoli@gmail.com</td>
              <td>010-2222-3333</td>
              <td>서울시 강남구 역삼동 101</td>
              <td>진도오피스텔 202호</td>
              <td>123456</td>
              <td>여</td>
              <td>0</td>
              <td>2020-10-01</td>
              <td>Y</td>
            </tr>
            <tr role="row" class="even">
              <td class="sorting_1">6</td>
              <td>user06</td>
              <td>김컬리</td>
              <td>broccoli@gmail.com</td>
              <td>010-2222-3333</td>
              <td>서울시 강남구 역삼동 101</td>
              <td>진도오피스텔 202호</td>
              <td>123456</td>
              <td>여</td>
              <td>0</td>
              <td>2020-10-01</td>
              <td>Y</td>
            </tr>
            <tr role="row" class="odd">
              <td class="sorting_1">7</td>
              <td>broccoli</td>
              <td>최롯데</td>
              <td>broccoli@gmail.com</td>
              <td>010-2222-3333</td>
              <td>서울시 강남구 역삼동 101</td>
              <td>파이낸스센터 2001호</td>
              <td>123456</td>
              <td>여</td>
              <td>0</td>
              <td>2020-10-01</td>
              <td>Y</td>
            </tr>
            <tr role="row" class="even">
              <td class="sorting_1">8</td>
              <td>broccoli</td>
              <td>박마켓</td>
              <td>broccoli@gmail.com</td>
              <td>010-2222-3333</td>
              <td>서울시 강남구 역삼동 101</td>
              <td>파이낸스센터 2001호</td>
              <td>123456</td>
              <td>여</td>
              <td>0</td>
              <td>2020-10-01</td>
              <td>Y</td>
            </tr>
            <tr role="row" class="odd">
              <td class="sorting_1">9</td>
              <td>broccoli</td>
              <td>김브로</td>
              <td>broccoli@gmail.com</td>
              <td>010-2222-3333</td>
              <td>서울시 강남구 역삼동 101</td>
              <td>파이낸스센터 2001호</td>
              <td>123456</td>
              <td>여</td>
              <td>0</td>
              <td>2020-10-01</td>
              <td>Y</td>
            </tr>
            <tr role="row" class="even">
              <td class="sorting_1">10</td>
              <td>broccoli</td>
              <td>김브로</td>
              <td>broccoli@gmail.com</td>
              <td>010-2222-3333</td>
              <td>서울시 강남구 역삼동 101</td>
              <td>파이낸스센터 2001호</td>
              <td>123456</td>
              <td>여</td>
              <td>0</td>
              <td>2020-10-01</td>
              <td>Y</td>
            </tr>
            <tr role="row" class="odd">
              <td class="sorting_1">11</td>
              <td>broccoli</td>
              <td>김브로</td>
              <td>broccoli@gmail.com</td>
              <td>010-2222-3333</td>
              <td>서울시 강남구 역삼동 101</td>
              <td>파이낸스센터 2001호</td>
              <td>123456</td>
              <td>여</td>
              <td>0</td>
              <td>2020-10-01</td>
              <td>Y</td>
            </tr>
            <tr role="row" class="even">
              <td class="sorting_1">12</td>
              <td>broccoli</td>
              <td>김브로</td>
              <td>broccoli@gmail.com</td>
              <td>010-2222-3333</td>
              <td>서울시 강남구 역삼동 101</td>
              <td>파이낸스센터 2001호</td>
              <td>123456</td>
              <td>여</td>
              <td>0</td>
              <td>2020-10-01</td>
              <td>Y</td>
            </tr>
            <tr role="row" class="odd">
              <td class="sorting_1">13</td>
              <td>broccoli</td>
              <td>김브로</td>
              <td>broccoli@gmail.com</td>
              <td>010-2222-3333</td>
              <td>서울시 강남구 역삼동 101</td>
              <td>파이낸스센터 2001호</td>
              <td>123456</td>
              <td>여</td>
              <td>0</td>
              <td>2020-10-01</td>
              <td>N</td>
            </tr>
            <tr role="row" class="even">
              <td class="sorting_1">14</td>
              <td>broccoli</td>
              <td>김브로</td>
              <td>broccoli@gmail.com</td>
              <td>010-2222-3333</td>
              <td>서울시 강남구 역삼동 101</td>
              <td>파이낸스센터 2001호</td>
              <td>123456</td>
              <td>여</td>
              <td>0</td>
              <td>2020-10-01</td>
              <td>N</td>
            </tr>
            <tr role="row" class="odd">
              <td class="sorting_1">15</td>
              <td>broccoli</td>
              <td>김브로</td>
              <td>broccoli@gmail.com</td>
              <td>010-2222-3333</td>
              <td>서울시 강남구 역삼동 101</td>
              <td>파이낸스센터 2001호</td>
              <td>123456</td>
              <td>여</td>
              <td>5000</td>
              <td>2020-10-01</td>
              <td>N</td>
            </tr>
            <tr role="row" class="even">
              <td class="sorting_1">16</td>
              <td>broccoli</td>
              <td>김브로</td>
              <td>broccoli@gmail.com</td>
              <td>010-2222-3333</td>
              <td>서울시 강남구 역삼동 101</td>
              <td>파이낸스센터 2001호</td>
              <td>123456</td>
              <td>여</td>
              <td>5000</td>
              <td>2020-10-01</td>
              <td>N</td>
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