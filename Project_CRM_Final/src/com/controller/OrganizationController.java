package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beans.OrganizationBean;
import com.beans.OrganizationManager;

/**
 * Servlet implementation class OrganizationController
 */
public class OrganizationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrganizationController() {
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
		
		if(action.equalsIgnoreCase("AddOrganization"))
			addOrganizationHandler(request,response);
		if(action.equalsIgnoreCase("AddSubmitOrganization"))
			addSubmitOrganization(request,response);
				
	}
	
	private void addOrganizationHandler(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		forward("/CreateOrganization.jsp", request,response);
		
	}
	private void addSubmitOrganization(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		OrganizationBean organizationBean=OrganizationManager.createEntity(request);
		OrganizationManager.saveOrganization(organizationBean);
		
		forward("/OrganizationDashboard.jsp",request,response);
	}
	private void forward(String url, HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		//HttpSession session = request.getSession();
	 	RequestDispatcher dispatcher =  getServletContext().getRequestDispatcher(url);
 		dispatcher.forward(request, response);	 	
	}

}
