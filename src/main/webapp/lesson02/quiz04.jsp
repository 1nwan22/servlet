<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<title>길이 변환</title>
</head>
<body>
	<div class="container">
		<h1>길이 변환</h1>
		<form method="post" action="/lesson02/quiz04_1.jsp">
			<div class="form-group d-flex">
				<input type="text" class="form-control col-2" name="length">
				<span>cm</span>
			</div>
			<div class="form-group">
				<label for="inch">인치</label><input type="checkbox" name="unit" id="inch" value="inch" class="m-1">
				<label for="yard">야드</label><input type="checkbox" name="unit" id="yard" value="yard" class="m-1">
				<label for="feet">피트</label><input type="checkbox" name="unit" id="feet" value="feet" class="m-1">
				<label for="meter">미터</label><input type="checkbox" name="unit" id="meter" value="meter" class="m-1">
			</div>
			<div clas="form-group">
				<input type="submit" value="변환하기" class="btn btn-success">
			</div>
			
		</form>
	</div>
</body>
</html>