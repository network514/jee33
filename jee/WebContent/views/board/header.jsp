<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>헤더 샘플</title>
	<style>
		@import url("header.css");
	</style>
</head>
<body>
	<div id="wrap"> 
	<!-- wrap, wrapper 의미로 주어지는 클래스나 아이디는 body 바로 밑
	최상위 div 에게 보통 주어진다. 문법적 의미는 없다.-->
		<header id="top">
			<div id="login">
				<a href="#">login</a> |
				<a href="#">join</a>
			</div>
			<div class="clear"></div>
			<div id="logo">
				<a href="#">
					<img src="../../images/gimbob.png" width="250px" height="60px" alt="" />
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
		
	</div>
	<footer>
		<hr />
		<div>
			<pre>회사 소개 : 우리의 인생을 뛰노는 보배를 얼마나 
			내려온 할지라도 봄바람이다. 
			아니더면, 청춘에서만 소금이라 인간에 위하여 것이다.
			</pre>
		</div>
	</footer>
</body>
</html>