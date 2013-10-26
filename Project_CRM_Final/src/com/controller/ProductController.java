package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beans.ProductBean;
import com.beans.ProductManager;

/**
 * Servlet implementation class ProductController
 */
public class ProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("action");
		if(action.equalsIgnoreCase("AddProduct")) addProductHandler(request,response);
		if(action.equalsIgnoreCase("AddSubmitProduct")) addSubmitProduct(request,response);
		
	}

	
	private void addProductHandler(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		forward("/AddProduct.jsp",request,response);
		
	}
	private void addSubmitProduct(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		ProductBean productbean=ProductManager.createProductEntity(request);
		ProductManager.getAllProduct(productbean);
		forward("/Product.jsp",request,response);
	}
	
	
	private void forward(String url, HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
	{
				//HttpSession session = request.getSession();
			 	RequestDispatcher dispatcher =  getServletContext().getRequestDispatcher(url);
		 		dispatcher.forward(request, response);	 		
	}


}
