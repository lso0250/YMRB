<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<script src="../scripts/jquery-3.1.1.min.js"></script>
<script src="//code.jquery.com/jquery.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css"
	type="text/css" />
<style>
.table {
	float: left;
}

.button1 {
	display: inline-block;
	border-radius: 4px;
	background-color: #ccccff;
	border: none;
	text-align: center;
	font-size: 20px;
	width: 150px;
	height: 30px;
	transition: all 0.5s;
	cursor: pointer;
	margin: 5px;
}

.button1 span {
	cursor: pointer;
	display: inline-block;
	position: relative;
	transition: 0.5s;
}

.button1 span:after {
	content: '\00bb';
	position: absolute;
	opacity: 0;
	top: 0;
	right: -20px;
	transition: 0.5s;
}

.button1:hover span {
	padding-right: 25px;
}

.button1:hover span:after {
	opacity: 1;
	right: 0;
}

.tdd {
	background-color: #669999;
	color: #ffffff;
	padding: 10px 5px 10px 5px;
	border: 1px solid #cccccc;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 18px;
	font-weight: normal;
	text-transform: capitalize;
	text-align: left;
}

.tddd {
	padding: 5px 10px 5px 10px;
	color: #454545;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 18px;
	border: 1px solid #cccccc;
	vertical-align: middle;
}

tr:nth-child(2n+1) .tddd {
	background-color: #d6dadf;
	color: #454545;
}
</style>
<script>
	$(function() {
		$("#btn").click(function() {

			$("#list").append("<div>");
			$("#list").append($(".select").first().clone());
			$("#list").append("</div>");

			$("#btn2").click(function() {

				$("#list2").append("<div>");
				$("#list2").append($(".table2").first().clone());
				$("#list2").append("</div>");

			});

		});

	});

	function getList() {
		$.getJSON("genrelist.do?codelist=" + $("#select1").val(),
				function(data) {
					$('#select2').empty();
					for (i = 0; i < data.length; i++) {
						var option = $("<option value='"+data[i].CODE_NUM+"'>"
								+ data[i].CODE_CONTENTS + "</option>");
						$('#select2').append(option);
					}
					
				})
	}
</script>
</head>
<body>

	<div class="insert">
		<h2 style="font-size: 30px;">도서 등록</h2>
	</div>
	<br>
	<br>
	<form action="" method="post" enctype="multipart/form-data">
		<table style="width: 1200px; height: 900px;">
			<tr>

				<td class="tdd">분야 선택</td>
				<td class="tddd"><span id="list"> <span class="select">
							<select id="select1" onchange="getList()"
							style="width: 150px; height: 35px;">
								<!-- 1 -->
								<option value="" selected>분야 선택</option>
								<c:forEach items="${genre1}" var="genre">
									<option value="${genre.CODE_NUM }">${genre.CODE_CONTENTS}</option>
								</c:forEach>
						</select> <select id="select2" style="width: 150px; height: 35px;">
								<!-- 1 -->
								<option value="" selected>장르 선택</option>
						</select>
					</span>
				</span>
					<button id="btn" class="button1">
						<span>복수 등록</span>
					</button></td>

			</tr>
			<tr>
				<td class="tdd">도서명</td>
				<td class="tddd"><input type="text" name="bookTitle"
					style="width: 220px; height: 30px;"></td>
			</tr>
			<tr>
				<td class="tdd">저자</td>
				<td class="tddd"><input type="text" name="bookTitle"
					style="width: 220px; height: 30px;"></td>
			</tr>
			<tr>
				<td class="tdd">출판 날짜</td>
				<td class="tddd"><input type="date" name="bookTitle"
					style="width: 220px; height: 30px;"></td>
			</tr>
			<tr>
				<td class="tdd">연령 제한</td>
				<td class="tddd"><select id="select3"
					style="width: 150px; height: 35px;">
						<!-- 1 -->
						<option value="" selected>연령 선택</option>
						<option value="" selected>전체 이용물</option>
						<option value="" selected>12세</option>
						<option value="" selected>15세</option>
						<option value="" selected>19세</option>
				</select></td>
			</tr>
			<tr>
				<td class="tdd">도서 파일</td>
				<td class="tddd"><input type="file" name="uploadFile">
				</td>
			</tr>
			<tr>
				<td class="tdd">타이틀 이미지</td>
				<td class="tddd"><input type="file" name="bookTitle"></td>
			</tr>
			<tr>
				<td class="tdd" rowspan="2">가격</td>
				<td class="tddd">구매 가격 : <input type="text" name="bookTitle"
					style="width: 220px; height: 30px;"></td>

			</tr>
			<tr>
				<td class="tddd">대여 가격 : <input type="text" name="bookTitle"
					style="width: 220px; height: 30px;"></td>

			</tr>
			<tr>
				<td class="tdd">책 소개</td>
				<td class="tddd"><textarea cols="40" rows="5" name="bookTitle"></textarea></td>


			</tr>

			<tr>
				<td class="tdd">저자 소개</td>
				<td class="tddd"><textarea cols="40" rows="5" name="bookTitle"></textarea></td>
			</tr>
			<tr>
				<td class="tdd">시리즈 등록</td>



				<td class="tddd"><span id="list2"> <span class="table2">
							도서명 : <input type="text" name="bookTitle" style="height: 25px;">

							출판 날짜 : <input type="date" name="bookTitle" style="height: 25px;">
							도서 파일 : <input type="file" name="bookTitle" name="uploadFile">
					</span>
				</span>
					<button id="btn2" class="button1">
						<span>시리즈 등록</span>
					</button> <br></td>
			</tr>
		</table>
		<input type="submit" value="도서등록" class="button1" />
	</form>
</body>
</html>