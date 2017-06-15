<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title></title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/style22.css">
<style>
body {
	background: #ddd;
}

#container {
	margin-left: 195px;
}

#img1 {
	margin-top: 8px;
	width: 300px;
	height: 300px;
}

.image {
	margin-left: 200px;
	float: left;
}

#ul1 {
	
}

ul li {
	list-style: none;
	color: white;
}

.tdd {
	background-color: #A9A9A9;
	color: #ffffff;
	padding: 10px 5px 10px 5px;
	border: 1px solid #cccccc;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 18px;
	font-weight: normal;
	text-transform: capitalize;
	width: 200px;
}

.tddd {
	padding: 5px 10px 5px 10px;
	color: #3399ff;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 18px;
	border: 1px solid #cccccc;
}

tr:nth-child(2n+1) .tddd {
	background-color: #D3D3D3;
	color: #454545;
}

tr:nth-child(2n) .tddd {
	background-color: #DCDCDC;
	color: #454545;
}

.table {
	margin-left: 550px;
}

.soge {
	width: 800px;
	margin-left: 200px;
	margin-top: 450px;
	color: white;
}

.buy {
	width: 150px;
	height: 50px;
	font-size: 15px;
	border: none;
	border-radius: 4px;
	background-color: #00cc66;
}
</style>

</head>
<body>
	<script>
		$(document).ready(function() {
			if($(".age").text().equals("0")){
				$(".age").text() == "전체이용가";
				
			};
			
			
		});
	</script>
	<br>
	<br>
	<br>
	<br>
	<br>
	<ul id="ul1">
		<li class="image"><img src="./image/${book.bookImage }" id="img1">
		</li>

	</ul>
	<div class="table">
		<table style="width: 460px; height: 300px;">
			<tr>
				<td class="tdd">장르</td>
				<td class="tddd">${book.code_contents}${book.code_contents2 }</td>
			</tr>
			<tr>
				<td class="tdd">제목</td>
				<td class="tddd">${book.bookTitle }</td>
			</tr>

			<tr>
				<td class="tdd">저자 / 출판사 / 출판일</td>
				<td class="tddd">${book.bookWriter }/${book.bookPublisher}/${book.bookPublishDate}</td>
			</tr>
			<tr>
				<td class="tdd">연령 제한</td>
				<c:if test="${book.bookAgeLimit =='0' }">
				<td class="tddd"><span class="age">전체이용가</span></td>
				</c:if>
				<c:if test="${book.bookAgeLimit !='0' }">
				<td class="tddd"><span class="age">${book.bookAgeLimit}세</span></td>
				</c:if>
				
			</tr>
		</table>
	</div>
	<form>
	<input type="submit" value="장바구니">
	</form>
	<div id="container">
	<form action="rentBox.do" method="post">
		
		
			<div class="pricing-table basic" style="width: 400px; height: 350px;">
				<span class="table-head"> 대여 </span> <span class="price"> 권당
					${book.bookRent}원 </span>
				<div>
					<input type="hidden" name="bookNum"value="${book.bookNum}">
					<c:forEach items="${serise}" var="seri">
						
						<span class="table-row"><input type="checkbox"
							name="chackBox" value="${seri.BOOK_NUM }">${seri.BOOK_TITLE}</span>
					</c:forEach>
				</div>


				<div class="purchase">
					<input type="submit" class="buy" value="대여">
				</div>
			</div>
		</form>



<form action="buyBox.do" method="post">
		<div class="pricing-table standard"
			style="width: 400px; height: 350px;">
			<span class="table-head"> 구매 </span> <span class="price"> 권당
				${book.bookprice }원 </span>

			<div class="chkclass">
				<input type="hidden" name="bookNum"value="${book.bookNum}">
				<c:forEach items="${serise}" var="seri">
					<span class="table-row"><input type="checkbox"
						name="chackBox" value="${seri.BOOK_NUM }">${seri.BOOK_TITLE}</span>
				</c:forEach>

			</div>
			<div class="purchase">
				<input type="submit" class="buy" value="구입">
			</div>
		</div>
		</form>
		</div>
	

	
	<div class="soge">
		<p style="color: white; font-size: 20px;">책 소개</p>
		<hr style="width: 800px;">
		<p style="padding: 20px;">${book.bookContents }</p>

	</div>
<form action="bookUpdateForm.do?bookNum=${book.bookNum}" method="post">
<input type="submit" value="수정">
</form>
<input type="button" value="삭제">
 <script>
		     	function delCheck() {
		     		if(confirm("삭제할까요?")) {
						// location.href='DeptControl.do?action=del&departmentId=${dept.departmentId}';
						document.frm.submit();
		     		}
		     	}
		     </script>
<form name="frm" action="TravelControl.do">
	<input type="hidden" name="bookNum" value="${book.bookNum}">
</form>		     
</body>
</html>