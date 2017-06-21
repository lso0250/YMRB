<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>



.table{
		margin-left:350px;
		margin-top:150px;
}

.tdd {
	background-color: gray;
                color: white;
                padding: 10px 5px 10px 5px;
                border: 1px solid #cccccc;
                font-family: Arial, Helvetica, sans-serif;
                font-size: 20px;
                font-weight: normal;
                text-transform:capitalize;
	text-align: center;

}
.tddd{
padding: 5px 10px 5px 10px;
                color: #454545;
                font-family: Arial, Helvetica, sans-serif;
               font-size: 20px;
           		text-align:right;
                vertical-align: middle;
                }
                
tr:nth-child(2n+1) .tddd
            {
                background-color: white;
                color: #454545;
            }
            
tr:nth-child(2n) .tddd
            {
                background-color: white;
                color: #454545;
            }
.point{
		
			margin-left:500px;
}
.button{
	border-radius: 5px;
	background-color:#6699ff;
	color:#ffffff;
	}
 #text1{
 		border:none;
 		text-align:right;
 		font-size:20px;
 }
 
</style>

</head>
<script>
$(function() {
	$("#point").click(function() {
		var param = $("#cashform").serialize();
		if (confirm("충전 하시겠습니까?")) {
			$.getJSON("./insertCash.do", param, function(data) {
				if (confirm("캐시 내역으로 갈까요?")){
					location.href="fantasy.do";
				}
				alert("충전이 완료 되었습니다.^^")
			})}
	});
});
	

</script>
<body>

<h2 style="margin-left:350px; color:white;"> YMRB 포인트 충전 </h2>
<br>
<br>
<div  style=" margin-left:350px;">
<b style="font-size:20px; color:white;">
매월 1~3일, <br> 
리디포인트 2배 적립! <br>
매월 1~3일에는 리디캐시 충전 시 리디포인트가 2배로 적립됩니다.  <br>
최대 18% 적립되는 더블포인트 혜택을 놓치지 마세요!

</b>
</div>
<form id="cashform" method="post">
<input type="hidden" name="mem_num" value="${login.mem_num}"/>
<div class="table">

<h2 style="font-size:20px; color:white;">내 YMRB 포인트 : 0원</h2>


<table style="width:800px; height:600px;">
	<tr style="height:100px;"> 
		<td class="tdd">선택</td>
		<td class="tdd">YMRB포인트 충전</td>
		<td class="tdd">적립률</td>
		<td class="tdd">포인트 적립</td>
	</tr>
	
	<tr>
		<td class="tddd"><input type="radio" name="radio" value="1"></td>
		<td class="tddd"> <input type="text" name="money" value="2000" id="text1">원 </td>
		<td class="tddd">6%</td>
		<td class="tddd"><input type="text" name="point" value="120" id="text1">원 </td>
	</tr>

	<tr>
		<td class="tddd"><input type="radio"  name="radio" value="2"></td>
		<td class="tddd"><input type="text" name="money" value="5000" id="text1">원</td>
		<td class="tddd">10%</td>
		<td class="tddd"><input type="text" name="point" value="500" id="text1">원</td>
	</tr>
	<tr>
		<td class="tddd"><input type="radio" name="radio" value="3"></td>
		<td class="tddd"><input type="text" name="money" value="10000" id="text1">원</td>
		<td class="tddd">10%</td>
		<td class="tddd"><input type="text" name="point" value="1000" id="text1">원</td>
	</tr>
	<tr>
		<td class="tddd"><input type="radio" name="radio" value="4"></td>
		<td class="tddd"><input type="text" name="money" value="20000" id="text1">원</td>
		<td class="tddd">10%</td>
		<td class="tddd"><input type="text" name="point" value="2000" id="text1">원</td>
	</tr>
	
	<tr>
		<td class="tddd"><input type="radio" name="radio" value="5"></td>
		<td class="tddd"><input type="text" name="money" value="30000" id="text1">원</td>
		<td class="tddd">14%</td>
		<td class="tddd"><input type="text" name="point" value="4200" id="text1">원</td>
	</tr>
	<tr>
		<td class="tddd"><input type="radio" name="radio" value="6"></td>
		<td class="tddd"><input type="text" name="money" value="50000" id="text1">원</td>
		<td class="tddd">14%</td>
		<td class="tddd"><input type="text" name="point" value="7000" id="text1">원</td>
	</tr>
	<tr>
		<td class="tddd"><input type="radio" name="radio" value="7"></td>
		<td class="tddd"><input type="text" name="money" value="70000" id="text1">원</td>
		<td class="tddd">14%</td>
		<td class="tddd"><input type="text" name="point" value="9800" id="text1">원</td>
	</tr>
	
	<tr>
		<td class="tddd"><input type="radio" name="radio" value="8"></td>
		<td class="tddd"><input type="text" name="money" value="100000" id="text1">원</td>
		<td class="tddd">18%</td>
		<td class="tddd"><input type="text" name="point" value="18000" id="text1">원</td>
	</tr>
	<tr>
		<td class="tddd"><input type="radio" name="radio" value="9"></td>
		<td class="tddd"><input type="text" name="money" value="200000" id="text1">원</td>
		<td class="tddd">18%</td>
		<td class="tddd"><input type="text" name="point" value="36000" id="text1">원</td>
	</tr>
	<tr>
		<td class="tddd"><input type="radio" name="radio" value="10"></td>
		<td class="tddd"><input type="text" name="money" value="300000" id="text1">원</td>
		<td class="tddd">18%</td>
		<td class="tddd"><input type="text" name="point" value="54000" id="text1">원</td>
	</tr>
</table>

</div>
<br>
<br>
<div class="point">
	<input type="button" class="button" id="point" value="YMRB 포인트 충전" style="width:200px;height:50px;">

</div>
</form>
</body>
</html>