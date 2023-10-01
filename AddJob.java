package com.vej.LoginCredentials;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddJob
 */
@WebServlet("/AddJob")
public class AddJob extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddJob() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
        String loc = request.getParameter("loc");
        String funarea = request.getParameter("area");
        String jobp = request.getParameter("key");
        String phno = request.getParameter("phone");
        String vacc = request.getParameter("vac");
        String sreq = request.getParameter("skill");
        String sal = request.getParameter("sal");
        String idate = request.getParameter("ivdt");
        String ltime = request.getParameter("ivt");
        String iloc = request.getParameter("ivp");
        String email = request.getParameter("email");
        
        
        AddJobDao.addjobdatas(loc, funarea, jobp, phno, vacc, sreq, sal, idate, ltime, iloc ,email);
        
        response.sendRedirect("BlogPostServlet");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
