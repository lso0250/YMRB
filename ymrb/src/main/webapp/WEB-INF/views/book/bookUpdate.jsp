<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/jquery-ui.min.css">
<script src="${pageContext.request.contextPath}/css/jquery-ui.min.js"></script>
<script src="${pageContext.request.contextPath}/css/jquery.form.min.js"></script>

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

.button4 {
	text-align: right;
}
</style>
<script>
	$(function() {
		
		

		$("#btn3").click(function(event) {
			event.preventDefault();
			$("#list2").append("<div>");
			$("#list2 option:last").remove();
			$("#list2").append("</div>");

		});
	

		$("#list").on("change", ".select1", getList);
		$("#sel1").on("change", getList);

	
	
	
	
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

	<!-- 분야 장르 수정 삭제 추가 -->
	<script>
	var count;
	var dialog, form,dialog1
	  $( function() {
		    
	
 	 dialog = $( "#dialog-form" ).dialog({
    autoOpen: false,
    width:400,
    height:200,
   
    modal: false,
    buttons: {
      /* "Create an account": addUser, */
    추가 : function(){

    	var param = $("#frm").serialize();
		$.getJSON("./genreInsert.do?", param, function(data){
			$("#list").append($("#geinsert>div").clone());
			$("#list div:last span").append('<input type="button\" onclick="del('+data.cnum+')" value="삭제">')
			$("#list div:last span").append('<input type="button\" onclick="update3('+data.cnum+')" value="수정">')
		  	$("#list #sel1").attr("id","sel1_"+data.cnum);
		  	$("#list #sel2").attr("id","sel2_"+data.cnum);

			$("#sel1_"+data.cnum).val($("#sel1").val());
			$("#sel2_"+data.cnum).val($("#sel2").val());
			dialog.dialog( "close" )
			
			
		})
      },
      취소: function() {
        dialog.dialog( "close" );
      }
     
    },
    close: function() {
      form[ 0 ].reset();
     
    }
  });

  form = dialog.find( "form" ).on( "submit", function( event ) {
    event.preventDefault();
    addUser();
  });

 	 $( "#btn" ).button().on( "click", function() {
 	   dialog.dialog( "open" );
  });

});
	
	//분야 장르 수정
	function update3(count){
		
		var se1 = $("#sel1_"+count).val()
		var se2 = $("#sel2_"+count).val()
		var param = {cnum:count,codecontents:se1,codecontents2:se2}
		
		$.getJSON("./updateGenre.do?", param, function(data){
			
			
			alert("수정완료")
			
			
	})
	}
	
	//분야 장르 삭제
	function del(count){
		var se1 = $("#sel1_"+count).val()
		var se2 = $("#sel2_"+count).val()
		var param = {cnum:count,codecontents:se1,codecontents2:se2,bookNum:"${book.bookNum}"}
		$.getJSON("./deleteGenre.do?", param, function(data){
			
			alert("삭제완료")
			$($("#sel1_"+count).parent().parent()).remove();
			
			
	})
	}
	
	
</script>
	<script>
/* 시리즈 추가 */
	var count;
	var form1,dialog1
	  $( function() {
		    
	
 	 dialog1 = $( "#dialog-form1" ).dialog({
    autoOpen: false,
    width:700,
    height:200,
   
    modal: false,
    buttons: {
      /* "Create an account": addUser, */
    추가 : function(){
    	$("#frm1").ajaxForm({
		    datatype:'json',
		    url:'./seriseInsert.do',
		    success: function(data){
		           
		    	$("#serise2").append($("#frm1").clone());
				$("#serise2 form:last").append('<input type="button\" onclick="sedel('+data.bookNum+')" value="삭제">')
				$("#serise2 form:last").append('<input type="button\" onclick="seupdate('+data.bookNum+')" value="수정">')
					$("#serise2 #frm1").attr("id","sefrm_"+data.bookNum);
		 		 	

				
				
		            alert("추가 완료");
		           
		            dialog1.dialog( "close" )
		            
		        
		          },
		          error: function(status){
		              alert("파일업로드 중 오류가 발생하였습니다."+status);
		              return;
		          }
		   }).submit();
    	
    	
			
			
			
		},
      취소: function() {
        dialog1.dialog( "close" );
      }
     
    },
    close: function() {
      form[ 0 ].reset();
     
    }
  });

  /* form1 = dialog1.find( "form1" ).on( "submit", function( event ) {
    event.preventDefault();
    addUser();
  }); */

 	 $( "#btn2" ).button().on( "click", function() {
 		$('#frm1').clearForm();
 	   dialog1.dialog( "open" );
  });

});
	
	/* 분야 장르 수정 삭제 */
	function update3(count){
		
		var se1 = $("#sel1_"+count).val()
		var se2 = $("#sel2_"+count).val()
		var param = {cnum:count,codecontents:se1,codecontents2:se2}
		
		$.getJSON("./updateGenre.do?", param, function(data){
			
			
			alert("수정완료")
			
			
	})
	}

	
	
	/* 부모책 수정 */
	function bookupdate(){
		
	
		 $("#frm2").ajaxForm({
			   
			    url:'./updateBook1.do',
			    success: function(result, textStatus){
			           
			            alert("수정 완료");
			        
			          },
			          error: function(status){
			              alert("파일업로드 중 오류가 발생하였습니다."+status);
			              return;
			          }
			   }).submit();
	
	}
	/* 시리즈수정 삭제 */
	function seupdate(count1){
		
		/* 파일여부에 따른  */
		
		if($("#sefrm_"+count1).find("[name='uploadFile']").val().length>0){
		 $("#sefrm_"+count1).ajaxForm({
			    
			    url:'./seriseUpdate.do',
			    success: function(result, textStatus){
			           
			            alert("수정 완료");
			        
			          },
			          error: function(status){
			              alert("파일업로드 중 오류가 발생하였습니다."+status);
			              return;
			          }
			   }).submit();
		}else{
		
			
			var param =  $("#sefrm_"+count1).serialize();
			$.getJSON("./seriseUpdate.do", param, function(data){
			
				 alert("수정 완료");
			
		})
		}
		alert("수정 완료");
	}
	//자식 삭제
	function sedel(count1){


		var param =  $("#sefrm_"+count1).serialize();
		$.getJSON("./deleteBook.do?", param, function(data){
			
		
			alert("삭제완료")
			$($("#sefrm_"+count1)).remove();
			
			
	})
	}
	//도서 삭제
	function bookdel(){


		var param = {bookNum:"${book.bookNum}"}
	
		$.getJSON("./deleteBook.do", param, function(data){
			
		
			alert("삭제완료")
			location.href= "bookInsert.do";
			
	})
	}

</script>
	<!-- 분야 수정 -->

	<div id="dialog-form" title="분야 추가">
		<p class="validateTips" style="margin-left: 50px;">All form fields
			are required.</p>

		<form id="frm" method="post">
			<input type="hidden" name="bookNum" value="${book.bookNum }">
			<fieldset>
				<label for="name">분야</label>


				<div id="geinsert">
					<div>
						<span class="select"> <select class="select1" id="sel1"
							name="codecontents" style="width: 150px; height: 35px;">
								<!-- 1 -->
								<option value="" selected>분야 선택</option>
								<c:forEach items="${genre1}" var="genre">
									<option value="${genre.CODE_NUM }">${genre.CODE_CONTENTS}</option>
								</c:forEach>
						</select> <select class="select2" id="sel2" name="codecontents2"
							style="width: 150px; height: 35px;">
								<!-- 1 -->
								<option value="" selected>장르 선택</option>
						</select>

						</span>
					</div>
				</div>


			</fieldset>
		</form>

	</div>
	<!-- 자식 책 수정 -->

	<div id="dialog-form1" title="시리즈 추가">
		<p class="validateTips">추가할 시리즈를 입력 하시오.</p>
		<label for="name">시리즈</label>
		<form id="frm1" method="post" enctype="multipart/form-data">
			<input type="hidden" name="bookNum" value="${book.bookNum }">
			<fieldset>



				<div>


					<span id="list2"> <span class="table2"> 도서명 : <input
							type="text" name="bookTitle" style="height: 25px;"> 출판 날짜
							: <input type="date" name="bookPublishDate" style="height: 25px;">
							도서 파일 : <input type="file" name="uploadFile">
					</span>
					</span>


				</div>


			</fieldset>
		</form>

	</div>


	<div class="insert">
		<h2 style="font-size: 30px;">도서 수정</h2>
	</div>
	<br>
	<br>
	<b style="color: white; font-size: 20px;">분야 수정</b>

	<div style="width: 1200px; border: 1px solid white;">

		<table style="width: 1100px; margin: 30px;">


			<tr>

				<td class="tdd">분야 선택</td>
				<td class="tddd"><input type="hidden" name="bookNum"
					value="${book.bookNum }"> <span id="list"> <c:forEach
							items="${genre2}" var="genre3" varStatus="st">
							<div>

								<span class="select"> <select class="select1"
									id="sel1_${genre3.C_NUM}" name="codecontent"
									style="width: 150px; height: 35px;">
										<!-- 1 -->
										<option value="" selected>분야 선택</option>
										<c:forEach items="${genre1}" var="genre">
											<option value="${genre.CODE_NUM }">${genre.CODE_CONTENTS}</option>
										</c:forEach>
								</select> <select class="select2" id="sel2_${genre3.C_NUM}"
									name="codecontent2" style="width: 150px; height: 35px;">
										<!-- 1 -->
										<option value="" selected>장르 선택</option>
								</select> <input type="button" onclick="del(${genre3.C_NUM})" value="삭제">

									<input type="button" onclick="update3(${genre3.C_NUM})"
									value="수정">

								</span>
							</div>

							<!-- 옵션 태그 값 불러오기 -->
							<script>
							
									$("#sel1_${genre3.C_NUM}").val(
											"${genre3.CODE_CONTENTS }");

										$.getJSON("genrelist.do?codelist=${genre3.CODE_CONTENTS }",
													function(data) {
														var se = $("#sel2_${genre3.C_NUM}");
														se.empty();
														for (i = 0; i < data.length; i++) {
															var option = $("<option value='"+data[i].CODE_NUM+"'>"
																	+ data[i].CODE_CONTENTS
																	+ "</option>");
															se.append(option);
														}
														se.val("${genre3.CODE_CONTENTS2 }");
													})
								</script>
						</c:forEach>

				</span>



					<button id="btn" class="button1">
						<span>추가</span>
					</button></td>

			</tr>
		</table>
	</div>
	<br>
	<br>
	<b style="color: white; font-size: 20px;">도서 수정</b>
	<form id="frm2" method="post" enctype="multipart/form-data">
		<input type="hidden" name="bookNum" value="${book.bookNum}">
		<div style="width: 1200px; border: 1px solid white;">
			<table style="width: 1100px; margin: 30px;">
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
					<td class="tddd"><input type="file" name="uploadFile">
						<button>삭제</button></td>
				</tr>
				<tr>
					<td class="tdd">타이틀 이미지</td>
					<td class="tddd"><input type="file" name="imageFile">
						<button>삭제</button></td>
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
			</table>
			<input type="button" value="수정" onclick="bookupdate()">
		</div>
	</form>
	<br>
	<br>
	<br>
	<b style="color: white; font-size: 20px;">시리즈 수정</b>
	<div style="width: 1200px; border: 1px solid white;">
		<table style="width: 1100px; margin: 30px;">
			<tr>
				<td class="tdd">시리즈 등록</td>



				<td class="tddd">
					<div id="serise2">



						<c:forEach items="${serise}" var="serise1">
							<form id="sefrm_${serise1.BOOK_NUM  }" method="post"
								enctype="multipart/form-data">


								<div>
									<span id="list2_${serise1.BOOK_NUM }"> <input
										type="hidden" name="bookNum" value="${serise1.BOOK_NUM}">
										도서명 : <input type="text" name="bookTitle"
										value="${serise1.BOOK_TITLE }" style="height: 25px;">
										출판 날짜 : <input type="date" name="bookPublishDate"
										value="${serise1.BOOK_PUBLISH_DATE }" style="height: 25px;">
										도서 파일 : <input type="file" name="uploadFile"
										value="${serise1.BOOK_ATTACTMENT }"> <input
										type="button" onclick="sedel(${serise1.BOOK_NUM})" value="삭제">

										<input type="button" onclick="seupdate(${serise1.BOOK_NUM})"
										value="수정">
									</span>

								</div>

							</form>
						</c:forEach>
					</div>


					<button id="btn2" class="button1">
						<span>시리즈 등록</span>
					</button>
					<button id="btn3">삭제</button>
				</td>
			</tr>
		</table>
	</div>
	<input type="button" onclick="bookdel()" value="도서 삭제">


	<input type="submit" value="뒤로 가기" class="button1" />


</body>
</html>