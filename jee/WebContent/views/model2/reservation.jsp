<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>예약 폼</title>
</head>
<body>
	<div>
	<form action="">
	<fieldset>
		<legend>예약일</legend>
		<ol>
			<li>
				예약취소는 영화 시간 두시간 전까지 가능합니다.
			</li>
			<li>
				<label for="wanted">원하는 예약일</label>
				<input type="time" name="time" id="time"/>
			</li> 
		</ol>
		<input type="submit" value="전송"/>
	</form>
	</fieldset>
	</div>
	
	<div>
	<fieldset>
		<form action="<%=request.getContextPath()%>/reservation/checkIn.do">
			<legend>주문 내용</legend>
			<ol>
				<li>
					<label for="prod">아이디</label>
					<input type="text" name="id" id="id" placeholder="아이디를 입력하세요"/>
				</li>
				<li>
					<label for="num">열번호</label>
					<input id="floor" name="floor" type="number" min="1" max="5" value=""/>
				</li>
				<li>
					<label for="num">행번호</label>
					<input id="row" name="row" type="number" min="1" max="5" value=""/>
				</li>
			</ol>
		</form>
	</fieldset>
	<input type="submit" value="등록"/>
	</div>
</body>
</html>