package com.vej.LoginCredentials;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class CompanyLogin
 */
@WebServlet("/CompanyLogin")
public class CompanyLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CompanyLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email = request.getParameter("mail");
		String pass = request.getParameter("passwd");
		
		String pass1 = CompanyLoginDao.getCompanyPass(email);
		
		String email1 =CompanyLoginDao2.getcompemail(email);
		
		HttpSession ses = request.getSession();
		
		System.out.println(pass1);
		System.out.println(pass);
		
		if(email == null)
		{
			ses.setAttribute("error3", "0");
			
			response.sendRedirect("CompanyLogin.jsp");
			
		}
		
	
		else if(!(pass.equals(pass1)))
		{
			ses.setAttribute("error4", "0");
			
			response.sendRedirect("CompanyLogin.jsp");
			
			
		}
		else {
			ses.setAttribute("companyemail", email);
			
			response.sendRedirect("BlogPostServlet");
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
