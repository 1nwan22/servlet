package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/delete-bookmark")
public class DeleteBookmarkServlet extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int id = Integer.valueOf(request.getParameter("id"));
		
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		String selectQuery = "delete from `bookmark` where `id` = " + id;
		try {
			ms.update(selectQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		ms.disconnect();
		response.sendRedirect("/lesson04/quiz01/bookmarkList.jsp");
	}
}
