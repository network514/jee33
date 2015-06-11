<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="login.jsp">
		<table style="border: 1px solid black; border-collapse: collapse;">
			<tr style="border: 1px solid black;" >
				<td style="border: 1px solid black;" >ID : </td>
				<td style="border: 1px solid black;" >
					<input type="text" name="memberId" id="memberId" placeholder="아이디"/>
				</td>
			</tr>
			<tr style="border: 1px solid black;" >
				<td style="border: 1px solid black;" > PWD : </td>
				<td style="border: 1px solid black;" >
					<input type="password" name="pass" id="pass" />
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="전 송" />
				</td>
			</tr>
		</table>
	</form>
</body>
</html>