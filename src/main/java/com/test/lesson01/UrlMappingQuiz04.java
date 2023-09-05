package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz04")
public class UrlMappingQuiz04 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
		res.setCharacterEncoding("utf-8");
		res.setContentType("text/html");
		PrintWriter out = res.getWriter();
		out.print("<html><head><title>리스트 출력</title></head><body><ul>");
		for(int i = 1; i <= 30; i++) {
			out.print("<li>" + i + "번째 리스트</li>");
		}
		out.print("</ul></body></html>");
	}

}
