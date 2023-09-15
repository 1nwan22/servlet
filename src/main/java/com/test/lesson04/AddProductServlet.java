package com.test.lesson04;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/add-product")
public class AddProductServlet extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		int sellerId = Integer.valueOf(request.getParameter("sellerId"));
		String title = request.getParameter("title");
		int price = Integer.valueOf(request.getParameter("price"));
		String description = request.getParameter("description");
		String pictureUrl = request.getParameter("pictureUrl");
		
		
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		
		String insertQuery = "insert into `used_goods`(`sellerId`, `title`, `description`, `price`, `pictureUrl`) values (" + sellerId + ", '" + title + "', '" + description + "', " + price + ", '" + pictureUrl + "')";
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		ms.disconnect();
		
		response.sendRedirect("/lesson04/quiz02/fleamarketList.jsp");
		
	}
}
