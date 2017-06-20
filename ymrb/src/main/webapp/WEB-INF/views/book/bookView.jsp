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
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/reader/css/verticalmenu2.css"
	media="screen">
<style>
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
<script>
	$(function() {
		$("#rent").click(function() {
			var param = $("#rentBox").serialize();
			if (confirm("대여할까요?")) {
				$.getJSON("rentBox.do", param, function(data) {
					if (confirm("대여완료 대여목록으로 갈까요?")){
						location.href="fantasy.do";
					}
					alert("대여가 완료 되었습니다.^^")
				})}
		});
		
		$("#buy").click(function() {
			var param = $("#buyBox").serialize();
			if (confirm("구매할까요?")) {
				$.getJSON("buyBox.do", param, function(data) {
					if (confirm("구매완료 구매목록으로 갈까요?")){
						location.href="fantasy.do";
					}
					alert("구매가 완료 되었습니다.^^")
				})}
		});
		
		$("#cart").click(function() {
			var param = $("#rentBox").serialize();
			if (confirm("장바구니에 담을까요??")) {
				$.getJSON("cartBox.do", param, function(data) {
					if (confirm("담기완료 장바구니로 갈까요?")){
						location.href="fantasy.do";
					}
					alert("담기가 완료 되었습니다.^^")
				})}
		});
		$("#cart2").click(function() {
			var param = $("#buyBox").serialize();
			if (confirm("장바구니에 담을까요??")) {
				$.getJSON("cartBox.do", param, function(data) {
					if (confirm("담기완료 장바구니로 갈까요?")){
						location.href="fantasy.do";
					}
					alert("담기가 완료 되었습니다.^^")
				})}
		});
	})
</script>
</head>
<body>
	<script>
		$(document).ready(function() {
			if ($(".age").text().equals("0")) {
				$(".age").text() == "전체이용가";

			}
			;

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

		<form id="rentBox" name="rentBox" method="post">
			<div class="pricing-table basic" style="width: 400px; height: 350px;">
				<span class="table-head"> 대여 </span> <span class="price"> 권당
					${book.bookRent}원 </span>
				<div>
					<input type="hidden" name="bookNum" value="${book.bookNum}">
					<c:forEach items="${serise}" var="seri">

						<span class="table-row"><input type="checkbox"
							name="chackBox" value="${seri.BOOK_NUM }">${seri.BOOK_TITLE}</span>
					</c:forEach>
				</div>
				<div class="purchase">
					<input type="button" class="buy" id="rent" value="대여"> <input
						type="button" class="buy" id="cart" value="장바구니담기"">
				</div>
			</div>
		</form>



		<form method="post" name="buyBox" id="buyBox">
			<div class="pricing-table standard"
				style="width: 400px; height: 350px;">
				<span class="table-head"> 구매 </span> <span class="price"> 권당
					${book.bookprice }원 </span>

				<div class="chkclass">
					<input type="hidden" name="bookNum" value="${book.bookNum}">
					<c:forEach items="${serise}" var="seri">
						<span class="table-row"><input type="checkbox"
							name="chackBox" value="${seri.BOOK_NUM }">${seri.BOOK_TITLE}</span>
					</c:forEach>

				</div>
				<div class="purchase">
					<input type="button" class="buy" id="buy" value="구입">
					<input type="button" class="buy" id="cart2" value="장바구니담기">
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
			if (confirm("삭제할까요?")) {
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