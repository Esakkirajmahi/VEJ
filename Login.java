package com.vej.LoginCredentials;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uemail = request.getParameter("email");
		String upass = request.getParameter("password");
		System.out.println(upass);
		
		HttpSession ses = request.getSession();
		
		
		
		String pass = LoginDao.getpassword(uemail);
		
		System.out.println(pass);
		
		String email =LoginEmailDao.getemail(uemail);
		
		if(email==null)
		{
			System.out.println("hello world!");
			ses.setAttribute("error1", "0");
			System.out.println(ses.getAttribute("error1"));
			response.sendRedirect("FrontPage.jsp");
		}
		
		
		else if(upass.equals(pass))
		{
			System.out.println("hgntv");
			ses.setAttribute("useremail", uemail);
			
			response.sendRedirect("BlogPage.jsp");
		}
		else
		{
			System.out.println("hiii");
			ses.setAttribute("error2", "0");
			response.sendRedirect("FrontPage.jsp");
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
