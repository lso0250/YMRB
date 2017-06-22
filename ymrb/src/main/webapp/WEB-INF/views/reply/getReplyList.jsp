<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	$(function() {
		var param = {
			bookNum : "${book.bookNum}"
		}
		$
				.getJSON(
						"../reply/insertReply.do",
						param,
						function(data) {
							for (i = 0; i < data.length; i++) {
								var btn3 = "";
								if (data[i].member_num == "${member.member_num}") {
									btn3 = "<button class='btn' id='btnReplyDel'" + (num) + ">삭제</button><input type='hidden' id='hiddenId' value='"+data[i].reply_num+"'/>";
								}
								$("#comments").append(
										"<div class='comment'><div class='media-body'><h4 class='media-heading'>"
												+ data[i].member_num + "</h4><p class='time'>"
												+ data[i].reply_date+"</p><p>"
												+ data[i].reply_contents+ "</p>" + btn3+ "</div></div>");

							}
						})

		//댓글 등록
		$("#btnReplyInsert").click(function(event) {
			event.preventDefault();
			var param = $("#frmReply").serialize();
			$.getJSON("../reply/insertReply.do", param, function(data) {
				var btn3 = "";
				if (data.member_num == "${member.member_num}") {
					btn3 = "<button class='btn' id='btndeleteReply"	+ (num++) + "'>삭제</button><input type='hidden' id='hiddenId' value='"+data.replt_num+"'/>";
				}
				$("#comments").append("<div class='comment'><div class='media-body'><h4 class='media-heading'>"
					+ data.member_num
					+ "</h4><p class='time'>"
					+ data.reply_date
					+ "</p><p>"
					+ data.reply_contents
					+ "</p>"
					+ btn3
					+ "</div></div>");
					});
				});

		//댓글 삭제
		$(document).on("click", "#btnReplyDelete", function(event) {
			event.preventDefault();
			var param = $(this).parent().children('#hiddenId').val()+ "";
			console.log(param);
			$(this).parents(".comment").remove();
			$.getJSON("../reply/deleteReply.do?reply_num=" + param,	function(data) {
			
			});
		});
	});
</script>

</head>
<body>
<div class="comments" style="clear: both;">
		<div class="heading" id="commentsTop">
			<h4 class="comments-title">댓글 보기 <small class="number"></small></h4>
		</div>
	</div>
 	<div class="comments" id="comments">
		<div class="comment">
			<a href="#" class="pull-left"></a>
			<div class="media-body">
				<h4 class="media-heading">???</h4>
				<p class="time">2017-06-11</p>
				<p>안해잉</p>
			</div>
		</div>
	</div>
	<div class="comment-form">
		<div class="heading">
			<h4>댓글쓰기</h4>
		</div>
		<form class="form-gray-fields" id="frmReply">
			<input type="hidden" name="bookNum" value="${book.bookNum }">
			<div class="row">
				<div class="col-md-4">
					<div class="form-group">
						<label for="name" class="upper">작성자</label>
						<input type="text" placeholder="${login.mem_nic }" value="${login.mem_nic }" class="form-control required" readonly="readonly">
						<label for="name" class="upper"></label>
						<input type="hidden"  id="name" placeholder="${login.mem_num }" name="member_num" value="${login.mem_num }" class="form-control required">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="form-group">
						<label for="comment" class="upper">내용</label>
						<textarea id="comment" rows="5" cols="100"	placeholder="Enter comment"  name="reply_contents" class="form-control required" ></textarea>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="form-group text-center">
						<button class="btn btn-primary" id="btnReviewIns">
							<i class="fa fa-paper-plane"></i>&nbsp; 댓글 등록하기
						</button>
					</div>
				</div>
			</div>
		</form>
	</div>




	<%-- <table id="replyListTable">
		<thead>
			<tr>
				<th>댓글번호</th>
				<th>작성자</th>
				<th>내용</th>
			</tr>
		</thead>
	
		<tbody>
			<c:forEach items="${replyList}" var="reply">
				<tr>
					<td>${reply.reply_num }</td>
					<td>${reply.reply_contents }</td>
					<td>${reply.reply_date }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table> --%>
</body>
</html>