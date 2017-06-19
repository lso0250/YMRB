<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Free CSS template by ChocoTemplates.com</title>
</head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/reader/css/verticalmenu2.css" media="screen">
<script type="text/javascript">
	$(document).ready(function() {
		var currentPosition = parseInt($("#floatMenu").css("top"));
		$(window).scroll(function() {
			var position = $(window).scrollTop();
			$("#floatMenu").stop().animate({
				"top" : position + currentPosition + "px"
			}, 1000);
		});
	});

	$(document).ready(function() {
		;
		$('#nav li a').click(function() {
			var s = $(this).attr('id');
			var imgid = $("#" + s + " img").attr('id');
			var imgsrc = $("#" + imgid + "").attr('src');
			if (imgsrc == "css/images/insert.jpg") {
				$("#" + imgid + "").attr('src', 'css/images/remove.jpg');
				$(this).next().slideDown(800);
			} else {
				$("#" + imgid + "").attr('src', 'css/images/insert.jpg');
				$(this).next().slideUp(800);
			}
		});
		$("#menu li a").mouseover(function() {
			var s = $(this).attr('id');
			var imgid = $("#" + s + " img").attr('id');
			var imgsrc = $("#" + imgid + "").attr('src');
			if (imgsrc == "css/images/insert.jpg") {
				$("#" + imgid + "").attr('src', 'css/images/remove.jpg');
				$(this).parent().find(".count").slideDown('medium').show();
			}
			$(this).parent().hover(function() {
			}, function() {
				$("#" + imgid + "").attr('src', 'css/images/insert.jpg');
				$(this).parent().find(".count").slideUp('slow');
			});

		});
		$('#onclick').attr('checked', true);
		$('#onclick').click(function() {
			$("#click").show();
			$("#onover").hide();
			$('#mouseover').attr('checked', false);
		});
	});
</script>
<style>
#floatMenu {
	color: white;
}

a:link {
	text-decoration: none;
	color: #333;
}

a:hover {
	text-decoration: none;
	color: #999;
}

a:active {
	text-decoration: none;
	color: #FF0033;
}

a:visited {
	text-decoration: none;
	color: #333;
}

#floatMenu {
	position: absolute;
	width: 31px;
	left: 40%;
	padding: 0;
	margin: 0;
	z-index: 1000;
	text-align: center;
	top: 200px;
	margin-left: -580px; /*아이콘 위치 조절 */
}

body {
	font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;
}
</style>
<div class="shell">
	<div class="title">
		베스트셀러
		 <a href="bookSel.do" class="big-image">aaaaaaa</a>
	</div>
	<hr>
	<div id="main">

		<!-- user box -->
		<div class="user-box">
			<span class="drag-pointer">&nbsp;</span>
			<div class="cl">&nbsp;</div>
			<!-- user picture -->
			<div class="user-picture">
				<img src="css/images/user-picture.jpg" alt="" />
			</div>
			<!-- end user picture -->

			<!-- user info -->
			<div class="user-info">

				<!-- username -->
				<p class="username">ALEXANDRA DRESSEW</p>
				<!-- end username -->

				<!-- description -->
				<div class="description">
					<h5>FILE DESCRIPTION</h5>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In
						sed rhoncus arcu. Proin lobortis augue id odio imperdiet aliquet.</p>
				</div>
				<!-- end description -->

			</div>
			<!-- end user info -->

			<div class="cl">&nbsp;</div>

			<!-- social links -->
			<div class="social-links">
				<p>FIND ME ON</p>
				<a href="#" class="linkedin">linkedin</a> <a href="#" class="skype">skype</a>
				<a href="#" class="facebook">facebook</a> <a href="#"
					class="twitter">twitter</a> <a href="#" class="picasa">picasa</a> <a
					href="#" class="lastfm">lastfm</a>

				<div class="cl">&nbsp;</div>
			</div>
			<!-- end social-links -->
		</div>
		<!-- end user box -->
		<c:forEach var="alstn2" items="${getBookList2}" begin="0" end="9"
			step="1">
			<!-- image box -->
			<div class="image-box">
				<div class="holder">
					<span class="drag-pointer">&nbsp;</span>
					<!-- photo cover -->
					<div class="photo-cover">
						<a data-toggle="modal" data-target="#modal-testNew" role="button" href="bookView.do?bookNum=${alstn2.BOOK_NUM}"><a href="bookview.do?bookNum=${alstn2.BOOK_NUM }" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#show"><img
							src="./image/${alstn2.BOOK_IMAGE }" alt=""
							style="width: 167px; height: 107px;" /></a></a>
							
							
					</div>
					<!-- end photo cover -->

					<!-- photo name -->
					<p class="photo-name">${alstn2.BOOK_CONTENTS}</p>
					<!-- end photo name -->
				</div>
			</div>
			<!-- end image-box -->
		</c:forEach>

		<div class="cl">&nbsp;</div>
	</div>
	<!-- end main -->
