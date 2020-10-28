<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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




</head>
<body>

	<div class="modal" id="myModal">
		<div class="modal-dialog">
		  <div class="modal-content">
		  
			<!-- Modal Header -->
			<div class="modal-header">
			  <h4 class="modal-title">신고하기</h4>
			  <button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>
			
			<!-- Modal body -->
			<div class="modal-body">
			  신고하신 사유가 무엇인가요?
			  <br><br>
			  <form action="">
					<input type="radio" name="productX" id="productX"><label for="productX">상품과 관련없는 비방내용</label> <br>
					<input type="radio" name="genderX" id="genderX"><label for="genderXX">음란, 욕설 부적절한 내용</label>  <br>
					<input type="radio" name="reviewX" id="reviewX"><label for="reviewX">구매후기 취지와 어긋난 내용</label>  <br>
					<input type="radio" name="elseX" id="elseX"><label for="elseX">기타</label>  <br>
					<textarea name="elseText" id="elseText" cols="60" rows="5" style="resize: none;"></textarea>

				<hr>

				<button type="submit" class="btn btn-danger" id="sucessD">신고하기</button>

			  </form>
			</div>
		

		  </div>
		</div>
	  </div>

</body>
</html>