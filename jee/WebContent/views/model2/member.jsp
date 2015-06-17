<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>회원정보관리 페이지</title>
	<style type="text/css">
		@import url("<%=request.getContextPath()%>/css/model2/kaup.css");
	</style>
</head>
<fieldset>
<legend>회원 가입</legend>
	<table>
		<tr>
			<td>이름 </td>
			<td>
				<%-- <%=request.getAttribute("name")%> --%>
				${name}
			</td>
		</tr>
		<tr>
			<td>ID</td>
			<td>
				<%-- <%=request.getAttribute("id")%> --%>
				${id}
			</td>
		</tr>
		<tr>
			<td>나이</td>
			<td>
				<%-- <%=request.getAttribute("age") %> 세 --%>
				${age} 세
			</td>
		</tr>
		<tr>
			<td>주소</td>
			<td>
				<%=request.getAttribute("age") %>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="전송"/>
			</td>
		</tr>
	</table>
</fieldset>