<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
�Խñ� ����
<form action="boardUpdate.do" method="post">
	<input type="hidden" name="board_num" value="${board.board_num }"/>
	����<input type="text" name="board_title"  value="${board.board_title}"><br/>
	����<textarea name="board_contents" cols="50" rows="5">${board.board_contents}</textarea>
	<input type="submit" value="����">
</form> 
</body>
</html>