</div>
		<!-- Modal -->
		<div class="modal fade" id="show" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog" style="width:1200px;">
				<div class="modal-content"></div>
			</div>
		</div>
<div class="shell">
	<div class="title">
		신간
	</div>
	<hr>
	<div id="main">

		<!-- user box -->
		<div class="user-box">
			<span class="drag-pointer">&nbsp;</span>
			<div class="cl">&nbsp;</div>
			<!-- user picture -->
			<div class="user-picture">
				<img src="css/images/user-picture.jpg" alt="" />
			</div>
			<!-- end user picture -->

			<!-- user info -->
			<div class="user-info">

				<!-- username -->
				<p class="username">ALEXANDRA DRESSEW</p>
				<!-- end username -->

				<!-- description -->
				<div class="description">
					<h5>FILE DESCRIPTION</h5>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In
						sed rhoncus arcu. Proin lobortis augue id odio imperdiet aliquet.</p>
				</div>
				<!-- end description -->

			</div>
			<!-- end user info -->

			<div class="cl">&nbsp;</div>

			<!-- social links -->
			<div class="social-links">
				<p>FIND ME ON</p>
				<a href="#" class="linkedin">linkedin</a> <a href="#" class="skype">skype</a>
				<a href="#" class="facebook">facebook</a> <a href="#"
					class="twitter">twitter</a> <a href="#" class="picasa">picasa</a> <a
					href="#" class="lastfm">lastfm</a>

				<div class="cl">&nbsp;</div>
			</div>
			<!-- end social-links -->
		</div>
		<!-- end user box -->
		<c:forEach var="alstn3" items="${getBookList3}" begin="0" end="9"
			step="1">
			<!-- image box -->
			<div class="image-box">
				<div class="holder">
					<span class="drag-pointer">&nbsp;</span>
					<!-- photo cover -->
					<div class="photo-cover">
						<a href="css/images/golden-gate-big.jpg" class="big-image"><img
							src="./image/${alstn3.BOOK_IMAGE }" alt=""
							style="width: 167px; height: 107px;" /></a>
					</div>
					<!-- end photo cover -->

					<!-- photo name -->
					<p class="photo-name">${alstn3.BOOK_CONTENTS}</p>
					<!-- end photo name -->
				</div>
			</div>
			<!-- end image-box -->
		</c:forEach>

		<div class="cl">&nbsp;</div>
	</div>
	<!-- end main -->
