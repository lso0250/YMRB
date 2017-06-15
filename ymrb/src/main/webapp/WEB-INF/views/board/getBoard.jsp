<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

</head>
<body>





<table class="table" >
	<tr id="content">
	<td>작성자 : ${board.mem_num}</td>
	<td>작성시간: ${board.board_date}</td>
	<td>조회수 : ${board.board_hits}</td>
	</tr>
	<tr>
	<td colspan="10">${board.board_contents}</td>
	</tr>


<tr>
<c:if test="${login==member.mem_num }">
	<td colspan="10" id="selecter">
	<a href = "boardUpdateForm.do?board_num=${board.board_num }"></a>
	<a href="#" onclick="delCheck()">삭제</a>
<script>
		function delCheck(){
			if(confirm("삭제할까요?")){
				alert("삭제되었습니다.");
				document.frm.submit();
			}
		}
	
	</script>

</td>
</c:if>
</tr>
</table>

<a href="getBoardList.do">목록으로</a>
<%-- <a href="boardUpdateForm.do?board_num=${board.board_num }" >수정</a>
<a href="#" onclick="delCheck()">삭제</a>
<form name="frm" action="boardDelete.do">
	<input type="hidden" name="action"	value="del">
	<input type="hidden" name="board_num" value="${board.board_num}">
</form> --%>
</body>
</html>