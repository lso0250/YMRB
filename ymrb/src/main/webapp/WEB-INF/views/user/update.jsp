<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


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
	border-radius: 5px;
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

.eee {
	font-family: NanumGothic-Bold;
	font-weight:300;
	font-size: 12px;
	line-height:30px;
	color:#777;
	
}

.container1 {
	max-width:350px;
	width:100%;
	margin:0 auto;
	position:relative;
}

#contact input[type="text"], #contact input[type="email"],#contact input[type="date"], #contact input[type="tel"], #contact input[type="password"], #contact button[type="submit"] { font:400 12px/16px NanumGothic, Helvetica, Arial, sans-serif; }

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
.checking{
	width:90%;
	border:1px solid #CCC;
	background:#FFF;
	margin:0 0 5px;
	padding:10px;
}
fieldset {
	border: medium none !important;
	margin: 0 0 10px;
	min-width: 100%;
	padding: 0;
	width: 100%;
}

#contact input[type="text"], #contact input[type="email"], #contact input[type="date"], #contact input[type="tel"], #contact input[type="password"] {
	width:85%;
	border:1px solid #CCC;
	background:#FFF;
	margin:0 0 5px;
	padding:10px;
}

#contact input[type="text"]:hover, #contact input[type="email"]:hover,#contact input[type="date"]:hover, #contact input[type="tel"]:hover, #contact input[type="password"]:hover {
	-webkit-transition:border-color 0.3s ease-in-out;
	-moz-transition:border-color 0.3s ease-in-out;
	transition:border-color 0.3s ease-in-out;
	border:1px solid #AAA;
}



#contact button[type="submit"] {
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
section{
  display: flex;
  flex-direction: row;
  padding: 0.5em;
}

h1{
  font-weight: 400;
  font-size: 2em;
  cursor: default;
  margin: 0 0 .5em 0;
}

input[type='checkbox']{ height: 0; width: 0; }

input[type='checkbox'] + label{
  position: relative;
  display: flex;
  margin: 5px;
  align-items: center;
  color: #9e9e9e;
  transition: color 250ms cubic-bezier(.4,.0,.23,1);
}
input[type='checkbox'] + label > ins{
  position: absolute;
  display: block;
  bottom: 0;
  left: 2em;
  height: 0;
  width: 100%;
  overflow: hidden;
  text-decoration: none;
  transition: height 300ms cubic-bezier(.4,.0,.23,1);
}
input[type='checkbox'] + label > ins > i{
  position: absolute;
  bottom: 0;
  font-style: normal;
  color: #0282da;
}
input[type='checkbox'] + label > span{
  display: flex;
  justify-content: center;
  align-items: center;
  margin-right: 1em;
  width: 1em;
  height: 1em;
  background: transparent;
  border: 2px solid #9E9E9E;
  border-radius: 2px;
  cursor: pointer;  
  transition: all 250ms cubic-bezier(.4,.0,.23,1);
}

/* input[type='checkbox'] + label:hover, input[type='checkbox']:focus + label{
  color: #fff;
} */
 input[type='checkbox'] + label:hover > span, input[type='checkbox']:focus + label > span{
  background: rgba(255,255,255,.1);
} 
input[type='checkbox']:checked + label > ins{ height: 100%; }

input[type='checkbox']:checked + label > span{
  border: .5em solid #0282da;
  animation: shrink-bounce 200ms cubic-bezier(.4,.0,.23,1);
}
input[type='checkbox']:checked + label > span:before{
  content: "";
  position: absolute;
  top: .6em;
  left: .2em;
  border-right: 3px solid transparent;
  border-bottom: 3px solid transparent;
  transform: rotate(45deg);
  transform-origin: 0% 100%;
  animation: checkbox-check 125ms 250ms cubic-bezier(.4,.0,.23,1) forwards;
}

@keyframes shrink-bounce{
  0%{
    transform: scale(1);
  }
  33%{    
    transform: scale(.85);
  }
  100%{
    transform: scale(1);    
  }
}

</style>
</head>
<body class="eee">
<div class="container1">  
  <form id="contact" action="" method="post">
    <h3>회원 가입</h3>
    <h4> </h4>

    <fieldset>
      <input placeholder="비밀번호" name="mem_pw" id="mem_pw" type="password" tabindex="2" required>
    </fieldset>
    <fieldset>
      <input placeholder="비밀번호 확인" type="password" name="mem_pwc" onkeyup="checkPw()" id="mem_pwc" tabindex="3" required>
      <span id="checkpw">....</span>
    </fieldset>
    <fieldset>
    	<input placeholder="휴대전화" type="tel" name="mem_phone" value="${user.mem_phone}">
    </fieldset>
    <fieldset>
      	<input placeholder="이메일" type="email" name="mem_email" value="${user.mem_email}">
    </fieldset>

    <label>선호장르</label>
    <fieldset>
    <section>
      <input id='one' name="mem_like" type='checkbox' value="1"/>
  		<label for='one'>
    		<span></span>
    		장르1
    		<ins><i>장르1</i></ins>
  		</label>
  
  	  <input id='two' name="mem_like" type='checkbox' value="2"/>
  		<label for='two'>
    		<span></span>
    		장르2
    		<ins><i>장르2</i></ins>
  		</label>
    <input id='three' name="mem_like" type='checkbox' value="3" />
  		<label for='three'>
    		<span></span>
    		장르3
    		<ins><i>장르3</i></ins>
 		</label>
  
  		<input id='four' name="mem_like" type='checkbox' value="4" />
  		<label for='four'>
   		<span></span>
    	장르4
    	<ins><i>장르4</i></ins>
  		</label>
  </section>
    </fieldset>
    
    <fieldset>
      <button name="submit" type="submit" id="contact-submit" data-submit="...Sending">가입하기</button>
    </fieldset>
  </form>
 
  
</div>
</body>
</html>