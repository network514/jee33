<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
 <meta charset="UTF-8" />
 <title>헬로우</title>
</head>
<body>
  <!--  값이 저장될 필요가 없을때 a 태그-->
    <div>
         <form action="<%=request.getContextPath()%>/name/hello.do">
         	<input type="text" id="name" name="name"/>
         	<input type="submit" value="전 송"/>
         </form>
         <p></p>
         <form action="<%=request.getContextPath()%>/hi.do"></form>
         	<input type="text" id="name" name="name"/>
         	<input type="submit" value="전 송"/>
    </div>
</body>
</html> 
