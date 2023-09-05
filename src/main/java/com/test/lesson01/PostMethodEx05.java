package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/ex05")
public class PostMethodEx05 extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
		// 한글 깨짐 방지 + HTML
		res.setCharacterEncoding("UTF-8");
		res.setContentType("text/html");
		req.setCharacterEncoding("UTF-8");
		
		// Request Params
		String userId = req.getParameter("userId");
		String name = req.getParameter("name");
		String birth = req.getParameter("birth");
		String email = req.getParameter("email");
		
		// 테이블로 출력
		PrintWriter out = res.getWriter();
		out.print("<html><head><title>회원 정보</title></head><body>");
		out.print("<table border=\"1\">");
		out.print("<tr><th>아이디</th><td>" + userId + "</td></tr>");
		out.print("<tr><th>이름</th><td>" + name + "</td></tr>");
		out.print("<tr><th>생년월일</th><td>" + birth + "</td></tr>");
		out.print("<tr><th>이메일</th><td>" + email + "</td></tr>");
		out.print("</table></body></html>");
		
	}
}
