package com.controller;

import java.io.IOException;

import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beans.CompanyBean;
import com.beans.CompanyManager;
import com.commonFiles.Mails;

/**
 * Servlet implementation class CompanyController
 */
public class CompanyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CompanyController() {
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
		String action = request.getParameter("action");
		//if(action.equalsIgnoreCase("AdminLogin")) adminLoginHandler(request,response);
		if(action.equalsIgnoreCase("AddCompany")) addCompanyHandler(request,response);
		if(action.equalsIgnoreCase("AddSubmitCompany")) addSubmitCompanyHandler(request,response);
		if(action.equalsIgnoreCase("CompanyList")) addCompanyListHandler(request,response);
		if(action.equalsIgnoreCase("ViewCompany")) viewCompanyHandler(request,response);
		if(action.equalsIgnoreCase("EditCompany")) editCompanyHandler(request,response);
		if(action.equalsIgnoreCase("EditSubmitCompany"))
			try {
				editSubmitCompanyHandler(request,response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		if(action.equalsIgnoreCase("deleteCompany")) deleteCompanyHandler(request,response);
		if(action.equalsIgnoreCase("SearchCompany")) searchCompanyHandler(request,response);	
		if(action.equalsIgnoreCase("SearchResultsCompany")) searchResultsCompanyHandler(request,response);
		if(action.equalsIgnoreCase("ViewCompany")) viewCompanyHandler(request,response);
		if(action.equalsIgnoreCase("EnableCompany")) enableCompanyHandler(request, response);
		if(action.equalsIgnoreCase("AddEnableCompany")) addEnableCompany(request,response);
		if(action.equalsIgnoreCase("DisableCompany")) disableCompanyHandler(request,response);
		if(action.equalsIgnoreCase("AddDisableCompany")) addDisableCompany(request,response);
	}
	private void addCompanyHandler(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
			forward("/AddCompany.jsp",request,response);
		
	}
	
	private void addSubmitCompanyHandler(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		CompanyBean companybean=CompanyManager.createEntity(request);
		CompanyManager.saveCompany(companybean);
		Mails.sendMail();
		forward("/AdminOption.jsp",request,response);
		
	}
	
	private void searchCompanyHandler(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		forward("/CompanySearchForm.jsp",request,response);
	}
	
	private void searchResultsCompanyHandler(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ResultSet companyList = CompanyManager.searchCompany(request);
		request.setAttribute("companyList", companyList);
		forward("/CompanyList.jsp",request,response);
	}
	
	private void viewCompanyHandler(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String companyId = request.getParameter("companyId");
		ResultSet rs = CompanyManager.getCompanyDetail(companyId);
		request.setAttribute("company", rs);
		forward("/CompanyProfile.jsp", request, response);
	}

	private void addCompanyListHandler(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		ResultSet companyList = CompanyManager.getAllCompanies();
		request.setAttribute("companyList", companyList);
		forward("/CompanyList.jsp",request,response);
	}
	private void editCompanyHandler(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String companyId = request.getParameter("companyId");
		ResultSet rs = CompanyManager.getCompanyById(companyId);
		request.setAttribute("company", rs);
		forward("/EditCompany.jsp",request,response);
	}

	private void editSubmitCompanyHandler(HttpServletRequest request,
			HttpServletResponse response) throws Exception, ServletException, IOException {
		//String companyCode = request.getParameter("companyCode");
		CompanyManager.updateCompany(request);
		forward("/AdminOption.jsp",request,response);
	}

	private void enableCompanyHandler(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		forward("/EnableCompany.jsp",request,response);
	}
	
	private void addEnableCompany(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		CompanyManager.enableCopmany(request);
		forward("/AdminOption.jsp",request,response);
	}
	
	private void disableCompanyHandler(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		forward("/DisableCompany.jsp",request,response);
		
	}
	
	private void addDisableCompany(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		CompanyManager.diasbleCompany(request);
		forward("/AdminOption.jsp",request,response);
		
		
	}

	private void deleteCompanyHandler(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String companyId=request.getParameter("companyId");
		CompanyManager.deleteCompany(companyId);
		ResultSet companyList=CompanyManager.getAllCompanies();
		request.setAttribute("companyList",companyList);
		forward("/CompanyList.jsp",request,response);
		
	}
	private void forward(String url, HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher =  getServletContext().getRequestDispatcher(url);
 		dispatcher.forward(request, response);	 
		
	}



}
