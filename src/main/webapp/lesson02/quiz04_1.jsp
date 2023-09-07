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
<%
	int length = Integer.valueOf(request.getParameter("length"));
	String[] units = request.getParameterValues("unit");
/*	String inch = "";
	String yard = "";
	String feet = "";
	String meter = "";
	if (units != null) {
		for (String unit : units) {
			if (unit.equals("inch")) { // else if로 해야 조금이라도 빠름 if()로만 처리하는 것 보다
				inch = length * 0.393701 + " in";
			} else if (unit.equals("yard")) {
				yard = length * 0.0109361 + " yd";
			} else if (unit.equals("feet")) {
				feet = length * 0.0328084 + " ft";
			} else if (unit.equals("meter")) {
				meter = length * 0.01 + " m";
			}
		}
	}
	*/
	
%>

	<div class="container">
		<h1>길이 변환 결과</h1>
		<h2><%= length %>cm</h2>
		<hr>
		<h2>
			<%
			if (units != null) {
				for (String unit : units) {
					if (unit.equals("inch")) { // else if로 해야 조금이라도 빠름 if()로만 처리하는 것 보다
						double Inch = length * 0.393701;
						out.print(Inch + "in<br>");
					} else if (unit.equals("yard")) {
						double Yard = length * 0.0109361;
						out.print(Yard + "yd<br>");
					} else if (unit.equals("feet")) {
						double Feet = length * 0.0328084;
						out.print(Feet + "ft<br>");
					} else if (unit.equals("meter")) {
						double Meter = length * 0.01;
						out.print(Meter + "m");
					}
				}
			}
			%>
		</h2>
<%-- 		<h2><%= inch %></h2>
		<h2><%= yard %></h2>
		<h2><%= feet %></h2>
		<h2><%= meter %></h2> --%>
	</div>


</body>
</html>