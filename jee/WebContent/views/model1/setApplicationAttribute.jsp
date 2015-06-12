<!-- 190p. -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("name");
	String value = request.getParameter("value");
	
	if(name != null && value != null){
		request.setAttribute(name, value); // 클래스 변수같이 됨. static이나 다름없음.
		/* request.setAttribute(name, value); 로 사용
		위 예제에서는 session을 사용해도 결과가 같게 나온다.*/
	}
%><!-- 스크립트릿 -->
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>JSP 기본객체의 속성(Attribute) 사용하기</title>
</head>
<body>
		<% 
			if(name != null && value != null){
				%>
				<%=name %> = <%=value %>
				<%
			}else{
				%>
				request 객체의 속성 설정 안함.
				<%
				}
			%>
<!-- 주소창에 http://localhost:9000/jee/views/model1/setApplicationAttribute.jsp 뒤에 
?name="홍길동"&value="20세" 를 강제로 준다.-->
</body>
</html>