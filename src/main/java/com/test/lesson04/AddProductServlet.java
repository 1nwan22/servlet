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
		
		String nickname = request.getParameter("nickname");
		String title = request.getParameter("title");
		int price = Integer.valueOf(request.getParameter("price"));
		String description = request.getParameter("description");
		String pictureUrl = request.getParameter("pictureUrl");
		int sellerId = 0;
		
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		String selectQuery = "select A.*, B.* from `seller` as A join `used_goods` as B on A.id = B.sellerId";
		try {
			ResultSet res = ms.select(selectQuery);
			while(res.next()) {
				if (nickname.equals(res.getString("nickname"))) {
					sellerId = res.getInt("sellerId");
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		String insertQuery = "insert into `used_goods`(`sellerId`, `title`, `description`, `price`, `pictureUrl`) values (" + sellerId + ", '" + title + "', '" + description + "', " + price + ", '" + pictureUrl + "')";
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		ms.disconnect();
		
		response.sendRedirect("/lesson04/fleamarketList.jsp");
		
	}
}
