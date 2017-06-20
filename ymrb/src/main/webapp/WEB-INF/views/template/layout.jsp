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
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/reader/css/verticalmenu2.css" media="screen">
	<link href="${pageContext.request.contextPath}/css/bootstrap.min2.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/css/heroic-features.css" rel="stylesheet">
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/css/images/favicon.ico?cb=1" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css" media="all" />
	<script src="${pageContext.request.contextPath}/css/jquery-3.2.1.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="${pageContext.request.contextPath}/css/jquery-ui-1.8.5.custom.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="${pageContext.request.contextPath}/css/jquery.easing.1.3.js" type="text/javascript" charset="utf-8"></script>
	<script src="${pageContext.request.contextPath}/css/bootstrap.min.js"></script>
<script type="text/javascript">
jQuery.browser = {};
(function () {
    jQuery.browser.msie = false;
    jQuery.browser.version = 0;
    if (navigator.userAgent.match(/MSIE ([0-9]+)\./)) {
        jQuery.browser.msie = true;
        jQuery.browser.version = RegExp.$1;
    }
})();
</script>
	
<title>Insert title here</title>
<style>
article{
	padding-top:150px; 
}
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
						<form action="search.do" name="frm" method="post">
							<select name="key" name="speed" id="speed">
								<option <c:if test="${key =='저자' }">selected="selected"</c:if>>저자</option>
								<option <c:if test="${key =='제목' }">selected="selected"</c:if>>제목</option>
							</select> <input type="text" name="keyword" value="${keyword }"> 
							<input type="submit" value="검색" /><br>
						</form>
					</div>
					<br> <br>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li id="l1"><a href="menu.do?"> &nbsp;&nbsp;&nbsp;&nbsp;전체분류</a></li>
							<li><a href="romance.do?">&nbsp;&nbsp;&nbsp;로맨스 </a></li>
							<li><a href="fantasy.do">&nbsp;&nbsp;&nbsp;판타지 </a></li>
							<li><a href="comic.do"> &nbsp;&nbsp;&nbsp;만화</a></li>
							<li><a href="getBoardList.do"> &nbsp;&nbsp;커뮤니티</a></li>
							<c:if test="${login.mem_id == null }">
								<li><a  href="" onclick="window.open('${pageContext.request.contextPath}/login.do','signup','width=300')"> &nbsp;&nbsp;로그인 </a></li>
								<li><a data-toggle="modal" data-target="#modal-testNew"  role="button" data-backdrop="static" href="${pageContext.request.contextPath}/login.do" ></a></li>
								<a href="login.do" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal">
  								Launch demo modal
								</a>
								<li><a href="" onclick="contact()" class=".big-image" <%-- onclick="window.open('${pageContext.request.contextPath}/userInsert.do','userInsert','width=300')" --%>> &nbsp;&nbsp;회원가입</a></li>
							</c:if>		
							<c:if test="${login.mem_id != null }">
								<li id="l1"><a href="comic.do"> &nbsp;&nbsp;&nbsp;&nbsp;${login.mem_nic}님- 보유 포인트 : ${login.mem_point} </a></li>
								<li><a href="logout.do" > &nbsp;&nbsp;로그아웃  </a></li>
								<li><a href="mypage.do"> &nbsp;&nbsp;마이페이지</a></li>
								<c:if test="${login.mem_id == 'admin' }">
									<li><a href="getUserList.do"> &nbsp;&nbsp;관리자 페이지</a></li>
								</c:if>
							</c:if>
						</ul>
					</div>
					<!-- /.navbar-collapse -->
				</div>
				<!-- /.container -->
			</nav>
		</header>
		<br><br><br><br>
		<!-- Modal -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content"></div>
			</div>
		</div>
		<article>
			<tiles:insertAttribute name="content" />
		</article>
		<footer>
			<tiles:insertAttribute name="footer" />
		</footer>
	</div>
</body>
</html>