<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib tagdir="/WEB-INF/tags" prefix="my" %>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<script>
/* pagination 페이지 링크 function */ 
function fn_egov_link_page(pageNo){ 
document.listForm.pageIndex.value = pageNo; 
document.listForm.action = "<c:url value='/buylist.do'/>"; 
   document.listForm.submit(); 
}

</script>
<style>
	div{
	display: block;}
</style>
</head>
<body>
<form name="listForm">
<input type="hidden" name="pageIndex" value="1">
<input type="hidden" name="memNum" value="1">
<input type="hidden" name="buyrent" value="2">
<div class="body" style="width:900px;">
 <div>
             <h2>구매목록</h2>
 </div>
 <br>
 <br>
 <div class="first">
 <div>
 	<table>
 		<tr>
 			<td><a href="buylist.do?memNum=1&buyrent=2">구매</a></td>
 			<td><a href="rentlist.do?memNum=1&buyrent=1">대여</a></td>	
 			<td style="width:auto; text-align:right;">			
 			<input type="text" style="width:200px;height:25px;"placeholder="책 제목 또는 저자명" value="${buyVO.keyword }" name="keyword"> 
 			<input type="submit" value="검색"/>	
 			</td>
 		</tr>
 	</table>
 </div>
	<hr style="width:1150px; float:left;">
 </div>  
 <br> 
 <div class="two">
 <table>
 <tr>
 </tr>
 </table>
</div> 

</div> <div>
		<!-- /.row -->
		<c:forEach var="rent" items="${rentlist}" begin="0" end="9"
			step="1">
			<!-- Page Features -->
				<div class="col-md-3 col-sm-6 hero-feature">
					<div class="thumbnail">
						<img src="./image/${rent.BOOK_IMAGE }" alt=""
							style="width: 225px; height:160px; " />
						<div class="caption">
							<h3>제목${rent.BOOK_TITLE}</h3>
							<p>대여날짜:${rent.RENT_START_DATE}</p>
							<p>종료날짜:${rent.RENT_LAST_DATE}</p>
						</div>
					</div>
			
			</div>
		</c:forEach>
		</div>
		<div></div>
<my:paging paginationInfo="${paginationInfo }"></my:paging>
	<!-- jQuery -->
	<script src="${pageContext.request.contextPath}/css/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="${pageContext.request.contextPath}/css/bootstrap.min.js"></script>
</form>
</body>
</html>