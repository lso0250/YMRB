<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="my"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script>
	/* pagination 페이지 링크 function */
	function fn_egov_link_page(pageNo) {
		document.listForm.pageIndex.value = pageNo;
		document.listForm.action = "<c:url value='/adminSearch.do'/>";
		document.listForm.submit();
	}
</script>
<script type="text/javascript">
	jQuery.browser = {};
	(function() {
		jQuery.browser.msie = false;
		jQuery.browser.version = 0;
		if (navigator.userAgent.match(/MSIE ([0-9]+)\./)) {
			jQuery.browser.msie = true;
			jQuery.browser.version = RegExp.$1;
		}
	})();
	$(function() {
		$('body').on('hidden.bs.modal', '.modal', function() {
			$(this).removeData('bs.modal');
		});
	});
</script>
</head>
<body>
	<!-- Modal -->
	<div class="modal fade" id="show" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog" style="width: 1200px;">
			<div class="modal-content"></div>
		</div>
	</div>
	관리자페이지 도서전체보기
	<hr>
	<form action="adminSearch.do" name="frm" method="post">
		<select name="key" id="speed">
			<option <c:if test="${key =='저자' }">selected="selected"</c:if>>저자</option>
			<option <c:if test="${key =='제목' }">selected="selected"</c:if>>제목</option>
		</select> <input type="text" name="keyword" value="${keyword }"> <input
			type="submit" value="검색" /><br>
	</form>
	<form name="listForm" method="post">
		<input type="hidden" name="pageIndex"> <input type="hidden"
			name="key" value="${bookVO.key }" /> <input type="hidden"
			name="keyword" value="${bookVO.keyword }" />
		<table>
			<c:forEach var="alstn" items="${getBookList1}">
				<tr>
					<td><a data-toggle="modal" data-target="#modal-testNew"
						role="button" href="bookView.do?bookNum=${alstn.BOOK_NUM}"> <a
							href="bookview.do?bookNum=${alstn.BOOK_NUM }"
							class="btn btn-primary btn-sm" data-toggle="modal"
							data-target="#show"> <img src="./image/${alstn.BOOK_IMAGE }"
								alt="" style="width: 167px; height: 107px;" /></a>
					</a></td>
					<td>
						<p class="photo-name">${alstn.bookContents}</p>
					</td>
				</tr>
			</c:forEach>
		</table>
	</form>

	<my:paging paginationInfo="${paginationInfo }"></my:paging>
</body>
</html>