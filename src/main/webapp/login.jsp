<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>�n�J�����a��</title>
</head>
<body background="�n�J�I��.png" style = "background-position:center;">
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div align="center">
<h1><font face="�з���"><font color="Black">�п�J�b���M�K�X!</font></font></h1>
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
			<td colspan="2"><input type="submit" value="�n�J" style="width:100px;height:30px;font-size:15px;"/></td>
		</tr>
	</table>
</div>
</form>
<div align="center"><br>
<a href="welcome.jsp"><font color="Black"><font face="�з���"><font color="Black">�I�ڦ^�W�@��</font></font></font></a>
</div>
</body>
</html>