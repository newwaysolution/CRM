package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.beans.UserBean;
import com.beans.UserManager;

/**
 * Servlet implementation class LoginHandler
 */
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		
		if(action.equalsIgnoreCase("AdminLogin"))
			adminLoginHandler(request,response);
		if(action.equalsIgnoreCase("UserLogin"))
			userLoginHandler(request,response);
		if(action.equalsIgnoreCase("LogoutUser"))
			logoutUserHandler(request,response);
	}
	private void adminLoginHandler(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		
		boolean isValidCredentials = UserManager.isValidCredential(userName, password, "SuperAdmin");
		if(isValidCredentials)	{	
			UserBean userBean = UserManager.createEntityFromUserName(userName);
			HttpSession session = request.getSession(true);
			session.setAttribute("userBean", userBean);
			forward("/AdminOption.jsp", request, response);
		}
		else
			response.sendRedirect("AdminLogin.jsp?errMsg=invalid");
	}

	private void userLoginHandler(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		boolean isValidCredentials = UserManager.isValidCredential(userName, password, "SuperAdmin");
		if(isValidCredentials)	{	
			UserBean userBean = UserManager.createEntityFromUserName(userName);
			HttpSession session = request.getSession(true);
			session.setAttribute("userBean", userBean);
			forward("/Dashboard.jsp", request, response);
		}
		else
			response.sendRedirect("Login.jsp?errMsg=invalid");
	}
	
	private void logoutUserHandler(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		session.invalidate();
		session=null;
		forward("/13102013/Login.jsp",request,response);
					
	}

	private void forward(String url, HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		//HttpSession session = request.getSession();
	 	RequestDispatcher dispatcher =  getServletContext().getRequestDispatcher(url);
 		dispatcher.forward(request, response);	 	
	}
}
