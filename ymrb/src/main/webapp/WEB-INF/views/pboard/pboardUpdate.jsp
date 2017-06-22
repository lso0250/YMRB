<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="pboardUpdate.do" method="post">
	<input type="hidden" name="pboard_num" value="${pboard.pboard_num }"/>
	제목<input type="text" name="pboard_title"  value="${pboard.pboard_title}"><br/>
	　　<textarea name="pboard_contents" cols="100" rows="20">${pboard.pboard_contents}</textarea><br>
	　　<input type="submit" value="저장">
</form> 
</body>
</html>