<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager,java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>刪除美食</title>
</head>
<body>

<body background="bt21-3.jpg" style = "background-position:50% 25%;">

<h2 align="center"><font color="DodgerBlue"><font face="Comic Sans MS">Delete Profiles</font></font></h2>
<%
	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
	String urlstr = "jdbc:sqlserver://localhost:1433;databaseName=WebProject;user=kyle30701;password=asdfg123";
	Connection conn = DriverManager.getConnection(urlstr);
	
	Statement state = conn.createStatement();
	
	String sqlstr = "select * from Maps";
	ResultSet rs = state.executeQuery(sqlstr);
	
	while(rs.next()){
		out.write(rs.getInt(1) + " " + rs.getString(2) + " " + rs.getString(3) + " " + rs.getString(4) + " " + rs.getString(5) + "<br/>");
	}
	
	rs.close();
	conn.close();
%>
<form action="DeleteServlet.do" method="post">
<div align="center"><br>
	<table style="background-color:pink;font-size:20px;border-width:3px;border-style:solid;border-color:#FF6E6E;padding:5px;" border="1">
		<tr style="text-align:center;">
			<td><font face="微軟正黑體">想要刪除的店家編號:</font><input type="text" name = "foodNumber"/></td>
			<td>${errors.foodNumber}</td>
		</tr>
	</table><br>
</div>
<div align="center">
   <input type="submit" value="刪除" style="color:DodgerBlue;width:100px;height:30px;font-size:18px;background-color:#D4E6F8;border-color:#9999FF"/>
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