<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 86p. 절대경로 -->
	<style>
		@import url("<%=request.getContextPath()%>/css/header.css");
	</style>
</head>
<header id="top">
	<div id="login">
		<a href="#">login</a> |
		<a href="#">join</a>
	</div>
	<div class="clear"></div>
	<div id="logo">
		<a href="#">
			<img src="<%=request.getContextPath() %>/images/gimbob.png" width="250px" height="60px" alt="" />
		</a>
	</div>
	<nav id="topMenu">
		<ul>
			<li><a href="#">HOME</a></li>
			<li><a href="#">COMPANY</a></li>
			<li><a href="#">SOLUTION</a></li>
			<li><a href="#">CUSTOMER CENTER</a></li>
			<li><a href="#">CONTACT US</a></li>	
		</ul>
	</nav>
</header>
<div class="clear">
</div>