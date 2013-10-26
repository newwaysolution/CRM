package com.controller;

import java.io.IOException;
import java.sql.ResultSet;




import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.beans.CompanyManager;
import com.beans.UserBean;
import com.beans.UserManager;

/**
 * Servlet implementation class UserController
 */
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");
		if(action.equalsIgnoreCase("AdminLogin")) adminLoginHandler(request,response);
		if(action.equalsIgnoreCase("AddUser")) addUserHandler(request,response);
		if(action.equalsIgnoreCase("AddSubmitUser")) addSubmitUserHandler(request,response);
		if(action.equalsIgnoreCase("EditUser")) editUserHandler(request,response);
		if(action.equalsIgnoreCase("EditUserSubmit"))
			try {
				editUserSubmitHandler(request,response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		if(action.equalsIgnoreCase("ViewUser")) viewUserHandler(request,response);
		if(action.equalsIgnoreCase("DeleteUser")) deleteUserHandler(request,response);
		if(action.equalsIgnoreCase("SearchUser")) searchUserHandler(request,response);
		if(action.equalsIgnoreCase("SearchSubmitUser")) searchSubmitUserHandler(request,response);
		if(action.equalsIgnoreCase("UserList")) addUserListHandler(request,response);
		if(action.equalsIgnoreCase("ChangePassword")) changePasswordHandler(request,response);
		if(action.equalsIgnoreCase("AddChangePassword")) addchangePassword(request,response);
		if(action.equalsIgnoreCase("EnableUser")) enableUserHandler(request,response);
		if(action.equalsIgnoreCase("AddEnableUser")) addEnableUser(request,response);
		if(action.equalsIgnoreCase("DisableUser")) disableUserHandler(request,response);
		if(action.equalsIgnoreCase("AddDisableUser")) addDisableUser(request,response);
		if(action.equalsIgnoreCase("LogoutUser")) logoutUserHandler(request,response);
		
	}
	private void logoutUserHandler(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		session.invalidate();
		session=null;
		forward("/AdminLogin.jsp",request,response);
		
	}

	private void adminLoginHandler(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		boolean isValidCredentials = UserManager.isValidCredential(username, password, "SuperAdmin");
		if(isValidCredentials)	{	
			UserBean userBean = UserManager.createEntityFromUserName(username);
			HttpSession session = request.getSession(true);
			session.setAttribute("userBean", userBean);
			forward("/AdminOption.jsp", request, response);
		}
		else
			response.sendRedirect("Login.jsp?errMsg=invalid");
	}
	
	private void addUserHandler(HttpServletRequest request,	HttpServletResponse response) throws ServletException, IOException {
		ResultSet rs=CompanyManager.getAllCompanies();
		request.setAttribute("companyNames", rs);
		
		forward("/AddUser.jsp", request, response);
		
	}
	
	private void addSubmitUserHandler(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		UserBean userbean=UserManager.createEntity(request);
		UserManager.saveUser(userbean);
		
		forward("/AdminOption.jsp",request,response);
		
	}
	
	private void viewUserHandler(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		//String userId = request.getParameter("userID");
		ResultSet user = UserManager.getUserDetails(request);
		request.setAttribute("user", user);
		forward("/UserProfile.jsp" , request , response);
	}

	private void editUserHandler(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		//String userId = request.getParameter("userId");
		ResultSet resultset=CompanyManager.getAllCompanies();
		request.setAttribute("companyNames", resultset);
		
		ResultSet rs = UserManager.getUserDetails(request);
		request.setAttribute("rs", rs);
		forward("/EditUser.jsp",request,response);
		
	}

	private void editUserSubmitHandler(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		UserManager.updateUser(request);
		forward("/AdminOption.jsp",request,response);
		
	}

	private void deleteUserHandler(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String userId = request.getParameter("userId");
		UserManager.deleteUser(userId);
		ResultSet userList=UserManager.getUserList(request);
		request.setAttribute("userList", userList);
		forward("/UserList.jsp",request,response);
		
	}
	
	private void searchUserHandler(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		ResultSet rs=CompanyManager.getAllCompanies();
		request.setAttribute("companyNames", rs);
		
		forward("/SearchUser.jsp",request,response);
	}
	private void searchSubmitUserHandler(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		ResultSet userList=UserManager.searchUserDetails(request);
		request.setAttribute("userList", userList);
		forward("/UserList.jsp",request,response);
	}
	

	private void addUserListHandler(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		ResultSet userList=UserManager.getUserList(request);
		request.setAttribute("userList", userList);
		forward("/UserList.jsp",request,response);
		
	}
	private void changePasswordHandler(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		forward("/ChangePassword.jsp",request,response);
	}
	
	private void addchangePassword(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		UserManager.addChangePassword(request);
		
			forward("/AdminOption.jsp",request,response);
		
	}
	private void enableUserHandler(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		forward("/EnableUser.jsp",request,response);
	}
	
	private void addEnableUser(HttpServletRequest request,
			HttpServletResponse response) {
		UserManager.enableUser(request);
		try {
			forward("/AdminOption.jsp",request,response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	private void disableUserHandler(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		forward("/DisableUser.jsp",request,response);
		
	}
	private void addDisableUser(HttpServletRequest request,
			HttpServletResponse response) {
		UserManager.disableUse(request);
		try {
			forward("/AdminOption.jsp",request,response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


	private void forward(String url, HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
	{
				//HttpSession session = request.getSession();
			 	RequestDispatcher dispatcher =  getServletContext().getRequestDispatcher(url);
		 		dispatcher.forward(request, response);	 		
	}

}



