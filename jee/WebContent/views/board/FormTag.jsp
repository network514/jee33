<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Form 태그</title>
</head>
<body>
	<form action="">
		<fieldset>
			<legend>데이터 전송</legend>
			ID : <input type="text" name="id" value="ID" /><br />
			비밀번호 : <input type="password" name="pass" /><br />
			<label for="Hello">인사말 : </label> <br />
			인사말 : <textarea name="area" id="" cols="30" rows="10"></textarea><br />
			<input type="image" src="<%=request.getContextPath()%>/images/Hydrangeas.jpg" width="300px"><br />
			<input type="image" src="<%=request.getContextPath()%>/images/pikachu.gif" width="300px"><br />
		</fieldset>
	</form>
</body>
</html>