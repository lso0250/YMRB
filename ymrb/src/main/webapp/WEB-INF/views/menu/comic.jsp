<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>

</head>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/reader/css/verticalmenu2.css"
	media="screen">
<body>
	<!-- Page Content -->
	<div class="container">

		<!-- Jumbotron Header -->
		<div class="row carousel-holder">

			<div class="col-md-12">
				<div id="carousel-example-generic" class="carousel slide"
					data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carousel-example-generic" data-slide-to="0"
							class="active"></li>
						<li data-target="#carousel-example-generic" data-slide-to="1"></li>
						<li data-target="#carousel-example-generic" data-slide-to="2"></li>
					</ol>
					<div class="carousel-inner">
						<div class="item active">
							<img class="slide-image" src="http://placehold.it/800x300" alt="">
						</div>
						<div class="item">
							<img class="slide-image" src="http://placehold.it/800x300" alt="">
						</div>
						<div class="item">
							<img class="slide-image" src="http://placehold.it/800x300" alt="">
						</div>
					</div>
					<a class="left carousel-control" href="#carousel-example-generic"
						data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left"></span>
					</a> <a class="right carousel-control" href="#carousel-example-generic"
						data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right"></span>
					</a>
				</div>
			</div>

		</div>

		<hr>

		<!-- Title -->
		<div class="row">
			<div class="col-lg-12">
				<h3>만화책</h3>
			</div>
		</div>
		<!-- /.row -->
		<c:forEach var="alstn" items="${getBookList}" begin="0" end="9"
			step="1">
			<!-- Page Features -->
			<div class="row text-center">

				<div class="col-md-3 col-sm-6 hero-feature">
					<div class="thumbnail">
						<img src="./image/${alstn2.BOOK_IMAGE }" alt=""
							style="width: 250px; height: 250px;" />
						<div class="caption">
							<h3>${alstn2.BOOK_CONTENTS}</h3>
							<p>대여:${alstn2.BOOK_RENT }</p>
							<p>구매:${alstn2.BOOK_PRICE }</p>
							<p>
							<a data-toggle="modal" data-target="#modal-testNew" role="button" href="bookView.do?bookNum=${alstn2.BOOK_NUM}">
							<a href="bookview.do?bookNum=${alstn2.BOOK_NUM }" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#show">
								Buy Now!</a></a> 
								<a href="#"	class="btn btn-default">More Info</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
		<!-- /.row -->

		<hr>

		<!-- Footer -->

	</div>
	<!-- /.container -->

	<!-- jQuery -->
	<script src="${pageContext.request.contextPath}/css/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="${pageContext.request.contextPath}/css/bootstrap.min.js"></script>

</body>

</html>
