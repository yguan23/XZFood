<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>登入美食地圖</title>
</head>
<body background="登入背景.png" style = "background-position:center;">
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div align="center">
<h1><font face="標楷體"><font color="Black">請輸入帳號和密碼!</font></font></h1>
</div>

<form action="WebProjectLogin.do" method="post">
<div align="center">
	<table>
		<tr style="text-align:right;">
			<td>Name:<input type="text" name="userName"/></td>
			<td>${errors.userName}</td>
		</tr>
		<tr>
			<td>Password:<input type="password" name="userPwd"/></td>
			<td>${errors.userPwd}</td>
		</tr>
		<tr></tr><tr></tr><tr></tr>
		<tr style="text-align:center;">
			<td colspan="2"><input type="submit" value="登入" style="width:100px;height:30px;font-size:15px;"/></td>
		</tr>
	</table>
</div>
</form>
<div align="center"><br>
<a href="welcome.jsp"><font color="Black"><font face="標楷體"><font color="Black">點我回上一頁</font></font></font></a>
</div>
</body>
</html>