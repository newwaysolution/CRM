<%@page import="java.sql.ResultSet"%>
<%@page import="com.beans.CompanyBean"%>
<%@include file="Header.jsp" %>
<%@include file="Menu1.jsp" %>
<%@include file="Menu2.jsp" %>

<%
	ResultSet company = (ResultSet)request.getAttribute("company");
while(company.next()) {
	String name = company.getString("CompanyName");
	String code = company.getString("CompanyCode");
	String eName = company.getString("EmployeeName");
	String eId = company.getString("EmployeeId");
	String eCNo = company.getString("EmployeeCNo");
	String address1 = company.getString("Address1");
	String address2 = company.getString("Address2");
	String city = company.getString("City");
	String state = company.getString("State");
	String zip = company.getString("Zip");
	String licenseStartDate = company.getString("LicenseStartDate");
	String licenseEndDate = company.getString("LicenseEndDate");
	String isEnabled = company.getString("IsEnable");
	System.out.println(name);
	System.out.println(code);
	System.out.println(licenseStartDate);
	System.out.println(isEnabled);
%>

<div id="content">
<div class="inner">
<div class="section">
	<div class="title_wrapper">
		<span class="title_wrapper_top"></span>
		<div class="title_wrapper_inner">
			<span class="title_wrapper_middle"></span>
			<div class="title_wrapper_content">
				<h2>Add New Company:</h2>
				<ul class="section_menu left">
					<!-- 
					<li><a href="#" class="selected_lk"><span class="l"><span></span></span><span class="m"><em>Complaints</em><span></span></span><span class="r"><span></span></span></a></li>
					<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Employees</em><span></span></span><span class="r"><span></span></span></a></li>
					<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Customers</em><span></span></span><span class="r"><span></span></span></a></li>
					<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Site Pages</em><span></span></span><span class="r"><span></span></span></a></li>
					 
					 <li><a href="#" class="selected_lk"><span class="l"><span></span></span><span class="m"><em>Company Registration</em><span></span></span><span class="r"><span></span></span></a></li>
					-->
				</ul>
			</div>
		</div>
		<span class="title_wrapper_bottom"></span>
	</div>
	<div class="section_content">
		<span class="section_content_top"></span>
			<div class="section_content_inner">
				<fieldset>
						<div class="forms">
							<h3>Company Details</h3>
							<br>
							
							<div class="row">
								<label>Company Name:</label>
								<label><%=name%></label>
							</div>
							<br>
							<div class="row">
								<label>Company Code:</label>
								<label><%=code %></label>
							</div>
							<br>
							<div class="row">
								<label>Address 1:</label>
								<label><%=address1 %></label>
							</div>
							<br>
							<div class="row">
								<label>Address 2:</label>
								<label><%=address2 %></label>
							</div>			
							<br>
							<div class="row">
								<label>City:</label>
								<label><%=city %></label>
							</div>
							<br>
							<div class="row">
								<label>State:</label>
								<label><%=state %></label>
							</div>	
							<br>
							<div class="row">
								<label>Zip:</label>
								<label><%=zip %></label>
							</div>
							<br>
							<div class="row">
								<label>License Start Date:</label>
								<label><%=licenseStartDate %></label>
							</div>
							<br>
							<div class="row">
								<label>License End Date:</label>
								<label><%=licenseEndDate %></label>
							</div>
							<br>
							<div class="row">
								<label>Status:</label>
								<label><%=isEnabled %></label>
							</div>
							<br>
						</div>
					</fieldset>
					<fieldset>
						<div class="forms">
							<h3>Employee Details</h3>
							<br>
							<div class="row">
								<label>Employee Name:</label>
								<label><%=eName%></label>
							</div>
							<br>
							<div class="row">
								<label>Employee Email:</label>
								<label><%=eId%></label>
							</div>
							<br>
							<div class="row">
								<label>Employee Contact :</label>
								<label><%=eCNo%></label>
							</div>
							<br>
						</div>
					</fieldset>		
					<fieldset>
						<div class="forms">
							<div class="row">
								<div class="inputs">
									<span class="button blue_button"><span><span><a href="CompanyController?action=EditCompany&companyId=<%=code%>" >Update</a></span></span>
								</div>
							</div>
						</div>
					</fieldset>
					<%
							} 
					%>			
				</div>			
				<span class="section_content_bottom"></span>
			</div>
		</div>
	</div>
</div>
</div>
<%@include file="Footer.jsp"%>