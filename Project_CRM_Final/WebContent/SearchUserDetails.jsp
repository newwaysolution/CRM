<%@ include file="Header.jsp"%>
<%@ include file="Menu1.jsp"%>
<%@ include file="Menu2.jsp"%>
<%@ page import="java.sql.ResultSet" %>
<%  
	ResultSet searchuser=(ResultSet)request.getAttribute("searchuser");
%>
<div id="content">
<div class="inner">
<div class="section">
	<div class="title_wrapper">
		<span class="title_wrapper_top"></span>
		<div class="title_wrapper_inner">
			<span class="title_wrapper_middle"></span>
			<div class="title_wrapper_content">
				<h2>User Details:</h2>
				
			</div>
		</div>
		<span class="title_wrapper_bottom"></span>
	</div>
	<div class="section_content">
		<span class="section_content_top"></span>
			<div class="section_content_inner">
			
						<div class="forms">
						
							<%
									while(searchuser.next()){
								%>
							<div class="row">
								<label>First Name:</label>
								
								<%=(searchuser.getString("FirstName")!=null)?searchuser.getString("FirstName"):""%>
							</div>
							<div class="row">
								<label>Last Name:</label>
								<%=(searchuser.getString("LastName")!=null)?searchuser.getString("LastName"):""%>
							</div>
							<div class="row">
								<label>Company:</label>
								
							</div>
							<div class="row">
								<label>Role:</label>
								
							</div>
							<div class="row">
								<label>Email:</label>
								
							</div>
							<div class="row">
								<label>ContactNo:</label>
								
							</div>
							<div class="row">
								<label>Address:</label>
								
							</div>
							<div class="row">
								<label>City:</label>
								
							</div>
							<div class="row">
								<label>PinCode:</label>
								
							</div>
							<div class="row">
								<label>Status:</label>
								
							</div>
							<%} %>
							
							</div>
						
							
			</div>			
			<span class="section_content_bottom"></span>
		</div>
	</div>
</div>
</div>

</div>
<%@include file="Footer.jsp" %>