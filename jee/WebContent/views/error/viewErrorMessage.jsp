<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 232p. 8-2 / web.xml파일 확인-->
<%@ page isErrorPage="true" %>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>에러페이지</title>
</head>
<body>
	에러타입 : <%=exception.getClass().getName() %>
	에러메세지 : <%=exception.getMessage() %> <br />
	<img src="<%=request.getContextPath()%>/images/oops.jpg" alt="" />
</body>
</html>