<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"href="https://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css"></link>
<link rel="stylesheet" type="text/css"href="https://cdn.datatables.net/buttons/1.3.1/css/buttons.dataTables.min.css"></link>
<link rel="stylesheet" type="text/css"href="https://cdn.datatables.net/select/1.2.2/css/select.dataTables.min.css"></link>
<script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.3.1/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/select/1.2.2/js/dataTables.select.min.js"></script>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/css/bootstrap.min.js"></script>
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css" media="all" />

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
	width:100%;
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
<script>
var editor;
$(function(){
	$('#example').DataTable( {
	});	
	
});

function userInfo(mem_id){
	$('#getUser').modal();
	
	$.get( '${pageContext.request.contextPath}/updateAForm.do', "mem_id="+mem_id, 'json' /* xml, text, script, html */)
	.done(function(data) {
			$('[name="mem_id"]').val(data.mem_id);
			$('[name="mem_nic"]').val(data.mem_nic);
			$('[name="mem_phone"]').val(data.mem_phone);
			$('[name="mem_email"]').val(data.mem_email);
		})
}

function userDel(mem_id){
	if(confirm('삭제하시겠습니까?')){
		location.href="${pageContext.request.contextPath}/deleteContent.do?contentCode="+no;
	}
}


</script>
</head>
<body>

<table id="example" class="display" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th>번호</th>
                <th>아이디</th>
                <th>닉네임</th>
                <th>이메일</th>
                <th>전화번호</th>
                <th></th>
            </tr>
        </thead>

        <c:forEach items="${list}" var="mem" varStatus="status">
        <tr>
        	<td>${mem.MEM_NUM }</td>
        	<td>${mem.MEM_ID }</td>
        	<td>${mem.MEM_NIC }</td>
        	<td>${mem.MEM_EMAIL }</td>
        	<td>${mem.MEM_PHONE }</td>
        	<td>
        		<%-- <a href="updateAForm.do?mem_id=${mem.MEM_ID }" "data-toggle="modal" data-target="#getUser"> </a>--%>
        		<input type="button" value="수정"  onclick="userInfo('${mem.MEM_ID}');"/>
        		<input type="button" value="삭제" onclick="userDel('${mem.MEM_ID}');"/>
        	</td>
		</tr>
		</c:forEach>
    </table>
    
<div id="getUser" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="테스트정보 등록" aria-describedby="테스트 모달">
    <div class="modal-dialog" style="width:400px;">
        <div class="modal-content">
        
        
        
			<form id="contact" action="" method="post">
			    <h3>회원 가입</h3>
			    <h4> </h4>
    
    			<fieldset>
   					<div id= "checking">
    					<input placeholder="아이디" value="${user.mem_id }" name = "mem_id" id="mem_id" type="text" tabindex="1" onchange="checkId();" required autofocus>
    					<span id="checkid" >....</span>
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
      				<input placeholder="닉네임"  value="${user.mem_nic }"  name="mem_nic" id="mem_nic" type="text" onchange="checkNic();" tabindex="4" required>
      				<span id="checknic"></span>
    			</fieldset>
    			<fieldset>
      <input placeholder="휴대전화"  value="${user.mem_phone }"  name = "mem_phone" type="tel" tabindex="5" required>
    </fieldset>
    <fieldset>
      <input placeholder="e-mail" value="${user.mem_email }" name = "mem_email"type="email" tabindex="6" required>
    </fieldset>
    <fieldset>
      <button name="submit" type="submit" id="contact-submit" data-submit="...Sending">가입하기</button>
    </fieldset>
  </form>
  
  
  
  
        </div>
    </div>
</div>


</body>
</html>