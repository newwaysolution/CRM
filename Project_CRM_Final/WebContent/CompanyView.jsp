

<%@page import="java.sql.ResultSet"%>
<%@ include file="Header.jsp"%>
<%@ include file="Menu1.jsp"%>
<%@ include file="Menu2.jsp"%>

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="firstJQuery.js"></script>
		<script type="text/javascript" src="./datepicker/js/jquery-ui-1.8.23.custom.min.js"></script>
		<script>
			$(function() {
				$( "#lsd,#led" ).datepicker();
			});
		</script>
		
		<link rel="stylesheet" type="text/css" href="style.css" />
		<link rel="stylesheet" type="text/css" href="./datepicker/css/smoothness/jquery-ui-1.8.23.custom.css" />
		
<script>
	$(document).ready(function(){
		$("#submit").click(function(){
			console.log("1");
			var isBlank=false;
			
			if($("#Code").val() == ""){
				isBlank=true;
				$("#codeErr").fadeIn(2000);
			}
			if($("#cName").val() == ""){
				isBlank=true;
				$("#cNameErr").fadeIn(2000);
			}
		
			});
	});
</script>
<body>
<%
	ResultSet companyDetails = (ResultSet)request.getAttribute("companyDetails");
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
				<h2> Company Details:</h2>
				<ul class="section_menu left">
					<!-- 
					<li><a href="#" class="selected_lk"><span class="l"><span></span></span><span class="m"><em>Complaints</em><span></span></span><span class="r"><span></span></span></a></li>
					<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Employees</em><span></span></span><span class="r"><span></span></span></a></li>
					<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Customers</em><span></span></span><span class="r"><span></span></span></a></li>
					<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Site Pages</em><span></span></span><span class="r"><span></span></span></a></li>
					 
					 <li><a href="#" class="selected_lk"><span class="l"><span></span></span><span class="m"><em>company Registration</em><span></span></span><span class="r"><span></span></span></a></li>
				-->
				</ul>
			</div>
		</div>
		<span class="title_wrapper_bottom"></span>
	</div>
 
 
	<div class="section_content">
		<span class="section_content_top"></span>
			<div class="section_content_inner">
				<form action="CompanyController?action=AddSubmitCompany" class="search_form" id="regform" method="post">
					<fieldset>
						<div class="forms">
							<h3>Company Details</h3>
							<div class="row">
								<label>Company Name:</label>
								<div class="inputs">
									<label><%=companyDetails.getString("CompanyName")  %></label>
								</div>
							</div>
							<div class="row">
								<label>Address 1:</label>
								<div class="inputs">
									<label><%=companyDetails.getString("Address1")  %></label>
								</div>
							</div>
							<div class="row">
								<label>Address2:</label>
								<div class="inputs">
									<label><%=companyDetails.getString("Address2")  %></label>
								</div>
							</div>
							<div class="row">
								<label>City:</label>
								<div class="inputs">
										<label><%=companyDetails.getString("City")  %></label>
								</div>
							</div>	
							<div class="row">
								<label>State:</label>
								<div class="inputs">
									
										<label><%=companyDetails.getString("State")  %></label>
								</div>
							</div>
							<div class="row">
								<label>ZIP:</label>
								<div class="inputs">
										<label><%=companyDetails.getString("Zip")  %></label>
								</div>
							</div>			
							<div class="row">
								<label>License start Date:</label>
								<div class="inputs">
											
								</div>
							</div>	
							<div class="row">
								<label>License End  Date:</label>
								<div class="inputs">
										
								</div>
							</div>
							<div class="row">
								<label>Status:</label>
								<div class="inputs">
									<div>
										<label><%=companyDetails.getString("IsEnable")  %></label>
									</div>
								</div>
							</div>
						</div>
					</fieldset>
								
					
				</form>				
			</div>			
			<span class="section_content_bottom"></span>
		</div>
	</div>
	</div>
	</div>
	</body>
	<%@ include file="Footer.jsp" %>
		