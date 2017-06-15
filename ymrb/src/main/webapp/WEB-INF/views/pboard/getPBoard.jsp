<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>





<table class="table" >
	<tr id="content">
	<td>작성자 : ${pboard.mem_num}</td>
	<td>작성시간: ${pboard.pboard_date}</td>
	<td>조회수 : ${pboard.pboard_hits}</td>
	</tr>
	<tr>
	<td colspan="10">
	
	<img src="./pboardimg/${pboard.attachFilename}"></td>
	</tr>


<tr>

	<td colspan="10" id="selecter">
<%-- 	<a href = "boardUpdateForm.do?board_num=${pboard.pboard_num }">수정</a>
	<a href="#" onclick="delCheck()">삭제</a> --%>
<script>
		function delCheck(){
			if(confirm("삭제할까요?")){
				alert("삭제되었습니다.");
				document.frm.submit();
			}
		}
	
	</script>

</td>

</tr>
</table>
<%-- 첨부파일: <a href="FileDown.do?pboard_num=${pboard.pboard_num}">${pboard.attachFilename }</a> --%>
<a href="getPBoardList.do">목록으로</a>
<a href="pboardUpdateForm.do?pboard_num=${pboard.pboard_num }" >수정</a>
<a href="#" onclick="delCheck()">삭제</a>
<form name="frm" action="pboardDelete.do">
	<input type="hidden" name="action"	value="del">
	<input type="hidden" name="pboard_num" value="${pboard.pboard_num}">
</form>
</body>
</html>