<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager,java.sql.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>使用者編輯美食庫</title>
</head>
<body>

<body background="bt21-4.jpg" style = "background-position:20% 100%;background-size:80%">
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
<table>
	<tr>
		<td>
			<form action="Add.jsp" method="post">  <!-- 新增 -->
			<div>
			<input type="submit" value="新增" style="color:DodgerBlue;width:150px;height:35px;font-size:20px;background-color:#D4E6F8;border-color:#9999FF"/>
			</div>
			</form>
		</td>
		<td>
			<form action="Edit.jsp" method="post">  <!-- 修改 -->
			<div >
			<input type="submit" value="修改" style="color:DodgerBlue;width:150px;height:35px;font-size:20px;background-color:#D4E6F8;border-color:#9999FF"/>
			</div>
			</form>
		</td>
		<td>
			<form action="Delete.jsp" method="post">  <!-- 刪除 -->
			<div >
			<input type="submit" value="刪除" style="color:DodgerBlue;width:150px;height:35px;font-size:20px;background-color:#D4E6F8;border-color:#9999FF"/>
			</div>
			</form>
		</td>
	</tr>
</table>
<p>
<table>
	<tr>
		<td>
			<form action="DbConnPage.jsp" method="post">  <!-- 登出 -->
			<div >
			<input type="submit" value="登出" style="color:DodgerBlue;width:150px;height:35px;font-size:20px;background-color:#D4E6F8;border-color:#9999FF"/>
			</div>
			</form>
		</td>
	</tr>
</table>
</body>
</html>