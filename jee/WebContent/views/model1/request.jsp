<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 86p. -->
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>request 객체</title>
	<!-- Request request = new Request();로 추론할 수 있다. -->
	
</head>
<body>
<!--
request 기본 객체가 제공하는 기능
1. 브라우저 정보 읽기
2. 서버 정보 읽기
3. 파라미터 읽기 ★★★★
4. 헤더 읽기
5. 쿠키 읽기
6. 속성 처리 기능 ★★★★★
 -->
 요청URI = <%=request.getRequestURI() %> <br />
 컨텍스트 경로 = <%=request.getContextPath() %>
 <!-- 엄청 중요 -->
</body>
</html>