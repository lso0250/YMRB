<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"href="https://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css"></link>
<link rel="stylesheet" type="text/css"href="https://cdn.datatables.net/buttons/1.3.1/css/buttons.dataTables.min.css"></link>
<link rel="stylesheet" type="text/css"href="https://cdn.datatables.net/select/1.2.2/css/select.dataTables.min.css"></link>
<script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.3.1/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/select/1.2.2/js/dataTables.select.min.js"></script>

<script>

var editor;
$(function(){
	$('#example').DataTable( {
		
	});	
});
function getUser(id){
	$.get("${pageContext.request.contextPath}/updateAForm.do?mem_id="+id, function(){
		location.href=""
		$("#getUser").modal();
	});
}

</script>
</head>
<body>

<table id="example" class="display" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th>번호</th>
                <th>아이디</th>
                <th>닉네임</th>
                <th>이메일</th>
                <th>전화번호</th>
                <th></th>
            </tr>
        </thead>

        <c:forEach items="${list}" var="mem" varStatus="status">
        <tr>
        	<td>${mem.MEM_NUM }</td>
        	<td>${mem.MEM_ID }</td>
        	<td>${mem.MEM_NIC }</td>
        	<td>${mem.MEM_EMAIL }</td>
        	<td>${mem.MEM_PHONE }</td>
        	<td>
        		<%-- <a href="updateAForm.do?mem_id=${mem.MEM_ID }" "data-toggle="modal" data-target="#getUser"> </a>--%>
        		<input type="button"onclick="getUser(${mem.MEM_ID })" value="수정"/>

        		<input type="button" value="삭제"/>
        	</td>
		</tr>
		</c:forEach>
    </table>
    
<div id="getUser" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="테스트정보 등록" aria-describedby="테스트 모달">
    <div class="modal-dialog" style="width:400px;">
        <div class="modal-content">
        </div>
    </div>
</div>


</body>
</html>