<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
게시글 수정
<form action="boardUpdate.do" method="post">
	<input type="hidden" name="board_num" value="${board.board_num }"/>
	제목<input type="text" name="board_title"  value="${board.board_title}"><br/>
	내용<textarea name="board_contents" cols="50" rows="5">${board.board_contents}</textarea>
	<input type="submit" value="저장">
</form> 
</body>
</html>