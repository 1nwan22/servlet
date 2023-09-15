<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.7.0.js" integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="fleamarketStyle.css">
<title>홍당무 마켓</title>
</head>
<body>
	<div id="wrap" class="container">
		<header class="d-flex align-items-center justify-content-center">
			<jsp:include page="header.jsp"></jsp:include>
		</header>
		<nav class="d-flex align-items-center">
			<jsp:include page="menu.jsp"></jsp:include>
		</nav>
		<section class="contents">
			<jsp:include page="productRegister.jsp"></jsp:include>
		</section>
		<footer class="d-flex align-items-center justify-content-center">
			<jsp:include page="footer.jsp"></jsp:include>
		</footer>
	</div>
	<script type="text/javascript">
	
	
	function check(){
		
		let ;
		
		/* 아이디 유효성 검사 */
		if($('input[id="id"]').val().length == 0){ // if( $('#id').val() == "" ) 도 가능
			alert('아이디를 입력하세요');
			$('input[id="id"]').focus(); // 이건 그냥 마우스 커서가 여기로 오게 하는것
			return false;
		}
		
		/* 비밀번호 및 비밀번호 확인 유효성 검사 */
		if($('input[name="password"]').val().length == 0){
			alert('비밀번호를 입력하세요');
			$('input[name="password"]').focus();
			return false;
		}
</script>
</body>

</html>