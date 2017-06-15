<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<title>Insert title here</title>
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


* {
	/* border-radius: 5px; */
	margin:0;
	padding:0;
	box-sizing:border-box;
	-webkit-box-sizing:border-box;
	-moz-box-sizing:border-box;
	-webkit-font-smoothing:antialiased;
	-moz-font-smoothing:antialiased;
	-o-font-smoothing:antialiased;
	font-smoothing:antialiased;
	text-rendering:optimizeLegibility;
}
a{
margin:5px;
float:right;
font-size:10px;
text-decoration:none;
color:#777;
}
a:HOVER{
	color:#0282da;
}

body {
	font-family:"NanumGothic-Bold", Helvetica, Arial, sans-serif;
	font-weight:300;
	font-size: 12px;
/* 	line-height:30px; */
	color:#777;
	
}



.container1 {
	max-width:350px;
	width:100%;
	margin:0 auto;
	position:relative;
}

#contact input[type="text"], #contact input[type="password"], #contact textarea, #contact button[type="submit"] {
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

#contact input[type="text"],  #contact input[type="password"] {
	border-radius: 5px;
	width:100%;
	border:1px solid #CCC;
	background:#FFF;
	margin:0 0 5px;
	padding:10px;
}

#contact input[type="text"]:hover, #contact input[type="password"]:hover{
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

#contact input:focus, #contact textarea:focus {
	outline:0;
	border:1px solid #999;
}
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

</style>
</head>
<body>
<div class="container1">  

<div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-label="Close" aria-hidden="true">×</button>
</div>

                    
  <form id="contact" action="${pageContext.request.contextPath}/login.do" method="post">
  <div class="modal-body">
    <h3> </h3>
    <h4> </h4>
    <fieldset>
      <input placeholder="아이디" name="mem_id" type="text" tabindex="1" required autofocus>
    </fieldset>
    <fieldset>
      <input placeholder="비밀번호" name="mem_pw"type="password" tabindex="2" required>
    </fieldset>
    <fieldset >
    <a href="findPwForm.do" class="">비밀번호 찾기</a>
    <a href="findIdForm.do" class="">아이디 찾기</a>
    </fieldset>
 </div>
  <div class="modal-footer"> 
    <fieldset>
      <button name="submit" type="submit" id="contact-submit" data-submit="...Sending">로그인</button>
    </fieldset>
   </div>
  </form>
 
  
</div>
</body>
</html>
