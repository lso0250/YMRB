<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table class="table">
		<tr id="content">
			<td>작성자 : ${pboard.mem_nic}</td>
			<td>작성시간: ${pboard.pboard_date}</td>
			<td>조회수 : ${pboard.pboard_hits}</td>
		</tr>
		<tr>
			<td colspan="10">
				<%-- <c:if test="${UPLOADFILE.FILE_NAME != NULL}"> --%>
					<c:forEach items="${upload}" var="up">
						<img src="./image/${up.FILE_NAME}" style="width: 100%; height: 800px; margin-left: auto;">
						<br>
					</c:forEach>
 				<%-- </c:if> --%>
				${pboard.pboard_contents }
			</td>
		</tr>


		<tr>
			<c:if test="${login.mem_nic==pboard.mem_nic }">
			<td colspan="10" id="selecter">
			<a href="pboardUpdateForm.do?pboard_num=${pboard.pboard_num }">수정</a> 
			<a href="pboardDelete.do?pboard_num=${pboard.pboard_num }" onclick="delCheck()">삭제</a> 
				<script>
					function delCheck() {
						if (confirm("삭제할까요?")) {
							alert("삭제되었습니다.");
							document.frm.submit();
						}
					}
				</script>
			</td>
			</c:if>
		</tr>
	</table>
	<%-- <jsp:include page="../reply/getReplyList.jsp"></jsp:include> --%>
	<a href="getPBoardList.do">목록으로</a>

	<form name="frm" action="pboardDelete.do">
		<input type="hidden" name="action" value="delCheck"> <input
			type="hidden" name="pboard_num" value="${pboard.pboard_num}">
	</form>
</body>
</html>