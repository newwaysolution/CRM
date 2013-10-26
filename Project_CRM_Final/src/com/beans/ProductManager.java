package com.beans;

import javax.servlet.http.HttpServletRequest;

import com.commonFiles.DbBean;

public class ProductManager {

	public static ProductBean createProductEntity(HttpServletRequest request) {
		ProductBean productbean=new ProductBean();
		productbean.setProductName(request.getParameter("ProductName"));
		productbean.setProductCompany(request.getParameter("ProductCompany"));
		productbean.setCity(request.getParameter("City"));
		productbean.setPrice(request.getParameter("Price"));
		productbean.setMfgDate(request.getParameter("MfgDate"));
		return productbean;
	}

	public static void getAllProduct(ProductBean productbean) {
		String query="insert into ProductTable values('"+productbean.getProductName()+"','"+productbean.getProductCompany()+"','"+productbean.getCity()+"','"+productbean.getPrice()+"','"+productbean.getMfgDate()+"')";
		try {
			DbBean.executeInsert(query);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
