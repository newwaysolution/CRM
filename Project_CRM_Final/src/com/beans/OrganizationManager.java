package com.beans;

import javax.servlet.http.HttpServletRequest;

import com.commonFiles.DbBean;

public class OrganizationManager {
	
	public static void saveOrganization(OrganizationBean orgBean) {
		String query="insert into OrganizationTable values ('"+orgBean.getName()+"','"+orgBean.getWebSite()+"','"+orgBean.getEmployees()+"','"+orgBean.getAnnualRevenue()+"','"+orgBean.getType()+"','"+orgBean.getAssignedTo()+"','"+orgBean.getNotifyOwner()+"','"+orgBean.getSICCOde()+"','"+orgBean.getPrimaryEmail()+"','"+orgBean.getPrimaryPhone()+"','"+orgBean.getIndustry()+"','"+orgBean.getFax()+"','"+orgBean.getOwnership()+"','"+orgBean.getTickerSymbol()+"','"+orgBean.getRating()+"','"+orgBean.getEmailOptOut()+"','"+orgBean.getBillingAddress()+"','"+orgBean.getBillingPOBox()+"','"+orgBean.getBillingCity()+"','"+orgBean.getBillingState()+"','"+orgBean.getBillingCode()+"','"+orgBean.getBillingCountry()+"','"+orgBean.getShippingAddress()+"','"+orgBean.getShippingPOBox()+"','"+orgBean.getShippingCity()+"','"+orgBean.getShippingState()+"','"+orgBean.getShippingCode()+"','"+orgBean.getShippingCountry()+"','"+orgBean.getDescription()+"')";
		System.out.println(query);
		try {
			DbBean.executeInsert(query);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static OrganizationBean createEntity(HttpServletRequest request) {
		OrganizationBean orgBean = new OrganizationBean();
		boolean notifyOwner;
		if(request.getParameter("notifyOwner").isEmpty()){
			notifyOwner = false;
		}
		else{
			notifyOwner = true;
		}
		System.out.println(notifyOwner);
		orgBean.setName(request.getParameter("oName"));
		orgBean.setWebSite(request.getParameter("website"));
		orgBean.setEmployees(request.getParameter("employees"));
		orgBean.setAnnualRevenue(request.getParameter("annualRevenue"));
		orgBean.setType(request.getParameter("type"));
		orgBean.setAssignedTo(request.getParameter("assignedTo"));
		orgBean.setNotifyOwner(request.getParameter("notifyOwner"));
		orgBean.setSICCOde(request.getParameter("SICCOde"));
		orgBean.setPrimaryEmail(request.getParameter("primaryEmail"));
		orgBean.setPrimaryPhone(request.getParameter("primaryPhone"));
		orgBean.setIndustry(request.getParameter("industry"));
		orgBean.setFax(request.getParameter("fax"));
		orgBean.setOwnership(request.getParameter("ownership"));
		orgBean.setTickerSymbol(request.getParameter("tickerSymbol"));
		orgBean.setRating(request.getParameter("rating"));
		orgBean.setEmailOptOut(request.getParameter("emailOptOut"));
		orgBean.setBillingAddress(request.getParameter("billingAddress"));
		orgBean.setBillingPOBox(request.getParameter("billingPOBox"));
		orgBean.setBillingCity(request.getParameter("billingCity"));
		orgBean.setBillingState(request.getParameter("billingState"));
		orgBean.setBillingCode(request.getParameter("billingCode"));
		orgBean.setBillingCountry(request.getParameter("billingCountry"));
		orgBean.setShippingAddress(request.getParameter("shippingAddress"));
		orgBean.setShippingPOBox(request.getParameter("shippingPOBox"));
		orgBean.setShippingCity(request.getParameter("shippingCity"));
		orgBean.setShippingState(request.getParameter("shippingState"));
		orgBean.setShippingCode(request.getParameter("shippingCode"));
		orgBean.setShippingCountry(request.getParameter("shippingCountry"));
		orgBean.setDescription(request.getParameter("descrption"));
		
		
		return orgBean;
	}
}
