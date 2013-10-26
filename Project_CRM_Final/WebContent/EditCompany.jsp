<%@page import="java.sql.ResultSet"%>
<%@page import="com.beans.CompanyBean"%>
<%@include file="Header.jsp" %>
<%@include file="Menu1.jsp" %>
<%@include file="Menu2.jsp" %>

<script type="text/javascript" src="firstJQuery.js"></script>
<script type="text/javascript" src="./datepicker/js/jquery-ui-1.8.23.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="style.css" />
<link rel="stylesheet" type="text/css" href="./datepicker/css/smoothness/jquery-ui-1.8.23.custom.css" />

<script>
			$(function() {
				$( "#startDate,#endDate" ).datepicker();
			});
</script>

<script type="text/javascript">
	$(document).ready(function(){
		$("#submit").click(function(){
			console.log("1");
			var isBlank=false;
			if($("#cCode").val() == ""){
				isBlank=true;
				$("#cCodeErr").fadeIn(2000);
			}
			if($("#cName").val() == ""){
				isBlank=true;
				$("#cNameErr").fadeIn(2000);
			}
			if($("#address1").val() == ""){
				isBlank=true;
				$("#address1Err").fadeIn(2000);
			}
			if($("#address2").val() == ""){
				isBlank=true;
				$("#address2Err").fadeIn(2000);
			}
			if($("#city").val() == ""){
				isBlank=true;
				$("#cityErr").fadeIn(2000);
			}
			if($("#state").val() == ""){
				isBlank=true;
				$("#stateErr").fadeIn(2000);
			}
			if($("#employeeName").val() == ""){
				isBlank=true;
				$("#employeeNameErr").fadeIn(2000);
			}
			if($("#employeeId").val() == ""){
				isBlank=true;
				$("#employeeIdErr").fadeIn(2000);
			}
			if($("#employeeNo").val() == ""){
				isBlank=true;
				$("#employeeNoErr").fadeIn(2000);
			}
			if(isBlank == false){
				return true;
			}
		});
		$("#cName").blur(function(){
			if($("#cName").val() != ""){
				$("#cNameErr").fadeOut();
			}
		});
		$("#cCode").blur(function(){
			if($("#cCode").val() != ""){
				$("#cCodeErr").fadeOut();
			}
		});
		$("#userName").blur(function(){
			if($("#userName").val() != ""){
				$("#userNameErr").fadeOut();
			}
		});
		$("#address1").blur(function(){
			if($("#address1").val() != ""){
				$("#address1Err").fadeOut();
			}
		});
		$("#address2").blur(function(){
			if($("#address2").val() != ""){
				$("#address2Err").fadeOut();
			}
		});
		$("#city").blur(function(){
			if($("#city").val() != ""){
				$("#cityErr").fadeOut();
			}
		});
		$("#state").blur(function(){
			if($("#state").val() != ""){
				$("#stateErr").fadeOut();
			}
		});
		$("#employeeName").blur(function(){
			if($("#employeeName").val() != ""){
				$("#employeeNameErr").fadeOut();
			}
		});
		$("#employeeId").blur(function(){
			if($("#employeeId").val() != ""){
				$("#employeeIdErr").fadeOut();
			}
		});
		$("#employeeNo").blur(function(){
			if($("#employeeNo").val() != ""){
				$("#employeeNoErr").fadeOut();
			}
		});
	});
</script>

<%
	ResultSet company = (ResultSet) request.getAttribute("company");
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
				<h2>Edit Company:</h2>
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
				<form action="CompanyController?action=EditSubmitCompany&companyId=<%=code%>" class="search_form" id="regform" name="regForm" method="post">
					<fieldset>
						<div class="forms">
							<h3>Company Details</h3>
							<div class="row">
								<label>Company Code:</label>
								<label><%=code%></label>
								
							</div>
							<div class="row">
								<label>Company Name:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="cName" value="<%=name%>" type="text" id="cName"/></span></li>
										<li style="display: none;color: red;" id="cNameErr">* Invalid Company Name</li>
									</ul>
								</div>
							</div>
							<div class="row">
								<label>Address 1:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="address1" value="<%=address1%>" type="text" id="address1"/></span></li>
									</ul>
								</div>
							</div>
							<div class="row">
								<label>Address 2:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="address2" value="<%=address2 %>" type="text" id="address2" /></span></li>
									</ul>
								</div>
							</div>			
							<div class="row">
								<label>City:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="city" value="<%=city%>" type="text" id="city"/></span></li>
										<li style="display: none;color: red;" id="cityError">* Invalid City</li>
									</ul>
								</div>
							</div>
							<div class="row">
								<label>State:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="state" value="<%=state%>" type="text" id="state"/></span></li>
								</ul>
								</div>
							</div>	
							<div class="row">
								<label>Zip:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="zip" value="<%=zip%>" type="text" id="zip"/></span></li>
									</ul>
								</div>
							</div>
							<div class="row">
								<label>License Start Date:</label>
								<div class="inputs">
									<ul>
										<li><input name="startDate" value="<%=licenseStartDate%>" id="startDate" type="text"/></li>
										<li style="display: none;color: red;" id="startDateErr">* Invalid Start Date</li>
									</ul>
								</div>
							</div>
							<div class="row">
								<label>License End Date:</label>
								<div class="inputs">
									<ul>
										<li><input name="endDate" value="<%=licenseEndDate%>" id="endDate" type="text"/></li>
										<li style="display: none;color: red;" id="endtDateErr">* Invalid End Date</li>
									</ul>
								</div>
							</div>
							<div class="row">
								<label>Status:</label>
								<div class="inputs">
									<div>
										<select id="isEnable" name="isEnable">
											<option value="Enable">Enable</option>
											<option value="Disable">Disable</option>
										</select>
									</div>
								</div>
							</div>
						</div>
						
					</fieldset>
					<fieldset>
						<div class="forms">
							<h3>Employee Details</h3>
							<div class="row">
								<label>Employee Name:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="eName" value="<%=eName%>" type="text" id="eName"/></span></li>
										<li style="display: none;color: red;" id="eNameErr">* Invalid Company Name</li>
									</ul>
								</div>
							</div>
							<div class="row">
								<label>Employee Email:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="eId" value="<%=eId%>" type="text" id="eId"/></span></li>
										<li style="display: none;color: red;" id="eIdErr">* Invalid Company Code</li>
									</ul>
								</div>
							</div>
							<div class="row">
								<label>Employee Contact :</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="eCNo" value="<%=eCNo%>" type="text" id="eCNo"/></span></li>
									</ul>
								</div>
							</div>
						</div>
						<%
							} 
						%>
					</fieldset>
					<fieldset>
						<div class="forms">
							<div class="row">
								<div class="inputs">
									<span class="button blue_button"><span><span>Update</span></span><input name="submitbtn" type="submit" id="submit"/></span>
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


</div>
<%@include file="Footer.jsp"%>