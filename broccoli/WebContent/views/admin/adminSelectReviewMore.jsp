<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>리뷰상세조회</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 차후 소스들은 관리자 대쉬보드 헤더+사이드바 페이지에 담아서 include 시키기 -->
<!-- 대쉬보드에서 쓸 공통 css -->
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/r/bs-3.3.5/jq-2.1.4,dt-1.10.8/datatables.min.css">
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&family=Nanum+Myeongjo:wght@800&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript"
	src="https://cdn.datatables.net/r/bs-3.3.5/jqc-1.11.3,dt-1.10.8/datatables.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<!-- 엔딩 :  대쉬보드에서 쓸 공통 css -->



<style>
.container {
	padding-bottom: 100px;
}

/* 고객만족도 */
.checked {
	color: orange;
}

/* 이미지 스타일 */
#myImg {
	border-radius: 5px;
	cursor: pointer;
	transition: 0.3s;
}

#myImg:hover {
	opacity: 0.7;
}

.modal {
	display: none;
	/* Hidden by default */
	position: fixed;
	/* Stay in place */
	z-index: 1;
	/* Sit on top */
	padding-top: 100px;
	/* Location of the box */
	left: 0;
	top: 0;
	width: 100%;
	/* Full width */
	height: 100%;
	/* Full height */
	overflow: auto;
	/* Enable scroll if needed */
	background-color: rgb(0, 0, 0);
	/* Fallback color */
	background-color: rgba(0, 0, 0, 0.9);
	/* Black w/ opacity */
}

/* Modal Content (image) */
.modal-content {
	margin: auto;
	display: block;
	width: 80%;
	max-width: 500px;
}

/* Caption of Modal Image */
#caption {
	margin: auto;
	display: block;
	width: 80%;
	max-width: 700px;
	text-align: center;
	color: #ccc;
	padding: 10px 0;
	height: 150px;
}

/* 애니메이션 */
.modal-content, #caption {
	-webkit-animation-name: zoom;
	-webkit-animation-duration: 0.6s;
	animation-name: zoom;
	animation-duration: 0.6s;
}

@
-webkit-keyframes zoom {from { -webkit-transform:scale(0)
	
}

to {
	-webkit-transform: scale(1)
}

}
@
keyframes zoom {from { transform:scale(0)
	
}

to {
	transform: scale(1)
}

}

/* 닫기 버튼 */
.close {
	position: absolute;
	top: 15px;
	right: 35px;
	color: #f1f1f1;
	font-size: 40px;
	font-weight: bold;
	transition: 0.3s;
}

.close:hover, .close:focus {
	color: #bbb;
	text-decoration: none;
	cursor: pointer;
}

