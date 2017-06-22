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
	작성자<input type="text" name="mem_num" readonly="readonly" value="${login.mem_num }"><br/><!--   -->
	제목  <input type="text" name="board_title" ><br/>
	<textarea name="board_contents"cols="100" rows="20"></textarea><br/>
	<input type="submit" value="저장">
</form> 
</body>
</html>