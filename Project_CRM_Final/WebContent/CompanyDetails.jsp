<%@page import="java.sql.ResultSet" %>
<%@page import="java.util.ArrayList" %>
<%@include file="Header.jsp" %>
<%@include file="Menu1.jsp" %>
<%@include file="Menu2.jsp" %>
<!--[if !IE]>start content<![endif]-->
<%        
	ResultSet companyDetails= (ResultSet)request.getAttribute("companyDetails");
	companyDetails.next();
%>

<div id="content">
	<div class="inner">
		<div class="section">
        	<div class="title_wrapper">
            	<span class="title_wrapper_top"></span>
				<div class="title_wrapper_inner">
              	    <span class="title_wrapper_middle"></span>
					<div class="title_wrapper_content">
						<h2>Company Details</h2>
                    </div>
                </div>
                <span class="title_wrapper_bottom"></span>
			</div>
            <div class="section_content">
            	<span class="section_content_top"></span>
                <div class="section_content_inner">
					<div class="forms_wrapper">
                    	<form id="addCompanyForm" action="CompanyController?action=SeacrhResultsCompany" method="post" class="search_form general_form">
                        	<fieldset>
                            	<div class="forms">
                                	<h3><%companyDetails.getString("Name"); %></h3>
                                    	<div class="row">
                                            <label>Company Code:</label>
                                            <label> <%= companyDetails.getString("Code")%></label>                
                                        </div>
                                        <div class="row">
                                            <label>Company Name:</label>
                                            <label> <%= companyDetails.getString("Name")%></label>
                                        </div>
                                        <div class="row">
                                            <label>Address1:</label>
                                            <label> <%= companyDetails.getString("Address1")%></label>
                                        </div>
                                        <div class="row">
                                            <label>Address2:</label>
                                            <label> <%= companyDetails.getString("Address2")%></label>
                                        </div>
                                        <div class="row">
                                            <label>City:</label>
                                            <label> <%= companyDetails.getString("City")%></label>
                                        </div>
                                        <div class="row">
                                            <label>State:</label>
                                            <label> <%= companyDetails.getString("State")%></label>
                                        </div>
                                        <div class="row">
                                            <label>Zip:</label>
                                            <label> <%= companyDetails.getString("Zip")%></label>
                                        </div>
                                        <div class="row">
                                            <label>License valid <br/>between:</label>
                                            <label> <%= companyDetails.getString("LicenseStartDate")%> to <%= companyDetails.getString("Code")%></label>
                                        </div>
									</div>    
								</fieldset>
                        	</form>
                        </div>
                     </div>
                     <span class="section_content_bottom"></span>
                </div>
        	</div>
        </div>
	</div>
<%@include file="Footer.jsp" %>
