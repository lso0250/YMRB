<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
<form action="./pboard/pboardTest.do" method="post" enctype="multipart/form-data">
  <!--   번호<input type="text" name="seq"><br/> -->
	작성<input type="text" name="mem_num"><br/>
	제목<input type="text" name="pboard_title"><br/>
	내용<textarea name="pboard_contents"cols="100" rows="20"></textarea><br/>
	첨부파일<input type="file" name="uploadFile" >
	첨부파일<input type="file" name="uploadFile" >
	첨부파일<input type="file" name="uploadFile" >
	첨부파일<input type="file" name="uploadFile" >
	<br><br>
	<input type="submit" value="저장">
</form>
</body>
</html>