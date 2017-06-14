<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title></title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/style22.css">
<style>
body {
	background: #ddd;
}

#container {
	width: 80%;
	margin: auto;
	position: relative;
	padding-left: 20%;
}

#img1 {
	width: 250px;
	height: 350px;
}

li{
list-style: none;
}
ul.mylist{
    list-style: none;
    margin: 0px;
    padding: 0px;
  
    max-width: 250px;
    width: 100%;
}
ul.mylist li{
    padding: 5px 0px 5px 5px;
    margin-bottom: 5px;
    border-bottom: 1px solid #efefef;
    font-size: 12px;
}
ul.mylist li:last-child{
    border-bottom: 0px;
}
ul.mylist li:before{
    display: inline-block;
    vertical-align: middle;
    padding: 0px 5px 6px 0px;
}
</style>
</head>
<body>
	<br>
	<br>
	<br>
	<br>

	<ul>
		<li><img src="./Desert.jpg" id="img1"></li>
		<li>
			<ul class="mylist">
				<li>장르</li>
				<li>제목</li>
				<li>총권수</li>
				<li>저자 / 출판사 / 출판일</li>	
				<li>책소개</li>
			</ul>
		</li>
	</ul>




	<div id="container">
		<div class="pricing-table basic">
			<span class="table-head"> 대여 </span> <span class="price"> 권당
				1000원 </span> <span class="table-row">스프링 스타트 1권</span> <span
				class="table-row">스프링 스타트 2권</span> <span class="table-row">스프링
				스타트 3권</span>

			<div class="purchase">
				<a href="#" class="buy">Purchase</a>
			</div>
		</div>

		<div class="pricing-table standard">
			<span class="table-head"> 구매 </span> <span class="price"> 권당
				10000원 </span> <span class="table-row">스프링 스타트 1권</span> <span
				class="table-row">스프링 스타트 2권</span> <span class="table-row">스프링
				스타트 3권</span>

			<div class="purchase">
				<a href="#" class="buy">Purchase</a>
			</div>
		</div>
	</div>


	<div>
		책소개
		<hr>
		<textarea rows="20" cols="80"></textarea>
	</div>
	<div>
		이책을 구매한 분들의 선택
		<hr>
	</div>


</body>
</html>