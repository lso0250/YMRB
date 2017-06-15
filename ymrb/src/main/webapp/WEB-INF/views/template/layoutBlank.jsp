<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<style>
div.container {
	width: 100%;
}

header, footer {
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
}
</style>
</head>
<body>
	<!-- include_directive.jsp -->
	<div class="container">

			<tiles:insertAttribute name="content"/>
	
	</div>
</body>
</html>