package com.vej.LoginCredentials;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SignIn
 */
@WebServlet("/SignIn")
public class SignIn extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignIn() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uemail =request.getParameter("email");
		String fname =request.getParameter("firstName");
		String lname = request.getParameter("lastName");
		String uname = request.getParameter("userName");
		String pass = request.getParameter("passwd");
		String reppass = request.getParameter("psw-repeat");
		String gender = request.getParameter("gender");
		String exp = request.getParameter("exp_in_years");
		String preindu = request.getParameter("industry");
		String keyskill = request.getParameter("keySkills");
		
		
		
		SignINDao.addDatas( uemail ,  fname ,  lname ,  uname ,  pass  ,  gender ,  exp ,  preindu ,  keyskill);
		
		HttpSession ses = request.getSession();
		
		if(!pass.equals(reppass) )
		{
			
			ses.setAttribute("email", uemail);
			
			System.out.println("hiii");
		
		    response.sendRedirect("SIignInPage.jsp");
		}
		else {
			
			response.sendRedirect("BlogPage.jsp");
		}
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
