package tw.webproject.login;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/WebProjectLogin.do")
public class WebProjectLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private String sysUserName = "test", sysUserPwd = "test123";

	private RequestDispatcher rd;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName = request.getParameter("userName");
		String userPwd = request.getParameter("userPwd");
		
		HashMap<String, String> errors = new HashMap<String, String>();
		request.setAttribute("errors", errors);		
		
		if(userName != null && sysUserName.equals(userName)) {
			request.setAttribute("userName", userName);
		}else {	
			errors.put("userName", "User Name is NOT correct!");
		}
		
		if(userPwd != null && sysUserPwd.equals(userPwd)) {
			request.setAttribute("userPwd", userPwd);
		}else {
			errors.put("userPwd", "User Password is NOT correct!");
		}
		
		if(userName==null || userName.length()==0) {
			errors.put("userName", "User Name is Required!");
		}
		
		if(userPwd==null || userPwd.length()==0) {
			errors.put("userPwd", "User Password is Required!");
		}
			
		if(errors.size()==0) {
			rd = request.getRequestDispatcher("FunctionPage.jsp");
		}else {
			rd = request.getRequestDispatcher("login.jsp");
		}
		
		rd.forward(request,response);	
	}

}