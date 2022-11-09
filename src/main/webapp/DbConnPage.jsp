<%@page import="java.sql.DriverManager,java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>美食地圖</title>
</head>
<body>

<body background="bt21-9.jpg" style = "background-position:40% 10%;background-size:85%">
<%
	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
	String urlstr = "jdbc:sqlserver://localhost:1433;databaseName=WebProject;user=kyle30701;password=asdfg123";
	Connection conn = DriverManager.getConnection(urlstr);
	
	//out.write("connection status:" + !conn.isClosed() + "<br/>");
	
	Statement state = conn.createStatement();
	
	String sqlstr = "select * from Maps";
	ResultSet rs = state.executeQuery(sqlstr);
	
	while(rs.next()){
		out.write(rs.getInt(1) + " " + rs.getString(2) + " " + rs.getString(3) + " " + rs.getString(4) + " " + rs.getString(5) + "<br/>");
	}
	
	rs.close();
	conn.close();
%>
<form action="welcome.jsp" method="post">  <!-- 回到首頁 -->
<div align="center">
	<input type="submit" value="回到首頁" style="color:DodgerBlue;width:100px;height:30px;font-size:18px;background-color:#D4E6F8;border-color:#9999FF"/>
</div>
</form>
</body>
</html>