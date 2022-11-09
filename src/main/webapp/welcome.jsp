<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>新莊美食地圖</title>

<script type="text/javascript">
	alert('請先登入會員!!');
	</script>

</head>
<body background="歡迎背景.png">

<div style="text-align:center;">

<h1><i><font color="White"><font face="Comic Sans MS">Welcome</font></font></i></h1><br>


<h4><font face="標楷體"><font color="Black">點擊下方圖片進入地圖！</font></font></h4>
</div>
<form style="text-align:center;" >        <!-- 進入僅供檢視的地圖 -->
	<input type="button" onclick="javascript:location.href='DbConnPage.jsp'" style="background-image:url(美食.jpg); width:350px; height:233px;">
</form>
<div style="text-align:center;">
<br>
<h4><font face="標楷體"><font color="Black">登入以編輯地圖！</font></font></h4>

<a href="login.jsp"><font color="White">點我登入</font></a><br><br>
<a href="error.html"><font color="White">點我離開&nbsp;</a><s>&nbsp;並沒有&nbsp;</s><br></font>
</div>

</body>
</html>