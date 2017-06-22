<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	$(document).ready(function(){
		$("#add").click(function(){
			$("#addfile").append("<span class='cancel'>&nbsp;X&nbsp;"
			+"</span><input type='file' name='uploadFile'/><br>");
			$(".cancel").click(function(){
				$(this).next().next().remove();
				$(this).next().remove();
				$(this).remove();
			});
		});
	});
</script>
</head>
<body>
<form action="./pboard/pboardTest.do" method="post" enctype="multipart/form-data">
  <!--   번호<input type="text" name="seq"><br/> -->
	
	작성자<input type="text" name="mem_num" value="${login.mem_num }"><br/>
	제목<input type="text" name="pboard_title"><br/>
	<textarea name="pboard_contents"cols="100" rows="20"></textarea><br/>
	<table>
	<!-- 첨부파일<input type="file"  name="uploadFile" > -->
	<tr>
	<td id="addfile"><span class="cancel"></span>&nbsp;&nbsp;<input type="file" name="uploadFile"/><br></td>
	<td><input type="button" id="add" value="첨부파일추가"><br/></td>
	</tr>
	</table>
	<input type="submit" value="저장">	
</form>
</body>
</html>