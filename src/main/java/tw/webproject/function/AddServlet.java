package tw.webproject.function;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AddServlet.do")
public class AddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection conn;
	private PrintWriter out;
	private RequestDispatcher rd;

	public void createConn() throws Exception {
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		String urlstr = "jdbc:sqlserver://localhost:1433;databaseName=WebProject;user=kyle30701;password=asdfg123";
		conn = DriverManager.getConnection(urlstr);
		//out.write("Connection Created. <br/>");
	}
	
	public void closeConn() throws SQLException{
		if(conn!=null) {
			conn.close();
			//out.write("Connection Closed. <br/>");
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		processAction(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		processAction(request, response);
	}

	private void processAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String foodName = new String(request.getParameter("foodName").getBytes("iso-8859-1"),"utf-8");
		String foodAddress = new String(request.getParameter("foodAddress").getBytes("iso-8859-1"),"utf-8");
		String foodPhone = new String(request.getParameter("foodPhone").getBytes("iso-8859-1"),"utf-8");
		String foodComment = new String(request.getParameter("foodComment").getBytes("iso-8859-1"),"utf-8");
		
		HashMap<String, String> errors = new HashMap<String, String>();
		request.setAttribute("errors", errors);		
		
		try {
			response.setContentType("text/html;charset=UTF-8");
			out = response.getWriter();
			
			if(foodName==null || foodName.length()==0) {
				errors.put("foodName", "Food Name is Required!");
			}
			
			if(foodAddress==null || foodAddress.length()==0) {
				errors.put("foodAddress", "Food Address is Required!");
			}
			
			if(foodPhone==null || foodPhone.length()==0) {
				errors.put("foodPhone", "Food Phone is Required!");
			}
			
			if(foodComment==null || foodComment.length()==0) {
				errors.put("foodComment", "Food Comment is Required!");
			}
				
			if(errors.size()==0) {
				createConn();
				insertDb2(foodName, foodAddress, foodPhone, foodComment);
				rd = request.getRequestDispatcher("FunctionPage.jsp");
				closeConn();
			}else {
				rd = request.getRequestDispatcher("Add.jsp");
			}
			
			rd.forward(request,response);	
			
//			request.getRequestDispatcher("/FunctionPage.jsp").forward(request, response);
			
			out.close();
					
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

	private void insertDb2(String foodName, String foodAddress, String foodPhone, String foodComment) throws SQLException {
		String sqlstr = "insert into Maps(name, address, phone, comment) values(?,?,?,?)";
		PreparedStatement preState = conn.prepareStatement(sqlstr);
		preState.setString(1, foodName);
		preState.setString(2, foodAddress);
		preState.setString(3, foodPhone);
		preState.setString(4, foodComment);
		preState.executeUpdate();
		preState.close();
		//out.write("Insert Success.<br/>");
		
	}
}