<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 86p. / 오류 코드 404 : 경로 안에 파일이 있는지, 오타가 있는지 확인
    99p. 톰캣에서 get방식 파라미터를 위한 인코딩 처리하기-->
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>테스트 폼</title>
</head>
<body>
<div>
<!-- 
Get 방식과 POST 방식의 차이점은 전송 방식에 있다. 
Get 방식은 URL 의 뒷부분에 물음표(?)와 함께 파라미터를 붙여서 전송한다.
Get 방식은 웹 브라우저, 웹 서버 또는 웹 컨테이너(WAS - 톰캣, 제우스...)에
따라 전송할 수 있는 길이에 제한이 있다.

POST 방식은 데이터 영역(서버 메모리, 될 수 있으면 안쓰는게 좋다.)을 이용해서 데이터를 
전송하기 때문에 웹 브라우저나 웹서버등에 상관없이 전송할 수 있는 파라미터 길이에 
제한이 없다. // 개인정보나 파일 업로드와 같이 파일 용량이 큰 경우는 POST를 사용한다.
 -->
	폼에 데이터를 입력한 후 '전 송'버튼을 클릭하세요.
	<!-- <form action="viewParameter.jsp" method="post"> -->
	<!-- 회원정보 및 숨겨야 하는 데이터면 포스트를 사용한다.
	get은 문자량이 한정되어있으므로 전송량이 많은 경우 post를 사용한다. -->
	<form action="viewParameter.jsp" method="get">
	<!-- get이 빠르므로 search할 때 사용 쿠키라고 해서 캐싱기능이 있음. get은 문자량이 한정되어있음
	주소에 값이 ?와 함께 보임-->
		이 름 : <input type="text" name="name" size="10"/> <br />
		주 소 : <input type="text" name="address" size="30"/> <br />
		좋아하는 동물 : 
			<input type="checkbox" name="pet" value="dog"/> 강아지
			<input type="checkbox" name="pet" value="cat"/> 고양이
			<input type="checkbox" name="pet" value="pig"/> 돼 지<br />
		<input type="submit" value="전 송" /> <!-- viewParameter.jsp -->
	</form>
</div>
</body>
</html>