</div>
<div class="shell">
	<div class="title">
	무료인기
	</div>
	<hr>
	<div id="main">

		<!-- user box -->
		<div class="user-box">
			<span class="drag-pointer">&nbsp;</span>
			<div class="cl">&nbsp;</div>
			<!-- user picture -->
			<div class="user-picture">
				<img src="css/images/user-picture.jpg" alt="" />
			</div>
			<!-- end user picture -->

			<!-- user info -->
			<div class="user-info">

				<!-- username -->
				<p class="username">ALEXANDRA DRESSEW</p>
				<!-- end username -->

				<!-- description -->
				<div class="description">
					<h5>FILE DESCRIPTION</h5>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In
						sed rhoncus arcu. Proin lobortis augue id odio imperdiet aliquet.</p>
				</div>
				<!-- end description -->

			</div>
			<!-- end user info -->

			<div class="cl">&nbsp;</div>

			<!-- social links -->
			<div class="social-links">
				<p>FIND ME ON</p>
				<a href="#" class="linkedin">linkedin</a> <a href="#" class="skype">skype</a>
				<a href="#" class="facebook">facebook</a> <a href="#"
					class="twitter">twitter</a> <a href="#" class="picasa">picasa</a> <a
					href="#" class="lastfm">lastfm</a>

				<div class="cl">&nbsp;</div>
			</div>
			<!-- end social-links -->
		</div>
		<!-- end user box -->
		<c:forEach var="alstn4" items="${getBookList4}" begin="0" end="9"
			step="1">
			<!-- image box -->
			<div class="image-box">
				<div class="holder">
					<span class="drag-pointer">&nbsp;</span>
					<!-- photo cover -->
					<div class="photo-cover">
						<a href="css/images/golden-gate-big.jpg" class="big-image"><img
							src="./image/${alstn4.BOOK_IMAGE }" alt=""
							style="width: 167px; height: 107px;" /></a>
					</div>
					<!-- end photo cover -->

					<!-- photo name -->
					<p class="photo-name">${alstn4.BOOK_CONTENTS}</p>
					<!-- end photo name -->
				</div>
			</div>
			<!-- end image-box -->
		</c:forEach>

		<div class="cl">&nbsp;</div>
	</div>
	<!-- end main -->
	
</div>
<div class="shell">
	<div class="title">
	무료인기
	</div>
	<hr>
	<div id="main">

		<!-- user box -->
		<div class="user-box">
			<span class="drag-pointer">&nbsp;</span>
			<div class="cl">&nbsp;</div>
			<!-- user picture -->
			<div class="user-picture">
				<img src="css/images/user-picture.jpg" alt="" />
			</div>
			<!-- end user picture -->

			<!-- user info -->
			<div class="user-info">

				<!-- username -->
				<p class="username">ALEXANDRA DRESSEW</p>
				<!-- end username -->

				<!-- description -->
				<div class="description">
					<h5>FILE DESCRIPTION</h5>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In
						sed rhoncus arcu. Proin lobortis augue id odio imperdiet aliquet.</p>
				</div>
				<!-- end description -->

			</div>
			<!-- end user info -->

			<div class="cl">&nbsp;</div>

			<!-- social links -->
			<div class="social-links">
				<p>FIND ME ON</p>
				<a href="#" class="linkedin">linkedin</a> <a href="#" class="skype">skype</a>
				<a href="#" class="facebook">facebook</a> <a href="#"
					class="twitter">twitter</a> <a href="#" class="picasa">picasa</a> <a
					href="#" class="lastfm">lastfm</a>

				<div class="cl">&nbsp;</div>
			</div>
			<!-- end social-links -->
		</div>
		<!-- end user box -->
		<c:forEach var="alstn5" items="${getBookList5}" begin="0" end="9"
			step="1">
			<!-- image box -->
			<div class="image-box">
				<div class="holder">
					<span class="drag-pointer">&nbsp;</span>
					<!-- photo cover -->
					<div class="photo-cover">
						<a href="css/images/golden-gate-big.jpg" class="big-image"><img
							src="./image/${alstn5.BOOK_IMAGE }" alt=""
							style="width: 167px; height: 107px;" /></a>
					</div>
					<!-- end photo cover -->

					<!-- photo name -->
					<p class="photo-name">${alstn5.BOOK_CONTENTS}</p>
					<!-- end photo name -->
				</div>
			</div>
			<!-- end image-box -->
		</c:forEach>

		<div class="cl">&nbsp;</div>
	</div>
	<!-- end main -->
	
</div>

</body>

</html>
