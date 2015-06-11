<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%
      String id = request.getParameter("memberId");
   if(id.equals("admin")){
      response.sendRedirect("now.jsp"); /* ★★★★ 어디로 갈지를 결정해줌. 경로를 지정*/
     /* request.getParameterNames() 값을 넘겨줌. */
   }else{
    %> 
    
<!doctype html>
<html lang="en">
<head>
 <meta charset="UTF-8" />
 <title>로그인 페이지</title>
</head>
<body>
  잘못된 아이디입니다.
    <% 
   }
   %> 
</body>
</html>