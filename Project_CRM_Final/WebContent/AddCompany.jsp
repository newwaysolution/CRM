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
<body>

<div id="content">
	<div class="inner">
		<div class="section">
			<div class="title_wrapper">
				<span class="title_wrapper_top"></span>
				<div class="title_wrapper_inner">
					<span class="title_wrapper_middle"></span>
					<div class="title_wrapper_content">
						<h2>Add Company Details:</h2>
						<ul class="section_menu left">
							<!-- 
							<li><a href="#" class="selected_lk"><span class="l"><span></span></span><span class="m"><em>Complaints</em><span></span></span><span class="r"><span></span></span></a></li>
							<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Employees</em><span></span></span><span class="r"><span></span></span></a></li>
							<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Customers</em><span></span></span><span class="r"><span></span></span></a></li>
							<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Site Pages</em><span></span></span><span class="r"><span></span></span></a></li>
							 -->
						 	<li><a href="#" class="selected_lk"><span class="l"><span></span></span><span class="m"><em>company Registration</em><span></span></span><span class="r"><span></span></span></a></li>
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
									<label>Company Code:</label>
									<div class="inputs">
										<ul>
											<li><span class="input_wrapper"><input class="text" name="cCode" type="text" id="cCode"/></span></li>
											<li style="display: none;color: red;" id="codeErr">* Enter code</li>
										</ul>
									</div>
								</div>
								<div class="row">
									<label>Company Name:</label>
									<div class="inputs">
										<ul>
											<li><span class="input_wrapper"><input class="text" name="Name" type="text" id="cName"/></span></li>
											<li style="display: none;color: red;" id="cNameErr">* Enter Company Name</li>
										</ul>
									</div>
								</div>
								<div class="row">
									<label>Address 1:</label>
									<div class="inputs">
										<ul>
											<li><span class="input_wrapper"><input class="text" name="address1" type="text" id="address1"/></span></li>
											<li style="display: none;color: red;" id="Add1Err">* Enter address</li>
										</ul>
									</div>
								</div>
								<div class="row">
									<label>Address2:</label>
									<div class="inputs">
										<ul>
											<li><span class="input_wrapper"><input class="text" name="address2" type="text" id="address2"/></span></li>
											<li style="display: none;color: red;" id="Add2Err">Enter Address2 </li>
										</ul>
									</div>
								</div>
								<div class="row">
									<label>City:</label>
									<div class="inputs">
										<ul>
											<li><span class="input_wrapper"><input class="text" name="City" type="text" id="city"/></span></li>
											<li style="display: none;color: red;" id="cityErr">* Enter City</li>
										</ul>
									</div>
								</div>	
								<div class="row">
									<label>State:</label>
									<div class="inputs">
										<ul>
											<li><span class="input_wrapper"><input class="text" name="state" type="text" id="state"/></span></li>
											<li style="display: none;color: red;" id="stateErr">* Enter State</li>
										</ul>
									</div>
								</div>
								<div class="row">
									<label>ZIP:</label>
									<div class="inputs">
										<ul>
											<li><span class="input_wrapper"><input class="text" name="zip" type="text" id="zip" /></span></li>
										</ul>
									</div>
								</div>			
								<div class="row">
									<label>License start Date:</label>
									<div class="inputs">
										<ul>
											<li><span class="input_wrapper"><input class="text" name="startDate" type="text" id="lsd"/></span></li>
										</ul>
									</div>
								</div>	
								<div class="row">
									<label>License End  Date:</label>
									<div class="inputs">
										<ul>
											<li><span class="input_wrapper"><input class="text" name="endDate" type="text" id="led"/></span></li>
										</ul>
									</div>
								</div>
								<div class="row">
									<label>Status:</label>
									<div class="inputs">
										<div>
											<select id="isEnable" name="isEnable" >
												<option value="Enable">Enable</option>
												<option value="Disable">Disable</option>
											</select>
										</div>
									</div>
								</div>
							</div>
						</fieldset>
						
						<fieldset>
							<h3>Employee Details</h3>
							<div class="row">
								<label>Name:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="employeeName" type="text" id="employeeName"/></span></li>
										<li style="display: none;color: red;" id="employeeNameErr">* Enter Employee Name</li>
									</ul>
								</div>
							</div>
							<div class="row">
								<label>Email Id:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="employeeId" type="text" id="employeeId"/></span></li>
										<li style="display: none;color: red;" id="employeeIdErr">* Enter Employee Email Id</li>
									</ul>
								</div>
							</div>
							<div class="row">
								<label>Contact No:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="employeeNo" type="text" id="employeeNo"/></span></li>
										<li style="display: none;color: red;" id="employeeNoErr">* Enter Employee Contact No</li>
									</ul>
								</div>
							</div>
						</fieldset>
						
						<fieldset>
							<div class="forms">
								<div class="row">
									<div class="inputs">
										<span class="button blue_button"><span><span>Register</span></span><input name="submitbtn" type="submit" id="submit"/></span>
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
	