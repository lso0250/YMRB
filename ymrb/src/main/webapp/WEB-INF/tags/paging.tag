<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="paginationInfo" required="true" type="com.yedam.ymrb.util.PaginationInfo"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
#page{
color:white;
font-style:italic;
font-size:15px;
font-weight: bold;
text-decoration:none;
margin: 3px;
}
#page:link{

}
#page:visited{
}
#page:hover{

font-size:18px;
font-weight: 300;
}
#page:active{
}
</style>
<center>
<c:forEach begin="${paginationInfo.firstPageNoOnPageList}" end="${paginationInfo.lastPageNoOnPageList}" var="p">
	<a href="#" id="page" onclick="fn_egov_link_page(${p})">${p}</a>
</c:forEach></center>
