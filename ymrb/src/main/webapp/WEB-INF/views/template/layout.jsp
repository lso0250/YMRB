<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head><meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Insert title here</title>

<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/heroic-features.css" rel="stylesheet">
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/css/images/favicon.ico?cb=1" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css" media="all" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/fancybox/jquery.fancybox-1.3.1.css" type="text/css" media="all" />
	<script src="${pageContext.request.contextPath}/css/jquery-1.4.2.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="./css/jquery-ui-1.8.5.custom.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="./css/jquery.easing.1.3.js" type="text/javascript" charset="utf-8"></script>
	<script src="./css/fancybox/jquery.fancybox-1.3.1.js" type="text/javascript" charset="utf-8"></script>
	<script src="./css/fancybox/jquery.mousewheel-3.0.2.pack.js" type="text/javascript" charset="utf-8"></script>
	<script src="./css/js-func.js" type="text/javascript" charset="utf-8"></script>
<title>Insert title here</title>
<!-- <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
<style>
#l1{
margin-left: 100px;}
</style>
</head>

<body>
	<!-- include_directive.jsp -->
	<div class="container">
		<header>
			<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#"> Y M R B</a>
					</div>
					<br> <br>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li id="l1"><a href="menu.do?codeContents=9"> &nbsp;&nbsp;&nbsp;&nbsp;전체분류</a></li>
							<li><a href="comic.do"> &nbsp;&nbsp;&nbsp;&nbsp;일반</a></li>
							<li><a href="romance.do">
									&nbsp;&nbsp;&nbsp;&nbsp;로맨스 </a></li>
							<li><a href="fantasy.do">
									&nbsp;&nbsp;&nbsp;&nbsp;판타지 </a></li>
							<li id="l1"><a href="comic.do"> &nbsp;&nbsp;&nbsp;&nbsp;${nic}님 환영합니다. 보유 포인트 : ${point} </a></li>
							<li><a href="comic.do"> &nbsp;&nbsp;정보수정 </a></li>
							<li><a href="comic.do"> &nbsp;&nbsp;마이페이지</a></li>
	
						</ul>
					</div>
					<!-- /.navbar-collapse -->
				</div>
				<!-- /.container -->
			</nav>
		</header>

		<article>
			<tiles:insertAttribute name="content" />
		</article>
		<footer>
			<tiles:insertAttribute name="footer" />
		</footer>
	</div>
</body>
</html>