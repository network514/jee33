<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 디렉티브 -->
<%! 
	public int multiply(int a, int b){
	int c = a* b;
	return c;
}
%>
<!-- 선언부 -->
<%@ page import="java.util.Date"%>
<%@ page import = "java.text.SimpleDateFormat"%> <!-- 스크립트릿 -->
    <!-- 54p. / 68p. import, contents type(UTF-8)/ 81p. -->
<%
	Date now = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss a");
	//날짜와 관련된 것은 무조건 SimpleDateFormat을 쓴다.
%> <!-- 표현식 -->
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>chap02\now.jsp</title>
</head>
<body>
	현재 시간 : 
	<%= sdf.format(now) %>
	
	10 * 25 = <%= multiply(10, 25) %>
	
	<!--
	JSP 에서 제공하는 것들.
	1. 디렉티브 : 설정정보를 지정. < %@ 디렉티브라 부른다.
	2. 스크립트
		(1) 스크립트릿 : 자바 코드를 실행한다. < %
		(2) 표현식 : 값을 출력한다. < %= System.out.println과 유사
		(3) 선언부 : 자바 메소드를 만든다. (함수, 메소드, 프로시저는 모두 다르다.) < %!
	3. EL
	4. 기본객체
	5. JSTL
	-->
</body>
</html>