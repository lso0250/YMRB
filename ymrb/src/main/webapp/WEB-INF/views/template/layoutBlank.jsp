<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>

	<script src="${pageContext.request.contextPath}/css/jquery-3.2.1.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="${pageContext.request.contextPath}/css/jquery-ui-1.8.5.custom.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="${pageContext.request.contextPath}/css/jquery.easing.1.3.js" type="text/javascript" charset="utf-8"></script>
	<script src="${pageContext.request.contextPath}/css/bootstrap.min.js"></script>
<style>
/* header, footer {
	padding: 1em;
	color: white;
	clear: left;
	text-align: center;
}

nav {
	float: left;
	margin: 0;
	padding: 1em;
}

nav ul {
	list-style-type: none;
	padding: 0;
}

nav ul a {
	text-decoration: none;
}

article {
	margin-left: 170px;
	padding: 1em;
	overflow: hidden;
} */
</style>
</head>
<body>
	<!-- include_directive.jsp -->
	<div class="container">

	<tiles:insertAttribute name="content"/>
	
	</div>
</body>
</html>