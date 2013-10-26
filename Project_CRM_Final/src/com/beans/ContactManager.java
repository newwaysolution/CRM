package com.beans;

import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;

import com.commonFiles.DbBean;


public class ContactManager {

	public static ContactBean addContact(HttpServletRequest request) {
		ContactBean contactbean=new ContactBean();
		contactbean.setFirstName(request.getParameter("fname"));
		contactbean.setLastName(request.getParameter("lname"));
		contactbean.setPrimaryEmail(request.getParameter("email"));
		contactbean.setOfficePhone(request.getParameter("OPhone"));
		contactbean.setMobilePhone(request.getParameter("MPhone"));
		contactbean.setHomePhone(request.getParameter("HPhone"));
		contactbean.setDateOfBirth(request.getParameter("DOB"));
		contactbean.setFax(request.getParameter("fax"));
		contactbean.setOrganizationName(request.getParameter("orgName"));
		contactbean.setAssignedTo(request.getParameter("assign"));
		contactbean.setStartDate(request.getParameter("SDate"));
		contactbean.setLastDate(request.getParameter("lDate"));
		contactbean.setAddress(request.getParameter("address"));
		contactbean.setCity(request.getParameter("city"));
		contactbean.setState(request.getParameter("state"));
		contactbean.setZIP(request.getParameter("zip"));
		contactbean.setCountry(request.getParameter("country"));
		
		return contactbean;
	}

	public static void getContact(ContactBean contactbean) {
		String query="insert into ContactTable values('"+contactbean.getFirstName()+"','"+contactbean.getLastName()+"','"+contactbean.getPrimaryEmail()+"','"+contactbean.getOfficePhone()+"','"+contactbean.getMobilePhone()+"','"+contactbean.getHomePhone()+"','"+contactbean.getDateOfBirth()+"','"+contactbean.getFax()+"','"+contactbean.getOrganizationName()+"','"+contactbean.getAssignedTo()+"','"+contactbean.getStartDate()+"','"+contactbean.getLastDate()+"','"+contactbean.getAddress()+"','"+contactbean.getCity()+"','"+contactbean.getState()+"','"+contactbean.getZIP()+"','"+contactbean.getCountry()+"')";
		try {
			DbBean.executeInsert(query);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}

	public static  ResultSet getAllContact() {
		String query="select* from ContactTable";
		ResultSet contactList=DbBean.executeSelect(query);
		return contactList;
	}

}
