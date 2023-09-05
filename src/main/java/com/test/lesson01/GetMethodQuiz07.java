package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz07")
public class GetMethodQuiz07 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
		res.setCharacterEncoding("UTF-8");
		res.setContentType("text/html");
		
		String address = req.getParameter("address");
		String creditCard = req.getParameter("creditCard");
		int price = Integer.valueOf(req.getParameter("price"));
		
		PrintWriter out = res.getWriter();
		
		out.print("<html><head><title>주문결과</title></head><body>");
		if (!address.contains("서울시")) {
			out.print("배달불가 지역입니다");
		} else if (creditCard.equals("신한카드")) {
			out.print("결제 불가 카드입니다");
		} else {
			out.print(address
					+ "<b> 배달중비중</b><br>"
					+ "결제금액:"
					+ price
					+ "원");
		}
		out.print("</body></html>");
		
	}
}
