<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<script src="./scripts/jquery-3.1.1.min.js"></script>


<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

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
	background-color: #A9A9A9;
	color: #ffffff;
	padding: 10px 5px 10px 5px;
	border: 1px solid #cccccc;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 18px;
	font-weight: normal;
	text-transform: capitalize;
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
</style>
<script>
	$(function() {
		$("#btn2").click(function(event) {
			event.preventDefault();
			$("#list2").append("<div>");
			$("#list2").append($(".table2").first().clone());
			$("#list2").append("</div>");

		});
	})

	$(function() {

		$("#btn").click(function(event) {
			event.preventDefault();
			
			$("#list").append("<div>");
			$("#list").append($(".select").first().clone());
			$("#list").append("</div>");

		});

		$("#list").on("change", ".select1", getList);

	});

	function getList() {
		console.log($(this))
		var se = $(this).next();
		console.log(se);
		$.getJSON("genrelist.do?codelist=" + $(this).val(), function(data) {
						
			se.empty();
			for (i = 0; i < data.length; i++) {
				var option = $("<option value='"+data[i].CODE_NUM+"'>"
						+ data[i].CODE_CONTENTS + "</option>");
				se.append(option);
			}

		})
	}
</script>

</head>
<body>

	<div class="insert">
		<h2 style="font-size: 30px;">도서 수정</h2>
	</div>
	<br>
	<br>
	<form action="bookUpdate.do" method="post"
		enctype="multipart/form-data">

		<table style="width: 1100px; height: 900px;">
			<tr>

				<td class="tdd">분야 선택</td>
				<td class="tddd"><span id="list"> 
							<c:forEach items="${genre2}" var="genre3" varStatus="st">
								<div>
								<span class="select">
								<select class="select1" id="sel1_${st.count}" name="codecontent"
									style="width: 150px; height: 35px;">
									<!-- 1 -->
									<option value="" selected>분야 선택</option>
									<c:forEach items="${genre1}" var="genre">
										<option value="${genre.CODE_NUM }">${genre.CODE_CONTENTS}</option>
									</c:forEach>
								</select>
						
							
							
								<select class="select2" id="sel2_${st.count}" name="codecontent2"
									style="width: 150px; height: 35px;">
									<!-- 1 -->
									<option value="" selected>장르 선택</option>
								</select>
									</span>
								</div>
								
								<!-- 옵션 태그 값 불러오기 --> 
								<script>
								$("#sel1_${st.count}").val("${genre3.CODE_CONTENTS }");
								
								$.getJSON("genrelist.do?codelist=${genre3.CODE_CONTENTS }", function(data) {
									var se = $("#sel2_${st.count}");
									se.empty();
									for (i = 0; i < data.length; i++) {
										var option = $("<option value='"+data[i].CODE_NUM+"'>"
												+ data[i].CODE_CONTENTS + "</option>");
										se.append(option);
									}
									se.val("${genre3.CODE_CONTENTS2 }"); 
								})
							
			
			
									</script>
										</c:forEach>
										
					</span>
					
			
					<button id="btn" class="button1">
						<span>복수 등록</span>
					</button></td>

			</tr>
			
			<tr>
				<td class="tdd">도서명</td>
				<td class="tddd"><input type="text" name="bookTitle"
					value="${book.bookTitle }" style="width: 220px; height: 30px;"></td>
			</tr>
			<tr>
				<td class="tdd">저자</td>
				<td class="tddd"><input type="text" name="bookWriter"
					value="${book.bookWriter }" style="width: 220px; height: 30px;"></td>
			</tr>
			<tr>
				<td class="tdd">출판사</td>
				<td class="tddd"><input type="text" name="bookPublisher"
					value="${book.bookPublisher }" style="width: 220px; height: 30px;"></td>
			</tr>
			<tr>
				<td class="tdd">출판 날짜</td>
				<td class="tddd"><input type="date" name="bookPublishDate"
					value="${book.bookPublishDate }"
					style="width: 220px; height: 30px;"></td>
			</tr>
			<tr>
				<td class="tdd">연령 제한</td>
				<td class="tddd"><select id="selectBox" class="select3"
					name="bookAgeLimit" style="width: 150px; height: 35px;">
						<!-- 1 -->
						<option value="" selected>연령 선택</option>
						<option value="0">전체 이용물</option>
						<option value="12">12세</option>
						<option value="15">15세</option>
						<option value="19">19세</option>
				</select></td>
				
			</tr>
			<script>  
			
			$("#selectBox").val("${book.bookAgeLimit}");
			
			
			
			</script>
			<tr>
				<td class="tdd">도서 파일</td>
				<td class="tddd"><input type="file" name="uploadFile"
					value="${book.bookAttactment }"></td>
			</tr>
			<tr>
				<td class="tdd">타이틀 이미지</td>
				<td class="tddd"><input type="file" name="imageFile"
					value="${book.bookImage}"></td>
			</tr>
			<tr>
				<td class="tdd" rowspan="2">가격</td>
				<td class="tddd">구매 가격 : <input type="text" name="bookprice"
					value="${book.bookprice }" style="width: 220px; height: 30px;"></td>

			</tr>
			<tr>
				<td class="tddd">대여 가격 : <input type="text" name="bookRent"
					value="${book.bookRent }" style="width: 220px; height: 30px;"></td>

			</tr>
			<tr>
				<td class="tdd">책 소개</td>
				<td class="tddd"><textarea cols="40" rows="5"
						name="bookContents">${book.bookContents }</textarea></td>


			</tr>

			<tr>
				<td class="tdd">시리즈 등록</td>



				<td class="tddd">
				<c:forEach items="${serise}" var="serise1" >
				<span id="list2"> 
					<span class="table2">		
							도서명 : <input type="text" name="titleserise" value="${serise1.BOOK_TITLE }"  style="height: 25px;">

							출판 날짜 : <input type="date" name="dateserise" value="${serise1.BOOK_PUBLISH_DATE }"
							style="height: 25px;"> 도서 파일 : <input type="file"
							name="fileserise" value="${serise1.BOOK_ATTACTMENT }">
					</span>
				</span>
				</c:forEach>
					<button id="btn2" class="button1">
						<span>시리즈 등록</span>
					</button></td>
			</tr>
		</table>
		<input type="submit" value="도서 수정" class="button1" />
	</form>
</body>
</html>