/* 100% Image Width on Smaller Screens */
@media only screen and (max-width: 500px) {
	.modal-content {
		width: 100%;
	}
}

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
</style>
</head>
<body>
<%@ include file="adminNav.jsp" %>
	<div class="container pt-3" style="margin-left:300px;">
		<h2>리뷰 상세조회</h2>
		<br> <br>
		<table class="table table-bordered">
			<tbody>
				<tr>
					<th class="table-success">리뷰제목</th>
					<td>유기농 브로콜리 1kg</td>
					<th class="table-success">카테고리</th>
					<td>상품카테고리 DB 컬럼값 확인하기</td>
				</tr>
				<tr>
					<th class="table-success">작성자</th>
					<td>user01</td>
					<th class="table-success">작성일</th>
					<td>2020-10-15</td>
				</tr>
				<tr>
					<th class="table-success">조회수</th>
					<td>1002</td>
					<th class="table-success">고객만족도</th>
					<td><span class="fa fa-star checked"></span><span
						class="fa fa-star checked"></span><span class="fa fa-star checked"></span><span
						class="fa fa-star"></span><span class="fa fa-star"></span></i></td>
				</tr>
				<tr class="table-default">
					<td colspan="4">뜨고, 생명을 심장은 영원히 같이, 있다. 청춘의 뜨고, 커다란 역사를 청춘의
						방황하였으며, 우리는 교향악이다. 새 이는 같이, 기쁘며, 현저하게 위하여, 남는 광야에서 청춘의 끓는다. 얼마나 길을
						주는 쓸쓸하랴? 예가 거선의 밥을 꽃이 우리는 군영과 눈이 것이다. <br> 같지 힘차게 무엇을 지혜는 자신과
						같이, 이것이다. 광야에서 무엇을 그와 그들의 아니한 않는 안고, 이것이야말로 있다. 되려니와, 실현에 사랑의
						부패뿐이다. 것은 불어 설산에서 피가 품에 새가 인간의 과실이 무엇이 피다. 이것이야말로 고행을 구하기 아니한 이상
						천지는 인간은 쓸쓸하랴? <br> 때까지 희망의 얼마나 구할 봄바람을 방황하여도, 그들은 피가 불어 쓸쓸하랴?
						품었기 찬미를 방황하였으며, 투명하되 없으면, 생생하며, 이상의 가치를 이것이다. 곧 간에 붙잡아 보라. 힘차게 뭇
						길을 풀밭에 석가는 얼마나 영원히 때문이다. 행복스럽고 사람은 눈이 부패뿐이다.
					</td>
				</tr>
				<tr>
					<td id="imgRow" colspan="4" align="center">
						<!-- 캡션명을 리뷰1, 리뷰2로?? alt 명에 대해서 담당 팀원(2명) 협의 필요  --> <img
						id="myImg1" src="../../resources/image/boy.jpg" alt="남자1"
						style="width: 60%; max-width: 200px" hspace="6"> <img
						id="myImg2" src="../../resources/image/closegirl.jpg" alt="여자1"
						" style="width: 60%; max-width: 200px" hspace="6"> <img
						id="myImg3" src="../../resources/image/girl.jpg" alt="여자2"
						style="width: 60%; max-width: 200px" hspace="6"> <img
						id="myImg4" src="../../resources/image/girl_mountain.jpg"
						alt="여자3" style="width: 60%; max-width: 200px" hspace="6"> <img
						id="myImg5" src="../../resources/image/girl_train.jpg" alt="여자4"
						style="width: 60%; max-width: 200px" hspace="6">
					</td>
				</tr>
			</tbody>
		</table>
		<!--  -->
		<button class="btn success"
			onclick="location.href='adminSelectReviewMore.jsp'">목록</button>
		<button class="btn success" onclick="">이전</button>
		<button class="btn success" onclick="">이후</button>
	</div>


	<!-- 이미지 모달  -->
	<div id="myModal" class="modal">
		<span class="close">&times;</span> <img class="modal-content"
			id="img01">
		<div id="caption"></div>
	</div>
	<!-- 이미지 js -->
	<script>
      // Get the modal
      var modal = document.getElementById("myModal");

      // Get the image and insert it inside the modal - use its "alt" text as a caption
      var img1 = document.getElementById("myImg1");
      var img2 = document.getElementById("myImg2");
      var img3 = document.getElementById("myImg3");
      var img4 = document.getElementById("myImg4");
      var img5 = document.getElementById("myImg5");

      var modalImg = document.getElementById("img01");
      var captionText = document.getElementById("caption");

      img1.onclick = function () {
        modal.style.display = "block";
        modalImg.src = this.src;
        captionText.innerHTML = this.alt;
      }
      img2.onclick = function () {
        modal.style.display = "block";
        modalImg.src = this.src;
        captionText.innerHTML = this.alt;
      }
      img3.onclick = function () {
        modal.style.display = "block";
        modalImg.src = this.src;
        captionText.innerHTML = this.alt;
      }
      img4.onclick = function () {
        modal.style.display = "block";
        modalImg.src = this.src;
        captionText.innerHTML = this.alt;
      }
      img5.onclick = function () {
        modal.style.display = "block";
        modalImg.src = this.src;
        captionText.innerHTML = this.alt;
      }

      // Get the <span> element that closes the modal
      var span = document.getElementsByClassName("close")[0];

      // When the user clicks on <span> (x), close the modal
      span.onclick = function () {
        modal.style.display = "none";
      }
    </script>

	<!-- 이미지 엔딩라인 -->



</body>
</html>