<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
@import url(https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css);
@import url(https://fonts.googleapis.com/css?family=Lato:300,400,700);

body {
	font-family: 'Lato', sans-serif;
	background: #353535;
	color: #FFF;
}
.jumbotron h1 {
	color: #353535;
}
footer {
  margin-bottom: 0 !important;
  margin-top: 80px;
}
footer p {
  margin: 0;
  padding: 0;
}
span.icon {
	margin: 0 5px;
	color: #D64541;
}
h2 {
	color: #BDC3C7;
  text-transform: uppercase;
  letter-spacing: 1px;
}
.mrng-60-top {
	margin-top: 60px;
}
/* Global Button Styles */
a.animated-button:link, a.animated-button:visited {
	position: relative;
	display: block;
	margin: 30px auto 0;
	padding: 14px 15px;
	color: #fff;
	font-size:14px;
	font-weight: bold;
	text-align: center;
	text-decoration: none;
	text-transform: uppercase;
	overflow: hidden;
	letter-spacing: .08em;
	border-radius: 0;
	text-shadow: 0 0 1px rgba(0, 0, 0, 0.2), 0 1px 0 rgba(0, 0, 0, 0.2);
	-webkit-transition: all 1s ease;
	-moz-transition: all 1s ease;
	-o-transition: all 1s ease;
	transition: all 1s ease;
}
a.animated-button:link:after, a.animated-button:visited:after {
	content: "";
	position: absolute;
	height: 0%;
	left: 50%;
	top: 50%;
	width: 150%;
	z-index: -1;
	-webkit-transition: all 0.75s ease 0s;
	-moz-transition: all 0.75s ease 0s;
	-o-transition: all 0.75s ease 0s;
	transition: all 0.75s ease 0s;
}
a.animated-button:link:hover, a.animated-button:visited:hover {
	color: #FFF;
	text-shadow: none;
}
a.animated-button:link:hover:after, a.animated-button:visited:hover:after {
	height: 450%;
}
a.animated-button:link, a.animated-button:visited {
	position: relative;
	display: block;
	margin: 30px auto 0;
	padding: 14px 15px;
	color: #fff;
	font-size:14px;
	border-radius: 0;
	font-weight: bold;
	text-align: center;
	text-decoration: none;
	text-transform: uppercase;
	overflow: hidden;
	letter-spacing: .08em;
	text-shadow: 0 0 1px rgba(0, 0, 0, 0.2), 0 1px 0 rgba(0, 0, 0, 0.2);
	-webkit-transition: all 1s ease;
	-moz-transition: all 1s ease;
	-o-transition: all 1s ease;
	transition: all 1s ease;
}

/* Victoria Buttons */

a.animated-button.victoria-one {
	border: 2px solid #D24D57;
}
a.animated-button.victoria-one:after {
	background: #D24D57;
	-moz-transform: translateX(-50%) translateY(-50%) rotate(-25deg);
	-ms-transform: translateX(-50%) translateY(-50%) rotate(-25deg);
	-webkit-transform: translateX(-50%) translateY(-50%) rotate(-25deg);
	transform: translateX(-50%) translateY(-50%) rotate(-25deg);
}
a.animated-button.victoria-two {
	border: 2px solid #D24D57;
}
a.animated-button.victoria-two:after {
	background: #D24D57;
	-moz-transform: translateX(-50%) translateY(-50%) rotate(25deg);
	-ms-transform: translateX(-50%) translateY(-50%) rotate(25deg);
	-webkit-transform: translateX(-50%) translateY(-50%) rotate(25deg);
	transform: translateX(-50%) translateY(-50%) rotate(25deg);
}
a.animated-button.victoria-three {
	border: 2px solid #D24D57;
}
a.animated-button.victoria-three:after {
	background: #D24D57;
	opacity: .5;
	-moz-transform: translateX(-50%) translateY(-50%);
	-ms-transform: translateX(-50%) translateY(-50%);
	-webkit-transform: translateX(-50%) translateY(-50%);
	transform: translateX(-50%) translateY(-50%);
}
a.animated-button.victoria-three:hover:after {
	height: 140%;
	opacity: 1;
}
a.animated-button.victoria-four {
	border: 2px solid #D24D57;
}
a.animated-button.victoria-four:after {
	background: #D24D57;
	opacity: .5;
	-moz-transform: translateY(-50%) translateX(-50%) rotate(90deg);
	-ms-transform: translateY(-50%) translateX(-50%) rotate(90deg);
	-webkit-transform: translateY(-50%) translateX(-50%) rotate(90deg);
	transform: translateY(-50%) translateX(-50%) rotate(90deg);
}
a.animated-button.victoria-four:hover:after {
	opacity: 1;
	height: 600% !important;
}




/* Thar Buttons */

a.animated-button.thar-one {
	color: #fff;
	cursor: pointer;
	display: block;
	position: relative;
	border: 2px solid #F7CA18;
	transition: all 0.4s cubic-bezier(0.215, 0.61, 0.355, 1) 0s;
}
a.animated-button.thar-one:hover {
	color: #000 !important;
	background-color: transparent;
	text-shadow: none;
}
a.animated-button.thar-one:hover:before {
	bottom: 0%;
	top: auto;
	height: 100%;
}
a.animated-button.thar-one:before {
	display: block;
	position: absolute;
	left: 0px;
	top: 0px;
	height: 0px;
	width: 100%;
	z-index: -1;
	content: '';
	color: #000 !important;
	background: #F7CA18;
	transition: all 0.4s cubic-bezier(0.215, 0.61, 0.355, 1) 0s;
}
a.animated-button.thar-two {
	color: #fff;
	cursor: pointer;
	display: block;
	position: relative;
	border: 2px solid #F7CA18;
	transition: all 0.4s cubic-bezier(0.215, 0.61, 0.355, 1) 0s;
}
a.animated-button.thar-two:hover {
	color: #000 !important;
	background-color: transparent;
	text-shadow: ntwo;
}
a.animated-button.thar-two:hover:before {
	top: 0%;
	bottom: auto;
	height: 100%;
}
a.animated-button.thar-two:before {
	display: block;
	position: absolute;
	left: 0px;
	bottom: 0px;
	height: 0px;
	width: 100%;
	z-index: -1;
	content: '';
	color: #000 !important;
	background: #F7CA18;
	transition: all 0.4s cubic-bezier(0.215, 0.61, 0.355, 1) 0s;
}
a.animated-button.thar-three {
	color: #fff;
	cursor: pointer;
	display: block;
	position: relative;
	border: 2px solid #F7CA18;
	transition: all 0.4s cubic-bezier(0.42, 0, 0.58, 1);
0s;
}
a.animated-button.thar-three:hover {
	color: #000 !important;
	background-color: transparent;
	text-shadow: nthree;
}
a.animated-button.thar-three:hover:before {
	left: 0%;
	right: auto;
	width: 100%;
}
a.animated-button.thar-three:before {
	display: block;
	position: absolute;
	top: 0px;
	right: 0px;
	height: 100%;
	width: 0px;
	z-index: -1;
	content: '';
	color: #000 !important;
	background: #F7CA18;
	transition: all 0.4s cubic-bezier(0.42, 0, 0.58, 1);
0s;
}
a.animated-button.thar-four {
	color: #fff;
	cursor: pointer;
	display: block;
	position: relative;
	border: 2px solid #F7CA18;
	transition: all 0.4s cubic-bezier(0.42, 0, 0.58, 1);
0s;
}
a.animated-button.thar-four:hover {
	color: #000 !important;
	background-color: transparent;
	text-shadow: nfour;
}
a.animated-button.thar-four:hover:before {
	right: 0%;
	left: auto;
	width: 100%;
}
a.animated-button.thar-four:before {
	display: block;
	position: absolute;
	top: 0px;
	left: 0px;
	height: 100%;
	width: 0px;
	z-index: -1;
	content: '';
	color: #000 !important;
	background: #F7CA18;
	transition: all 0.4s cubic-bezier(0.42, 0, 0.58, 1);
0s;
}
</style>
</head>
<body>
<div class="jumbotron text-center">
  <div class="container">
    
    <h1>관리자 페이지</h1>
    <p style="color:#888;">A collection of animated buttons to spice up your site</p>
    
  </div>
</div>
<div class="container"> 
  <!-- Example row of columns -->
  
  <div class="row">
    <div class="col-md-12 text-center">
      <h2>회원관리</h2>
    </div>
  </div>
  
  <div class="row">
    <div class="col-md-3 col-sm-3 col-xs-6"> <a href="getUserList.do" class="btn btn-sm animated-button victoria-one">회원 조회</a> </div>
    <div class="col-md-3 col-sm-3 col-xs-6"> <a href="#" class="btn btn-sm animated-button victoria-two">Login</a> </div>
    <div class="col-md-3 col-sm-3 col-xs-6"> <a href="#" class="btn btn-sm animated-button victoria-three">Register</a> </div>
    <div class="col-md-3 col-sm-3 col-xs-6"> <a href="#" class="btn btn-sm animated-button victoria-four">Learn more</a> </div>
  </div>
  
  <div class="row">
    <div class="col-md-12 text-center">
      <h2 class="mrng-60-top">도서관리</h2>
    </div>
  </div>
  
  <div class="row">
    <div class="col-md-3 col-sm-3 col-xs-6"> <a href="#" class="btn btn-sm animated-button thar-one">Sign up</a> </div>
    <div class="col-md-3 col-sm-3 col-xs-6"> <a href="#" class="btn btn-sm animated-button thar-two">Login</a> </div>
    <div class="col-md-3 col-sm-3 col-xs-6"> <a href="#" class="btn btn-sm animated-button thar-three">Register</a> </div>
    <div class="col-md-3 col-sm-3 col-xs-6"> <a href="#" class="btn btn-sm animated-button thar-four">Learn more</a> </div>
  </div>
</div>
 
</body>
</html>