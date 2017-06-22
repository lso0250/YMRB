<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css">

<script	src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>

<script>
	$(function() {
		$("#pboardListTable").DataTable({
			"order" : [[3,"desc"]]		
		});
	});
</script>
</head>
<body>
	<table id="pboardListTable" >
		<thead>
			<tr>
				<th>글번호&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
				<th>제목&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
				<th>작성자&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
				<th>작성일자&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
				<th>조회수</th>
			</tr>
		</thead>
		<tbody>
 			 <c:forEach items="${pboardList}" var="pboard">
 				<tr>
 					<td>${pboard.pboard_num }</td>
					<td><a href="getPBoard.do?pboard_num=${pboard.pboard_num }">${pboard.pboard_title }</a></td>
					<td>${pboard.mem_nic }</td> 
					<td>${pboard.pboard_date } </td>
					<td>${pboard.pboard_hits }</td> 
				</tr> 
			 </c:forEach> 
		</tbody>
	</table>
	<a href="pboardInsert.do">등록</a>
</body>
</html>