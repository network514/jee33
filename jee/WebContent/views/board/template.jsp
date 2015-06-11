<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    /* 주석 */
    /* 제일 마지막에 적은 스타일시트가 우선순위를 갖는다.
    Inline > Embedding > Linked, @import */
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	@import url("<%=request.getContextPath()%>/css/template.css")
</style>
</head>
<body>
	<table class="tableClass"> <!-- 으흠 -->
	<tr class="trClass">
		<th class="thClass">필 드</th>
		<th class="thClass">입력값</th>
	</tr>
	<tr class="trClass">
		<td class="tdClass">게시글No.</td>
		<td class="tdClass"><input type="text" class="inputClass"></td>
	</tr>
	<tr class="trClass">
		<td class="tdClass">제목</td>
		<td class="tdClass"><input type="text" class="inputClass"></td>
	</tr><tr class="trClass">
		<td class="tdClass">작성자</td>
		<td class="tdClass"><input type="text" class="inputClass"></td>
	</tr><tr class="trClass">
		<td class="tdClass">조회수</td>
		<td class="tdClass"><input type="text" class="inputClass"></td>
	</tr><tr class="trClass">
		<td class="tdClass">분류</td>
		<td class="tdClass"><input type="text" class="inputClass"></td>
	</tr><tr class="trClass">
		<td class="tdClass">댓글</td>
		<td class="tdClass"><input type="text" class="inputClass"></td>
	</tr><tr class="trClass">
		<td class="tdClass">내용</td>
		<td class="tdClass"><input type="text" class="inputClass"></td>
	</tr><tr class="trClass">
		<td class="tdClass">페이지</td>
		<td class="tdClass"><input type="text" class="inputClass"></td>
	</tr><tr class="trClass">
		<td class="tdClass">댓글No.</td>
		<td class="tdClass"><input type="text" class="inputClass"></td>
	</tr><tr class="trClass">
		<td class="tdClass">댓글 날짜</td>
		<td class="tdClass"><input type="text" class="inputClass"></td>
	</tr><tr class="trClass">
		<td class="tdClass">작성일 </td>
		<td class="tdClass"><input type="text" class="inputClass"></td>
	</tr>
	</table>
</body>
</html>