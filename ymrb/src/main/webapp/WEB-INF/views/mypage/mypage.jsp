<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>
.button1 {
	display: inline-block;
	border-radius: 4px;
	background-color: white;
	border: none;
	text-align: center;
	font-size: 15px;
	color:white;
	transition: all 0.5s;
	cursor: pointer;
	margin: 5px;
	width:150px;
	height:40px;
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
	.two{
		
		padding:20px;
		display: inline-block;
	
	}
	.first{
	
		margin-top:150px;
		border:1px solid gray;
		width:800px;
		height:290px;
		
	}
	
	#id{
		
		font-size:20px;
		
		
	}
	#point{
	
		
		text-align:center;
		
		
	}
	.aa {text-decoration: none;
    color:black;
    font-size:20px;
  
    }
    .buylist{
    
    	margin-top:80px;
    	width:900px;
    }
    .rentlist{
    	
    	margin-top:150px;
    	width:900px;
    }
    .table2{
    		font-size:20px;
 			display:inline-block;
 			text-align:center;
 			padding:20px;
 
 }
</style>
</head>
<body>
<div class="first">
	<div class="two" id="id" style="background-color : white;" >
		<b>alstn7456��</b><br>
		<b>� ������</b>
		<br>
		<br>
		
	</div>
	<div class="two" id="point" style="margin-left:50px; margin-top:50px;  ">
		<a href="cash.jsp" class="aa" >
		<img src="img/casg.JPG" style="width:100px;height:60px;"><br>
		<b>YMBR ĳ��</b><br>
		<b style="font-size:20px;color:#669999">0��</b>
		</a>
		
	</div>
	<div class="two" id="point" style="margin-left:10px;">
		<a href="cash.jsp" class="aa" >
		<img src="img/point.JPG" style="width:100px;height:60px;"><br>
		<b>YMBR ����Ʈ</b><br>
		<b style="font-size:20px;color:#669999">0��</b>
		</a>
	</div>
		<div class="two" id="point" style="margin-left:10px;">
		<a href="cash.jsp" class="aa" >
		<img src="img/point.JPG" style="width:100px;height:60px;"><br>
		<b>���� �뿩���� �Ǽ�</b><br>
		<b style="font-size:20px;color:#669999">0��</b>
		</a>
		
	</div>
		<div class="two" id="point" style="margin-left:10px;">
		<a href="cash.jsp" class="aa" >
		<img src="img/point.JPG" style="width:100px;height:60px;"><br>
		<b>������å</b><br>
		<b style="font-size:20px;color:#669999">0��</b>
		</a>
	</div>
	
		<div class="two" id="point" style="margin-left:10px;">
		<a href="cash.jsp" class="aa" >
		<img src="img/point.JPG" style="width:100px;height:60px;"><br>
		<b>��ٱ���</b><br>
		<b style="font-size:20px;color:#669999">��</b>
		</a>
	</div>
	
	<div>
		<input type="button" value="�α׾ƿ�" style="width:100px;height:40px; 
				margin-top:0px; margin-left:20px; border-radius: 4px; background-color: #669999; color:white;" >
	</div>
	

</div>
<div class="buylist">

<table>
 		<tr>
 			<td style="font-size:20px;"><b>���Ÿ��</b></td>
 			
 			<td style="width:720px; text-align:right;">
 				<button id="btn" class="button1" onclick="buylist.jsp"><span>��ü ����</span></button>
 			</td>
 			
 		</tr>
 	
 	</table>
 	<hr style="width:800px; margin-left:5px;">
 	
	

<div class="table2">
	<table>
		<tr>
			
			<td><img src="img/Chrysanthemum.jpg" style="width:150px; height:200px;"></td>
		</tr>
		<tr>
			
			<td>å ����</td>
		</tr>
		<tr>
			
			<td>����</td>
		</tr>
	
	</table>
	

</div> 
<div class="table2">
	<table>
		<tr>
		
			<td><img src="img/Chrysanthemum.jpg" style="width:150px; height:200px;"></td>
		</tr>
		<tr>
		
			<td>å ����</td>
		</tr>
		<tr>
		
			<td>����</td>
		</tr>
	
	</table>
	

</div> 
</div>
<div class="rentlist">

<table>
 		<tr>
 			<td style="font-size:20px;"><b>�뿩���</b></td>
 			
 			<td style="width:720px; text-align:right;">
 				<button id="btn" class="button1"><span>��ü ����</span></button>
 			</td>
 			
 		</tr>
 	
 	</table>
 	<hr style="width:800px; margin-left:5px;">
 	
	

<div class="table2">
	<table>
		<tr>
			
			<td><img src="img/Chrysanthemum.jpg" style="width:150px; height:200px;"></td>
		</tr>
		<tr>
			
			<td>å ����</td>
		</tr>
		<tr>
			
			<td>����</td>
		</tr>
	
	</table>
	

</div> 
<div class="table2">
	<table>
		<tr>
		
			<td><img src="img/Chrysanthemum.jpg" style="width:150px; height:200px;"></td>
		</tr>
		<tr>
		
			<td>å ����</td>
		</tr>
		<tr>
		
			<td>����</td>
		</tr>
	
	</table>
	

</div> 
<div class="table2">
	<table>
		<tr>
		
			<td><img src="img/Chrysanthemum.jpg" style="width:150px; height:200px;"></td>
		</tr>
		<tr>
		
			<td>å ����</td>
		</tr>
		<tr>
		
			<td>����</td>
		</tr>
	
	</table>
	

</div> 
<div class="table2">
	<table>
		<tr>
		
			<td><img src="img/Chrysanthemum.jpg" style="width:150px; height:200px;"></td>
		</tr>
		<tr>
		
			<td>å ����</td>
		</tr>
		<tr>
		
			<td>����</td>
		</tr>
	
	</table>
	

</div> 
<div class="table2">
	<table>
		<tr>
		
			<td><img src="img/Chrysanthemum.jpg" style="width:150px; height:200px;"></td>
		</tr>
		<tr>
		
			<td>å ����</td>
		</tr>
		<tr>
		
			<td>����</td>
		</tr>
	
	</table>
	

</div> 
</div>
</body>
</html>