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

@WebServlet("/DeleteServlet.do")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PrintWriter out;
	private Connection conn;
	private RequestDispatcher rd;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processAction(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processAction(request, response);
	}

	private void processAction(HttpServletRequest request, HttpServletResponse response) {
		response.setContentType("text/html;charset=UTF-8");
		Integer foodNumber = Integer.parseInt(request.getParameter("foodNumber"));
		
		HashMap<String, String> errors = new HashMap<String, String>();
		request.setAttribute("errors", errors);		
		
		try {
			response.setContentType("text/html;charset=UTF-8");
			out = response.getWriter();
			
//			String fN = "" + foodNumber;
//			if(fN==null || fN.length()==0) {
//				errors.put("foodNumber", "Food Number is Required!");
//			}
			
			if(foodNumber==0) {
				errors.put("foodNumber", "Food Number CANNOT be 0!");
			}
			
			if(errors.size()==0) {
				createConn();
				deleteDb(foodNumber);
				rd = request.getRequestDispatcher("FunctionPage.jsp");
				closeConn();
			}else {
				rd = request.getRequestDispatcher("Delete.jsp");
			}
			
			rd.forward(request,response);
			
			out.close();
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
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
	
	private void deleteDb(Integer foodNumber) throws SQLException {
		String sqlstr = "delete from Maps where id=? ";
		PreparedStatement preState = conn.prepareStatement(sqlstr);
		preState.setInt(1, foodNumber);
		preState.executeUpdate();
		preState.close();
		out.write("Delete Db Success.<br/>");
	}
}