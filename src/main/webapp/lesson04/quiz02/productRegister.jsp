<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="p-5">
<div class="display-4">물건 올리기</div>
<%
	MysqlService ms = MysqlService.getInstance();
	ms.connect();
	
	String selectQuery = "select A.*, B.* from `seller` as A join `used_goods` as B on A.id = B.sellerId";
	ResultSet res = ms.select(selectQuery);
	
	
%>
<div>
	<form id="inputForm" method="post" action="/lesson04/add-product">
		<div class="form-group m-2 d-flex justify-content-between">
			<select class="form-control col-3 font-weight-bold text-center" name="sellerId" id="sellerId">
				<option value="default" selected>-아이디 선택-</option>
			<%
				while(res.next()) {
			%>
				<option value="<%=res.getInt("id") %>"><%= res.getString("nickname") %></option>
			<%
				}
			%>
			</select>
			<input type="text" class="form-control col-5 font-weight-bold" name="title" id="title" placeholder="제목">
			<div class="input-group mb-3 col-3">
  				<input type="text" class="form-control font-weight-bold" name="price" id="price" placeholder="가격">
  				<span class="input-group-text font-weight-bold">원</span>
			</div>
		</div>
		<div class="form-group m-2">
			<textarea name="description" class="w-100" rows="10"></textarea>
		</div>
		<div class="form-group m-2">
			<div class="input-group mb-3">
  				<label for="pictureUrl" class="font-weight-bold input-group-text">이미지 url</label>
  				<input type="text" class="form-control" name="pictureUrl" id="pictureUrl">
			</div>
		</div>
		<input type="submit"  value="저장" class="btn-register form-control font-weight-bold btn btn-light">
	</form>
</div>
</div>
<%
ms.disconnect();
%>
