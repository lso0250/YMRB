<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Free CSS template by ChocoTemplates.com</title>
</head>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/verticalmenu2.css"
	media="screen">

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
     
<div id="floatMenu">
	<ul id="nav">
		<li><a id='im1'><img src="css/images/insert.jpg" id="1"
				align='left'>소설</a>
			<ul class='count'>
				<li><a href="menulist.do?codeContents=9">한국소설</a></li>
				<li><a href="menulist.do?codeContents=10">SF소설</a></li>
				<li><a href="menulist.do?codeContents=11">국내판타지소설</a></li>
				<li><a href="menulist.do?codeContents=12">해외판타지소설</a></li>
				<li><a href="menulist.do?codeContents=13">추리/미스터리/스릴러</a></li>
			</ul></li>
		<li><a id='im2'><img src="css/images/insert.jpg" id="2"
				align='left'>경영/경제</a>
			<ul class='count'>
				<li><a href="menulist2.do?codeContents=15">경영일반</a></li>
				<li><a href="menulist2.do?codeContents=16">경제일반</a></li>
				<li><a href="menulist2.do?codeContents=17">마케팅/세일즈</a></li>
				<li><a href="menulist2.do?codeContents=18">재테크/금융/부동산</a></li>
			</ul></li>
		<li><a id='im3'><img src="css/images/insert.jpg" id="3"
				align='left'>어린이/청소년</a>
			<ul class='count'>
				<li><a href="menulist3.do?codeContents=20">유아</a></li>
				<li><a href="menulist3.do?codeContents=21">어린이</a></li>
				<li><a href="menulist3.do?codeContents=22">청소년</a></li>
			</ul></li>
		<li><a id='im4'><img src="css/images/insert.jpg" id="4"
				align='left'>잡지</a>
			<ul class='count'>
				<li><a href="menulist4.do?codeContents=24">경영/재테크</a></li>
				<li><a href="menulist4.do?codeContents=25">문학/교양</a></li>
				<li><a href="menulist4.do?codeContents=26">여성/패션/뷰티</a></li>
				<li><a href="menulist4.do?codeContents=27">디자인/예술</a></li>
				<li><a href="menulist4.do?codeContents=28">건강/스포츠</a></li>
				<li><a href="menulist4.do?codeContents=29">취미/여행/요리</a></li>
			</ul></li>
		<li><a id='im5'><img src="css/images/insert.jpg" id="5"
				align='left'>인문/사회/역사</a>
			<ul class='count'>
				<li><a href="menulist5.do?codeContents=31">인문</a></li>
				<li><a href="menulist5.do?codeContents=32">정치/사회</a></li>
				<li><a href="menulist5.do?codeContents=33">예술/문화</a></li>
				<li><a href="menulist5.do?codeContents=34">역사</a></li>
			</ul></li>
		<li><a id='im6'><img src="css/images/insert.jpg" id="6"
				align='left'>자기계발</a>
			<ul class='count'>
				<li><a href="menulist6.do?codeContents=36">성공/삶의자세</a></li>
				<li><a href="menulist6.do?codeContents=37">기획/창의/리더십</a></li>
				<li><a href="menulist6.do?codeContents=38">취업/창업</a></li>
				<li><a href="menulist6.do?codeContents=39">여성</a></li>
			</ul></li>
		<li><a id='im7'><img src="css/images/insert.jpg" id="7"
				align='left'>여행</a>
			<ul class='count'>
				<li><a href="menulist7.do?codeContents=40">국내여행</a></li>
				<li><a href="menulist7.do?codeContents=41">해외여행</a></li>
			</ul></li>

	</ul>
</div>
<div class="shell">
	<div class="title">
	<h2>  ${getBookList[0].BOOK_TITLE}</h2>
	<a href="menulist.do?codeContents=${getBookList2[0].CODE_CONTENTS2}"><input type="button" value="홈"></a>
	<a href="freebook.do?codeContents=${getBookList2[0].CODE_CONTENTS2}"><input type="button" value="무료책"></a>
	<a href="fulllist.do?codeContents=${getBookList2[0].CODE_CONTENTS2}"><input type="button" value="전체"></a>
	</div>
	<hr>
	<div id="main">
		<c:forEach var="alstn" items="${getBookList}" >
			<!-- image box -->
			<div class="image-box">
				<div class="holder">
					<span class="drag-pointer">&nbsp;</span>
					<!-- photo cover -->
					<div class="photo-cover">
						<a href="css/images/golden-gate-big.jpg" class="big-image"><img
							src="./image/${alstn.BOOK_IMAGE }" alt=""
							style="width: 167px; height: 107px;" /></a>
					</div>
					<!-- end photo cover -->

					<!-- photo name -->
					<p class="photo-name">${alstn.BOOK_CONTENTS}</p>
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