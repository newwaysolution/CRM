<%@ page language="java" import="java.sql.ResultSet" %>
<%@ include file="Header11.jsp"%>
<%@ include file="Menu11.jsp"%>
<%@ include file="Menu22.jsp"%>

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="./datepicker/js/jquery-ui-1.8.23.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="style.css" />
<link rel="stylesheet" type="text/css" href="./datepicker/css/smoothness/jquery-ui-1.8.23.custom.css" />
		
<script>
	$(document).ready(function(){
		$("#submit").click(function(){
			console.log("1");
			var isBlank=false;
			
			if($("#fName").val() == ""){
				isBlank=true;
				$("#fNameErr").fadeIn(2000);
			}
			if($("#lName").val() == ""){
				isBlank=true;
				$("#lNameErr").fadeIn(2000);
			}
			if($("#email").val() == ""){
				isBlank=true;
				$("#emailErr").fadeIn(2000);
			}
			if($("#OPhone").val() == ""){
				isBlank=true;
				$("#oPhoneErr").fadeIn(2000);
			}
			if($("#MPhone").val() == ""){
				isBlank=true;
				$("#mPhoneErr").fadeIn(2000);
			}
			
			});
		
		$(function() {
			$( "#DOB,#SDate,#lDate" ).datepicker();
		});
	
	});
</script>
<body>
<%					String msg="";
					if(request.getParameter("Msg")!=null && !request.getParameter("Msg").equals("")){
						if(request.getParameter("Msg").equalsIgnoreCase("success")){
							msg = "successfully inserted";
						}
						if(request.getParameter("Msg").equalsIgnoreCase("Err")){
							msg = "not inserted data";
						}
					}
					out.println(msg);
				%>
<div id="content">
	<div class="inner">
	 <div class="section">
	<div class="title_wrapper">
		<span class="title_wrapper_top"></span>
		<div class="title_wrapper_inner">
			<span class="title_wrapper_middle"></span>
			<div class="title_wrapper_content">
				<h2>Add Contact:</h2>
				<ul class="section_menu left">
					<!-- 
					<li><a href="#" class="selected_lk"><span class="l"><span></span></span><span class="m"><em>Complaints</em><span></span></span><span class="r"><span></span></span></a></li>
					<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Employees</em><span></span></span><span class="r"><span></span></span></a></li>
					<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Customers</em><span></span></span><span class="r"><span></span></span></a></li>
					<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Site Pages</em><span></span></span><span class="r"><span></span></span></a></li>
					 
					 <li><a href="#" class="selected_lk"><span class="l"><span></span></span><span class="m"><em></em><span></span></span><span class="r"><span></span></span></a></li>
					-->	
				</ul>
			</div>
		</div>
		<span class="title_wrapper_bottom"></span>
	</div>
 
 
	<div class="section_content">
		<span class="section_content_top"></span>
			<div class="section_content_inner">
				<form action="UserController1?action=addsaveContact" class="search_form" id="regform" method="post">
					<fieldset>
						<div class="forms">
							<h3>Creating New Contact</h3>
							<div class="row">
								<label>First Name:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper medium_input"><input class="text" name="fname" type="text" id="fName"/></span></li>
										
										<li>Last Name:</li>
										<li><span class="input_wrapper medium_input"><input class="text" name="lname" type="text" id="lName"/></span></li>
										
									</ul>
								
								</div>
							</div>
							<div class="row">
								<label>Primary Email:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="email" type="text" id="email" placeholder="Primary Email" /></span></li>
										<li style="display: none;color: red;" id="emailErr">* Enter Email id</li>
									</ul>
								</div>
							</div>
							<div class="row">	
								<label> Office Phone:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="OPhone" type="text" id="OPhone"/></span></li>
										<li style="display: none;color: red;" id="oPhoneErr">* Enter Office Phone</li>
									</ul>
								</div>
							</div>
							<div class="row">
								<label>Mobile Phone:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="MPhone" type="text" id="MPhone"/></span></li>
										<li style="display: none;color: red;" id="mPhoneErr">* Enter Mobile Phone</li>
									</ul>
								</div>
								</div>
								<div class="row">
								<label>Home Phone:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="HPhone" type="text" id="HPhone"/></span></li>
										
									</ul>
								</div>
							</div>
							<div class="row">
								<label>Date of birth:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="DOB" type="text" id="DOB"/></span></li>
										
									</ul>
								</div>
								</div>
								<div class="row">
								<label>Fax:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="fax" type="text" id="Fax"/></span></li>
										
									</ul>
								</div>
							</div>
							<div class="row">
								<label>Organization Name:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="orgName" type="text" id="orgName"/></span></li>
										
									</ul>
								</div>
								</div>
								<div class="row">
								<label>Assigned to:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="assign" type="text" id="assign"/></span></li>
										
									</ul>
								</div>
							</div>
							<div class="row">
								<label>Support Start Date:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="SDate" type="text" id="SDate"/></span></li>
										
									</ul>
								</div>
								</div>
								<div class="row">
								<label>Support Last Date:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="lDate" type="text" id="lDate"/></span></li>
									</ul>
								</div>
							</div>
							<div class="row">
								<label>Address:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="address" type="text" id="address"/></span></li>
										
									</ul>
								</div>
								</div>
								<div class="row">
								<label>City:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="city" type="text" id="city"/></span></li>
									</ul>
								</div>
							</div>
							<div class="row">
								<label>state:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="state" type="text" id="state"/></span></li>
									</ul>
								</div>
							</div>
							<div class="row">
								<label>ZIP:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="zip" type="text" id="zip"/></span></li>
										
									</ul>
								</div>
								</div>
								<div class="row">
								<label>Country:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="country" type="text" id="country"/></span></li>
									</ul>
								</div>
							</div>
							</div>
						</fieldset>
								
					<fieldset>
						<div class="forms">
							<div class="row">
								<div class="inputs">
									<span class="button blue_button"><span><span>Save</span></span><input name="savebtn" type="Button" id="submit"/></span>
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
	