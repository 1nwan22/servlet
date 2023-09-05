package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz08")
public class GetMethodQuiz08 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
		res.setCharacterEncoding("UTF-8");
		res.setContentType("text/html");
		PrintWriter out = res.getWriter();
		
		List<String> list = new ArrayList<>(Arrays.asList(
		        "강남역 최고 맛집 소개 합니다.", 
		        "오늘 기분 좋은 일이 있었네요.", 
		        "역시 맛집 데이트가 제일 좋네요.", 
		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
		        "자축 저 오늘 생일 이에요."));
		
		String search = req.getParameter("search");
		out.print("<html><head><title>맛집</title></head><body>");
		
		for (String str : list) {
			if (str.contains(search)) {
				str = str.replace(search, "<b>" + search + "</b>");
				//split풀이법 String[] words = str.split(search);
				// out.print(words[0] + "<b>" + search + "</b>" + words[1] + "<br>")
				out.print(str + "<br>");
			}
		}
		
		Iterator<String> iterator = list.iterator();
		while (iterator.hasNext()) {
			String str = iterator.next();
			if (str.contains(search)) {
				str = str.replace(search, "<b>" + search + "</b>");
				out.print(str + "<br>");
			}
		}
		
		out.print("<body></html>");
		
	}
}
