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
	<link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/css/heroic-features.css" rel="stylesheet">
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/css/images/favicon.ico?cb=1" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css" media="all" />
	<script src="${pageContext.request.contextPath}/css/jquery-3.2.1.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="${pageContext.request.contextPath}/css/jquery-ui-1.8.5.custom.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="${pageContext.request.contextPath}/css/jquery.easing.1.3.js" type="text/javascript" charset="utf-8"></script>
	<script src="${pageContext.request.contextPath}/css/bootstrap.min.js"></script>
<style>
@font-face{
font-family:'NanumGothic';
src:url(font/NanumGothic-Regular.ttf) format('truetype')
}
@font-face{
font-family:'NanumGothic-Bold';
src:url(font/NanumGothic-Bold.ttf) format('truetype')
}

#find{
margin:5px;
float:right;
font-size:10px;
text-decoration:none;
color:#777;
}
#find:HOVER{
	color:#0282da;
}
.container1 {
	max-width:350px;
	width:100%;
	margin:0 auto;
	position:relative;
}
#contact input[type="text"], #contact input[type="password"], #contact input[type="email"], #contact button[type="submit"] {
	font:400 12px/16px NanumGothic, Helvetica, Arial, sans-serif; 
 }
#contact {
	background:#F9F9F9;
	padding:25px;
}
#contact h3 {
	color: #0282da;
	display: block;
	font-size: 30px;
	font-weight: 400;
}
#contact h4 {
	margin:5px 0 15px;
	display:block;
	font-size:13px;
}
fieldset {
	border: medium none !important;
	margin: 0 0 10px;
	min-width: 100%;
	padding: 0;
	width: 100%;
}
#contact input[type="text"],  #contact input[type="password"], #contact input[type="email"]{
	border-radius: 5px;
	width:100%;
	border:1px solid #CCC;
	background:#FFF;
	margin:0 0 5px;
	padding:10px;
}
#contact input[type="text"]:hover, #contact input[type="password"]:hover,#contact input[type="email"]:hover{
	-webkit-transition:border-color 0.3s ease-in-out;
	-moz-transition:border-color 0.3s ease-in-out;
	transition:border-color 0.3s ease-in-out;
	border:1px solid #AAA;
}
#contact button[type="submit"] {
	border-radius: 5px;
	cursor:pointer;
	width:100%;
	border:none;
	background:#0282da;
	color:#FFF;
	margin:0 0 5px;
	padding:10px;
	font-size:15px;
}
#contact button[type="submit"]:hover {
	background:#09C;
	-webkit-transition:background 0.3s ease-in-out;
	-moz-transition:background 0.3s ease-in-out;
	transition:background-color 0.3s ease-in-out;
}
#contact button[type="submit"]:active { box-shadow:inset 0 1px 3px rgba(0, 0, 0, 0.5); }
::-webkit-input-placeholder {
 color:#888;
}
:-moz-placeholder {
 color:#888;
}
::-moz-placeholder {
 color:#888;
}
:-ms-input-placeholder {
 color:#888;
}
#l1{
margin-left: 100px;}
</style>
<script>
function login(){
	var param = {"mem_id":$('#mem_id').val(),"mem_pw":$('#mem_pw').val()};
	$.ajax({
		url:"login.do",
		type:"post",
		data:param,
		dataType:"HTML",
		success:function(data){
			console.log(data);
			if(data=='succ'){
			location.reload();
			}
			else if(data=='master'){
				location.href='master.do';
			}else{
				alert("로그인 실패");
			}
		}
	})
}
function logout(){
	$.ajax({
		url:"logout.do",
		success:function(data){
			console.log(data);
			if(data=='succ'){
				location.reload();
			}
		}
	})
}
function loginForm(){
	$('#loginForm').modal();
}

function findId(){
	$('#loginForm').modal("hide");
	$('#findId').modal();
}
function findIdResult(){
	var param = {"mem_email":$('#mem_email').val()};
	$.ajax({
		url:"findId.do",
		type:"post",
		data:param,
		success:function(data){
			console.log(data);
			if(data =='fail'){
				alert("찾기 실패");
			}else{ 
				$('#findId').modal("hide");
				$('#findIdResult').modal();
				document.getElementById('idResult').innerHTML = data;

			
			}
		}
	}) 
}
function findPw(){
	$('#loginForm').modal("hide");
	$('#findPw').modal();
}

