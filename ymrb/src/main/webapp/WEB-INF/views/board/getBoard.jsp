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
	<td>�ۼ��� : ${board.mem_num}</td>
	<td>�ۼ��ð�: ${board.board_date}</td>
	<td>��ȸ�� : ${board.board_hits}</td>
	</tr>
	<tr>
	<td colspan="10">${board.board_contents}</td>
	</tr>


<tr>
<c:if test="${login==member.mem_num }">
	<td colspan="10" id="selecter">
	<a href = "boardUpdateForm.do?board_num=${board.board_num }"></a>
	<a href="#" onclick="delCheck()">����</a>
<script>
		function delCheck(){
			if(confirm("�����ұ��?")){
				alert("�����Ǿ����ϴ�.");
				document.frm.submit();
			}
		}
	
	</script>

</td>
</c:if>
</tr>
</table>

<a href="getBoardList.do">�������</a>
<%-- <a href="boardUpdateForm.do?board_num=${board.board_num }" >����</a>
<a href="#" onclick="delCheck()">����</a>
<form name="frm" action="boardDelete.do">
	<input type="hidden" name="action"	value="del">
	<input type="hidden" name="board_num" value="${board.board_num}">
</form> --%>
</body>
</html>