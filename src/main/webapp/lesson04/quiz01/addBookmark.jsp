<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<title>즐겨찾기 추가</title>
</head>
<body>
	<div class="container">
		<h1 class="font-weight-bold">즐겨찾기 추가</h1>
		<form method="post" action="/lesson04/add-bookmark">
			<div class="mt-1 mb-1">
				<div class="font-weight-bold">사이트명:</div>
				<input type="text" name="siteName" class="form-control col-4">
			</div>
			<div class="mt-1 mb-1">
				<div class="font-weight-bold">사이트 주소:</div>
				<input type="text" name="siteUrl" class="form-control col-6">
			</div>
			<input type="submit" value="추가" class="btn btn-success mt-2">
		</form>
	</div>
</body>
</html>