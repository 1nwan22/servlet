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
    
 
<div class="mt-3 mb-5">
<div class="content1 d-flex flex-wrap align-content: flex-start m-auto">
	<%
		while(res.next()) {
			if (res.getString("pictureUrl") == null) {
			
	%>
	<div class="contents-box p-3">
		<div class="d-flex justify-content-center align-items-center">
			<div class="d-flex align-items-center justify-content-center none-img">
				<h3 class="text-secondary font-weight-bold">이미지 없음</h3>
			</div>
		</div>		
		<div class="font-title font-weight-bold mt-1"><%= res.getString("title") %></div>		
		<div class="font-price text-secondary font-weight-bold"><%= res.getInt("price") %>원</div>		
		<div class="font-nickname font-weight-bold mt-1"><%= res.getString("nickname") %></div>		
	</div>
	<% 
			} else {
	%>
	<div class="contents-box p-3">
		<div>
			<img src="<%= res.getString("pictureUrl") %>" alt="상품이미지" width="100%" height="200px">
		</div>		
		<div class="font-title font-weight-bold mt-1"><%= res.getString("title") %></div>		
		<div class="font-price text-secondary font-weight-bold"><%= res.getInt("price") %>원</div>		
		<div class="font-nickname font-weight-bold mt-1"><%= res.getString("nickname") %></div>		
	</div>

<%
			}
		}
	ms.disconnect();
%>
</div>
</div>