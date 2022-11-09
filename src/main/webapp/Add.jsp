<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新增美食</title>
</head>
<body>
<!-- <body bgcolor="red"> -->
<body background="bt21-1.jpg" style = "background-position:50% 20%;">

<h2 align="center"><font color="DodgerBlue"><font face="Comic Sans MS">Add Profiles</font></font></h2>
<form action="AddServlet.do" method="post">
<div align="center">
	<table style="background-color:pink;font-size:20px;border-width:3px;border-style:solid;border-color:#FF6E6E;padding:5px;" border="1">
		<tr style="text-align:center;">
		
			<td><font face="微軟正黑體">店家名稱:</font><input type="text" name = "foodName" /></td>
			<td>${errors.foodName}</td>
		</tr>
		<tr>
			<td><font face="微軟正黑體">店家地址:</font><input type="text" name = "foodAddress"/></td>			
			<td>${errors.foodAddress}</td>
		</tr>
		<tr style="text-align:center;">
			<td><font face="微軟正黑體">店家電話:</font><input type="text" name = "foodPhone"/></td>
			<td>${errors.foodPhone}</td>
		</tr>
		<tr style="text-align:center;">
			<td><font face="微軟正黑體">店家備註:</font><input type="text" name = "foodComment"/></td>
			<td>${errors.foodComment}</td>
		</tr>

	</table><br>

<div>
   <input type="submit" value="新增" style="color:DodgerBlue;width:100px;height:30px;font-size:18px;background-color:#D4E6F8;border-color:#9999FF"/>
</div>
</div>
</form>
<p>
<form action="FunctionPage.jsp" method="post">  <!-- 回上一頁 -->			
<div align="center">	
	<input type="submit" value="回上頁" style="color:DodgerBlue;width:100px;height:30px;font-size:18px;background-color:#D4E6F8;border-color:#9999FF"/>
</div>
</form>		
	
</body>
</html>