function findPwResult(){
	var param = {"mem_email":$('#mem_email1').val(),"mem_id":$('#mem_id1').val()};
	alert(param.mem_email);
	$.ajax({
		url:"findPw.do",
		type:"post",
		data:param,
		success:function(data){
			console.log(data);
			if(!data){
				alert("찾기 실패");
			}else{ 
				$('#findPw').modal("hide");
				$('#findPwResult').modal();
			}
		}
	}) 
}
</script>
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
							<li><a href="getPBoardList.do"> &nbsp;&nbsp;연재</a></li>
							<c:if test="${login.mem_id == null }">
								<li><a  href="#" onclick="loginForm();" > &nbsp;&nbsp;로그인 </a></li>						
								<li><a href="userInsert.do" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal">
  								Launch demo modal
								</a></li>
							</c:if>		
							<c:if test="${login.mem_id != null }">
								<li id="l1"><a href="comic.do"> &nbsp;&nbsp;&nbsp;&nbsp;${login.mem_nic}님- 보유 포인트 : ${login.mem_num} </a></li>
								<li><a href="#" onclick="logout();" > &nbsp;&nbsp;로그아웃  </a></li>
								<li><a href="comic.do"> &nbsp;&nbsp;마이페이지</a></li>
								<c:if test="${login.mem_id == 'admin' }">
									<li><a href="cart1.do"> &nbsp;&nbsp;장바구니</a></li>
								</c:if>
							</c:if>
					</div>
					<!-- /.navbar-collapse -->
				</div>
				<!-- /.container -->
			</nav>
		</header>
		<br><br><br><br>
		<!-- Modal1 Login Modal -->
		<div class="modal fade" id="loginForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  			<div class="modal-dialog" style="width:350px;">
    			<div class="modal-content">
    				<div class="modal-header">
    					<button type="button" class="close" data-dismiss="modal" aria-label="Close" aria-hidden="true">×</button>
					</div>
  					<form id="contact" method="post">
  						<div class="modal-body">
   							<h3> </h3>
    						<h4> </h4>
    						<fieldset>
      							<input placeholder="아이디" id="mem_id" name="mem_id" type="text" tabindex="1" required autofocus>
   							</fieldset>
    						<fieldset>
      							<input placeholder="비밀번호" id="mem_pw" name="mem_pw"type="password" tabindex="2" required>
    						</fieldset>
    						<fieldset >
    							<a id = "find" href="#" onclick="findPw();" class="">비밀번호 찾기</a>
    							<a id = "find" href="#" onclick="findId();" class="">아이디 찾기</a>
    						</fieldset>
 					</div>
  					<div class="modal-footer"> 
    					<fieldset>
      						<button  type="submit" onclick="login();" id="contact-submit" data-submit="...Sending">로그인</button>
    					</fieldset>
   					</div>
  				</form>
    			</div>
  			</div>
		</div>

		<!-- Modal2 Find ID Modal -->
		<div class="modal fade" id="findId" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  			<div class="modal-dialog" style="width:350px;">
    			<div class="modal-content">
    				<div class="modal-header">
    					<button type="button" class="close" data-dismiss="modal" aria-label="Close" aria-hidden="true">×</button>
					</div>
  					<form id="contact"  method="post">
  						<div class="modal-body">
   							<h3> </h3>
    						<h4> </h4>
    						
    						<fieldset>
      							<input placeholder="email" id = "mem_email" name="mem_email" type="email" tabindex="1" required autofocus>
    						</fieldset>
    						 
 					</div>
  					<div class="modal-footer"> 
    					
    					<fieldset>
      						<input onclick="findIdResult();" type="button" id="contact-submit" data-submit="...Sending" value="아이디 찾기"></input>
    					</fieldset>
   					</div>
  				</form>
    			</div>
  			</div>
		</div>
		
		<!-- Modal3 Find Password Modal -->
		<div class="modal fade" id="findPw" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  			<div class="modal-dialog" style="width:350px;">
    			<div class="modal-content">
    				<div class="modal-header">
    					<button type="button" class="close" data-dismiss="modal" aria-label="Close" aria-hidden="true">×</button>
					</div>
  					<form id="contact" method="post">
  						<div class="modal-body">
   							<h3> </h3>
    						<h4> </h4>
    						<fieldset>
      							<input placeholder="아이디" type="text" id="mem_id1" name= "mem_id" tabindex="1" required autofocus>
   							</fieldset>
    						<fieldset>
      							<input placeholder="email" id="mem_email1" name="mem_email" type="email" tabindex="1" required autofocus>
    						</fieldset>
 					</div>
  					<div class="modal-footer"> 
    					<fieldset>
      						<button onclick="findPwResult();" type="button" id="contact-submit" data-submit="...Sending">비밀번호 찾기</button>
    					</fieldset>
   					</div>
  				</form>
    			</div>
  			</div>
		</div>
		
		<!-- Modal4 Find ID result Modal -->
		<div class="modal fade" id="findIdResult" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  			<div class="modal-dialog" style="width:350px;">
    			<div class="modal-content">
    				<div class="modal-header">
    					<button type="button" class="close" data-dismiss="modal" aria-label="Close" aria-hidden="true">×</button>
					</div>
  					<form id="contact" method="post">
  						<div class="modal-body">
   							<h3> </h3>
    						<h4> </h4>
						    <fieldset>
      							<label>회원님의 아이디는 </label>
      							<span id="idResult" style="color:blue; font-size:20px"></span>
						    </fieldset>
    						<fieldset>
      							<button name="submit" type="submit" id="contact-submit" data-submit="...Sending">로그인</button>
    						</fieldset>
    						
 						</div>
  					<div class="modal-footer"> 
    					<fieldset>
      						<a href="#" onclick="findPw">비밀번호 찾기</a>
    					</fieldset>
   					</div>
  				</form>
    			</div>
  			</div>
		</div>
		
		<!-- Modal5 Find PW result Modal -->
		<div class="modal fade" id="findPwResult" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  			<div class="modal-dialog" style="width:350px;">
    			<div class="modal-content">
    				<div class="modal-header">
    					<button type="button" class="close" data-dismiss="modal" aria-label="Close" aria-hidden="true">×</button>
					</div>
  					<form id="contact" method="post">
  						<div class="modal-body">
   							<h3> </h3>
    						<h4> </h4>
    						<fieldset>
      							<label>회원님의 이메일로 임시 비밀번호를 발급하였습니다.</label>
    						</fieldset>
    
 						</div>
  					<div class="modal-footer"> 
    					<fieldset>
      						<a href="#" onclick="findPw">비밀번호 찾기</a>
    					</fieldset>
   					</div>
  				</form>
    			</div>
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