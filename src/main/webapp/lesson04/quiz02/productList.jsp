<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MysqlService ms = MysqlService.getInstance();
	ms.connect();
	
	String selectQuery = "select A.nickname, B.title, B.price, B.pictureUrl from `seller` as A join `used_goods` as B on A.id = B.sellerId order by A.id desc";
	ResultSet res = ms.select(selectQuery);
%>    
    
 
<div class="d-flex flex-wrap justify-content-between">
	<%
		while(res.next()) {
			if (res.getString("pictureUrl") == null) {
			
	%>
	<article class="contents-box p-2">
		<div class="d-flex justify-content-center align-items-center">
			<h3 class="text-secondary">이미지 없음</h3>
		</div>		
		<div><h4 class="font-weight-bold"><%= res.getString("title") %></h4></div>		
		<div class="text-secondary"><%= res.getInt("price") %>원</div>		
		<div class="font-color"><%= res.getString("nickname") %></div>		
	</article>
	<% 
			} else {
	%>
	<article class="contents-box p-2">
		<div>
			<img src="<%= res.getString("pictureUrl") %>" alt="상품이미지" width="350px">
		</div>		
		<div><h4 class="font-weight-bold"><%= res.getString("title") %></h4></div>		
		<div class="text-secondary"><%= res.getInt("price") %>원</div>		
		<div class="font-color"><%= res.getString("nickname") %></div>		
	</article>
</div>

<%
			}
		}
	ms.disconnect();
%>