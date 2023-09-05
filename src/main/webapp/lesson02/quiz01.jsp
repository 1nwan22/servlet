<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!

	
	public int getSum(int num) {
		int sum = 0;
		for (int i = 1; i <= num; i++) {
			sum += i;
		}
		return sum;
	}
%>
<%= getSum(100) %>

<%
	int[] scores = {80, 90, 100, 95, 80};
	int sum = 0;
	for (int score : scores) {
		sum += score;
	}
	double average = (double)sum / scores.length;
	
	List<String> scoreList = List.of("X", "O", "O", "O", "X", "O", "O", "O", "X", "O");
	sum = 0;
	Iterator iter = scoreList.iterator();
	while (iter.hasNext()) {
		String score = (String) iter.next();
		if (score.equals("O")) {
			sum += 100 / scoreList.size();
		}
	}
	
%>

<b>평균: <%= average %></b>
<b>시험점수: <%= sum %></b>
</body>
</html>