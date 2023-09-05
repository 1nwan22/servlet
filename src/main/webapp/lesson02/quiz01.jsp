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


<%
	//2
	int[] scores = {80, 90, 100, 95, 80};
	int sum = 0;
	for (int score : scores) {
		sum += score;
	}
	double average = (double)sum / scores.length;
	
	//3
	List<String> scoreList = List.of("X", "O", "O", "O", "X", "O", "O", "O", "X", "O");
	sum = 0;
	Iterator iter = scoreList.iterator();
	while (iter.hasNext()) {
		String score = (String) iter.next();
		if (score.equals("O")) {
			sum += 100 / scoreList.size();
		}
	}
	
	//4
	String birthDay = "20010820";
	int year = Integer.valueOf(birthDay.substring(0, 4));
	int age = 2023 - year;
	//out.print(year);
	
	
%>

<h2>1부터 50까지의 합은 <%= getSum(50) %>입니다.</h2>
<h2>평균 점수는 <%= average %>입니다. </h2>
<h2>채점 결과는 <%= sum %>점입니다.</h2>
<h2><%= birthDay %>의 나이는 <%= age %>세 입니다.</h2>
</body>
</html>