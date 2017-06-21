<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/datatable.css"> 
<script
	src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
<script>
	$(document).ready(function() {
		$('#example').DataTable();
	});
</script>
<title>Insert title here</title>
</head>
<body>
	<table id="example" class="table table-striped table-bordered"
		cellspacing="0" width="100%">
		<thead>
			<tr>
				<td>No.</td>
				<td>내용.</td>
				<td>Cash.</td>
				<td>Point.</td>
				<td>사용날짜</td>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="cashList" items="${cashList}">
			<tr>
			<td>${cashList.CASH_NUM }</td>
			<td>${cashList.CASH_CONTENTS }</td>
			<td>${cashList.POINT }</td>
			<td>${cashList.MONEY }</td>
			<td>${cashList.CASH_DATE }</td>
		</c:forEach>
		</tbody>
	</table>
</body>
</html>