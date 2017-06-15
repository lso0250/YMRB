<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="./scripts/jquery-3.1.1.min.js"></script>
<script>
var checkID='no';
var checkNIC='no';
var checkPW='no';

function checkId(){
	/* var param = {'mem_id':encodeURIComponent($('#mem_id').val())} */
	var param = {'mem_id':$('#mem_id').val()};
	/*$.getJSON("checkId.do",param,function(data){
		
		if(data){
			$('#checkid').html('<b style="color:green">사용가능 </b>');
			checkID='yes';
		}
		else{
			$('#checkid').html('<b style="color:red">사용불가 </b>');
			checkID='no';
		}
	}) */
	$.ajax({
		url:"checkId.do",
		type:"post",
		data:param,
		dataType:"HTML",
		success:function(data){
			alert(data);
			if(data =='true'){
				$('#checkid').html('<b style="color:green">사용가능 </b>');
				checkID='yes';
			}
			else{
				$('#checkid').html('<b style="color:red">사용불가 </b>');
				checkID='no';
			}
		}
	})
}
function checkNic(){
	/* var param = {'mem_nic':encodeURIComponent($('#mem_nic').val())} */
	var param = {'mem_nic':$('#mem_nic').val()};
	/* $.ajax("checkNic.do",param,function(data){
		if(data){
			$('#checknic').html('<b style="color:green">사용가능 </b>');
			checkNic='yes';
		}
		else{
			$('#checknic').html('<b style="color:red">사용불가 </b>');
			checkNic='no';
		}
	}) */
	$.ajax({
		url:"checkNic.do",
		data:param,
		type:"post",
		dataType:"HTML",
		success:function(data){
			alert(data);
			if(data == 'true'){
				$('#checknic').html('<b style="color:green">사용가능 </b>');
				checkID='yes';
			}
			else{
				$('#checknic').html('<b style="color:red">사용불가 </b>');
				checkID='no';
			}
		}
		
	})
}

function checkPw(){
	
	var pw1 = $('#mem_pw').val();
	var pw2 = $('#mem_pwc').val();
	if(pw1!=pw2){
		$('#checkpw').html('<b style="color:red">사용불가 </b>');
		checkPW='no';
	}else{
		$('#checkpw').html('<b style="color:green">사용가능 </b>');
		checkPW='yes';
	}
}
function memberReg(){
	if(checkID!='no'){
		if(checkNIC!='no'){
			if(checkPW!='no'){
				return true;
			}else{
				alert("비밀번호를 확인해주세요");
				return false;
			}
		}else{
			alert("닉네임을 확인해주세요");
			return false;
		}
	}else{
		alert("아이디를 확인해주세요");
		return false;
	}
}

</script>


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

#contact input[type="text"], #contact input[type="email"],#contact input[type="date"], #contact input[type="tel"], #contact input[type="password"], #contact button[type="submit"] {
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
	border-radius: 5px;
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
	border-radius: 5px;
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
    <div id= "checking">
    	<input placeholder="아이디" name = "mem_id" id="mem_id" type="text" tabindex="1" onchange="checkId();" required autofocus>
    	<span id="checkid">....</span>
    </div>
    </fieldset>
    
    <fieldset>
      <input placeholder="비밀번호" name="mem_pw" id="mem_pw" type="password" tabindex="2" required>
    </fieldset>
    <fieldset>
      <input placeholder="비밀번호 확인" type="password" name="mem_pwc" onkeyup="checkPw()" id="mem_pwc" tabindex="3" required>
      <span id="checkpw"></span>
    </fieldset>
     <fieldset>
      <input placeholder="닉네임" name="mem_nic" id="mem_nic" type="text" onchange="checkNic();" tabindex="4" required>
      <span id="checknic"></span>
    </fieldset>
    <fieldset>
      <input placeholder="휴대전화" name = "mem_phone" type="tel" tabindex="5" required>
    </fieldset>
    <fieldset>
      <input placeholder="e-mail" name = "mem_email"type="email" tabindex="6" required>
    </fieldset>
    <fieldset>
      <input placeholder="출생 년도" name="mem_birth" type="date" tabindex="7" required>
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