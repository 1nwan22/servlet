package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz06")
public class GetMethodQuiz06 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
		res.setCharacterEncoding("UTF-8");
		res.setContentType("text/json");
		
		PrintWriter out = res.getWriter();
		
		int number1 = Integer.valueOf(req.getParameter("number1"));
		int number2 = Integer.valueOf(req.getParameter("number2"));
		
		int additon = number1 + number2;
		int subtraction = number1 - number2;
		int multiplication = number1 * number2;
		double division = number1 / number2;
		
		out.print("{\"additon\": " + additon
				+ ",\"subtraction\": " + subtraction
				+ ",\"multiplication\": " + multiplication
				+ ",\"division\": " + division + "}");
	}
}
