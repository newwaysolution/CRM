package com.controller;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.beans.ContactBean;
import com.beans.ContactManager;
import com.beans.UserBean;
import com.beans.UserManager;

/**
 * Servlet implementation class UserController1
 */
public class UserController1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserController1() {
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
			String action=request.getParameter("action");
			if(action.equalsIgnoreCase("UserLogin")) userLoginHandler(request,response);
			if(action.equalsIgnoreCase("AddContact")) addContactHandler(request,response);
			if(action.equalsIgnoreCase("AddSaveContact")) addSaveContactHandler(request,response);
			if(action.equalsIgnoreCase("ContactList")) addContactList(request,response);
				if(action.equalsIgnoreCase("LogoutUser"))  logoutUSerHandler(request,response);
			
	}

	

	private void logoutUSerHandler(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
	
			HttpSession session=request.getSession();
			session.invalidate();
			session=null;
			forward("/Login.jsp",request,response);
			
		
	}

	private void userLoginHandler(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		boolean isValidCredentials = UserManager.isValidCredential(username, password, "User");
		if(isValidCredentials)	{	
			UserBean userBean = UserManager.createEntityFromUserName(username);
			HttpSession session = request.getSession(true);
			session.setAttribute("userBean", userBean);
			forward("/UserOption.jsp", request, response);
		}
		else
			response.sendRedirect("../13102013/UserLogin.jsp?errMsg=invalid");
	}

	private void addContactHandler(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
			forward("/AddContact.jsp",request,response);
	
		}
	private void addSaveContactHandler(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		ContactBean contactbean=ContactManager.addContact(request);
		ContactManager.getContact(contactbean);
		forward("/UserOption.jsp",request,response);
	}

	private void addContactList(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		ResultSet contactList=ContactManager.getAllContact();
		request.setAttribute("contactList", contactList);
		forward("/ContactList.jsp",request,response);
		
	}
	

	private void forward(String url, HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher =  getServletContext().getRequestDispatcher(url);
 		dispatcher.forward(request, response);	 		
	}
		
	}


