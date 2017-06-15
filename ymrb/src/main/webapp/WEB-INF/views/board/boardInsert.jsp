<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>

</head>
<body>
게시글 쓰기
<form action="./board/boardTest.do" method="post">
  <!--   번호<input type="text" name="seq"><br/> -->
	작성자<input type="text" name="mem_num"><br/>
	제목<input type="text" name="board_title"><br/>
	내용<textarea name="board_contents"cols="50" rows="5"></textarea><br/>
	<input type="submit" value="저장">
</form> 
</body>
</html>