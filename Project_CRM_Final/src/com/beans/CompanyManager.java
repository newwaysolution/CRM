package com.beans;

import java.sql.ResultSet;


import javax.servlet.http.HttpServletRequest;

import com.commonFiles.DbBean;



public class CompanyManager {

	public static CompanyBean createEntity(HttpServletRequest request) {
		CompanyBean companybean=new CompanyBean();
		companybean.setCompanyCode(request.getParameter("Code"));
		companybean.setCompanyName(request.getParameter("Name"));
		companybean.setEmployeeName(request.getParameter("employeeName"));
		companybean.setEmployeeId(request.getParameter("employeeId"));
		companybean.setEmployeeCNo(request.getParameter("employeeCNo"));
		companybean.setAddress1(request.getParameter("Address1"));
		companybean.setAddress2(request.getParameter("Address2"));
		companybean.setCity(request.getParameter("City"));
		companybean.setState(request.getParameter("State"));
		companybean.setZIP(request.getParameter("ZIP"));
		companybean.setStartDate(request.getParameter("StartDate"));
		companybean.setEndDate(request.getParameter("EndDate"));
		companybean.setIsEnable(request.getParameter("IsEnable"));
		return companybean;
	}

	public static void saveCompany(CompanyBean companybean)  {
		String query="insert into CompanyTable values ('"+companybean.getCompanyCode()+"','"+companybean.getCompanyName()+"','"+companybean.getEmployeeName()+"','"+companybean.getEmployeeId()+"','"+companybean.getEmployeeCNo()+"','"+companybean.getAddress1()+"','"+companybean.getAddress2()+"','"+companybean.getCity()+"','"+companybean.getState()+"','"+companybean.getZIP()+"','"+companybean.getStartDate()+"','"+companybean.getEndDate()+"','"+companybean.getIsEnable()+"'NEWID(),GETDATE(),GETDATE())";
		try {
			DbBean.executeInsert(query);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
	}

	public static ResultSet getAllCompanies() {
		
		String query="select convert(varchar(32),LicenseStartDate,103) LicenseStartDate, convert(varchar(32),LicenseEndDate,103) LicenseEndDate,* from CompanyTable";
		ResultSet companyList=DbBean.executeSelect(query);
				
		return companyList;
	}

	public static ResultSet searchCompany(HttpServletRequest request) {
		String whereClause = buildWhereClause(request);
		String query = "select convert(varchar(32),LicenseStartDate,103) LicenseStartDate,convert(varchar(32),LicenseEndDate,103) LicenseEndDate, * from CompanyTable "+whereClause;
		System.out.println(query);
		ResultSet searchedCompany = DbBean.executeSelect(query);
		return searchedCompany;
		
	}

	private static String buildWhereClause(HttpServletRequest request) {
		String wherePart = "where 1=1";
		if(request.getParameter("CompanyCode")!=null && !request.getParameter("CompanyCode").equalsIgnoreCase("")){
			wherePart += " and CompanyCode = '"+request.getParameter("CompanyCode")+"' ";
		}
		if(request.getParameter("CompanyName")!=null && !request.getParameter("CompanyName").equalsIgnoreCase("")){
			wherePart += " and CompanyName like '%"+request.getParameter("CompanyName")+"%' ";
		}
		if(request.getParameter("address1")!=null && !request.getParameter("address1").equalsIgnoreCase("")){
			wherePart += " and address1 like '%"+request.getParameter("address1")+"%'";
		}
		if(request.getParameter("address2")!=null && !request.getParameter("address2").equalsIgnoreCase("")){
			wherePart += " and address2 like '%"+request.getParameter("address2")+"%'";
		}
		
		if(request.getParameter("licenseDateFrom")!=null && !request.getParameter("licenseDateFrom").equalsIgnoreCase("")){
			wherePart += " and convert(varchar(32),LicenseStartDate,103) >= '"+request.getParameter("licenseDateFrom")+"'";
		}
		if(request.getParameter("licenseDateTo")!=null && !request.getParameter("licenseDateTo").equalsIgnoreCase("")){
			wherePart += " and convert(varchar(32),LicenseEndDate,103) <= '"+request.getParameter("licenseDateTo")+"'";
		}
		return wherePart;
	}

	public static void enableCopmany(HttpServletRequest request) {
		String query="update CompanyTable SET IsEnable='Enable' where CompanyName='"+request.getParameter("cName")+"'";
		System.out.println(query);
		try {
			DbBean.executeInsert(query);
		} catch (Exception e) {

			e.printStackTrace();
		}
	}

	public static void diasbleCompany(HttpServletRequest request) {
		String query="update CompanyTable SET IsEnable='Disable' where CompanyName='"+request.getParameter("cName")+"'";
		System.out.println(query);
		try {
			DbBean.executeInsert(query);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}

		public static ResultSet getCompanyDetail(String companyId) {
		String query = "SELECT * FROM CompanyTable WHERE CompanyCode = "+companyId;
		ResultSet rs = DbBean.executeSelect(query);
		return rs;

	}

	public static void deleteCompany(String companyId) {
		String query="update CompanyTable SET IsEnable='Disbale' where CompanyCode= '"+companyId+"'"; 
		System.out.println(query);
		try {
			DbBean.executeInsert(query);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	
	}

	public static ResultSet getCompanyById(String companyId) {
		String query = "select convert(varchar(32),LicenseStartDate,103) LicenseStartDate, convert(varchar(32),LicenseEndDate,103) LicenseEndDate,convert(varchar(32),DateCreated,103) DateCreated, convert(varchar(32),DateModified,103) DateModified,* from CompanyTable where CompanyCode = '"+companyId+"'";
		System.out.println(query);
		ResultSet rs = DbBean.executeSelect(query);
		return rs;
	}

	public static void updateCompany(HttpServletRequest request) throws Exception {
		String query = "update CompanyTable set CompanyName='"+request.getParameter("cName")+"',EmployeeName='"+request.getParameter("eName")+"',EmployeeId='"+request.getParameter("eId")+"',EmployeeCNo='"+request.getParameter("eCNo")+"',Address1='"+request.getParameter("address1")+"',Address2='"+request.getParameter("address2")+"',City='"+request.getParameter("city")+"',State='"+request.getParameter("state")+"',Zip='"+request.getParameter("zip")+"',LicenseStartDate='"+request.getParameter("startDate")+"',LicenseEndDate='"+request.getParameter("endDate")+"',IsEnable='"+request.getParameter("isEnable")+"',DateModified=GETDATE() where CompanyCode = '"+request.getParameter("companyId")+"'";
		System.out.println(query);
		DbBean.executeInsert(query);
	}
	
 
		

}
