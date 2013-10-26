<%@ page language="java" import="java.sql.ResultSet" %>
<%@ include file="Header.jsp"%>
<%@ include file="Menu1.jsp"%>
<%@ include file="Menu2.jsp"%>

<script type="text/javascript" src="js/jquery.js"></script>
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
			if($("#userName").val() == ""){
				isBlank=true;
				$("#userNameErr").fadeIn(2000);
			}
			if($("#password").val() ==	""){
				isBlank=true;
				$("#passwordErr").fadeIn(2000);
			}
			
			if($("#email").val() == ""){
				isBlank=true;
				$("#emailErr").fadeIn(2000);
			}
			if($("#contactNo").val() == ""){
				isBlank=true;
				$("#contactNoErr").fadeIn(2000);
			}
			if($("#address").val() == ""){
				isBlank=true;
				$("#addressErr").fadeIn(2000);
			}
			if(isBlank==false){
				return true;
			}
			return false;
		});
		$("#fName").blur(function(){
			if($("#fName").val() != ""){
				$("#fNameErr").fadeOut();
			}
		});
		$("#lName").blur(function(){
			if($("#lName").val() != ""){
				$("#lNameErr").fadeOut();
			}
		});
		$("#userName").blur(function(){
			if($("#userName").val() != ""){
				$("#userNameErr").fadeOut();
			}
		});
		$("#password").blur(function(){
			if($("#password").val() != ""){
				$("#passwordErr").fadeOut();
			}
		});
		$("#email").blur(function(){
			if($("#email").val() != ""){
				$("#emailErr").fadeOut();
			}
		});
		$("#contactNo").blur(function(){
			if($("#contactNo").val() != ""){
				$("#contactNoErr").fadeOut();
			}
		});
		$("#address").blur(function(){
			if($("#address").val() != ""){
				$("#addressErr").fadeOut();
			}
		});
	});
</script>
<body>
<!-- 
<%
	String msg="";
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
 -->
<div id="content">
	<div class="inner">
		<div class="section">
			<div class="title_wrapper">
				<span class="title_wrapper_top"></span>
				<div class="title_wrapper_inner">
					<span class="title_wrapper_middle"></span>
					<div class="title_wrapper_content">
						<h2>Add User:</h2>
						<ul class="section_menu left">
							<!-- 
							<li><a href="#" class="selected_lk"><span class="l"><span></span></span><span class="m"><em>Complaints</em><span></span></span><span class="r"><span></span></span></a></li>
							<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Employees</em><span></span></span><span class="r"><span></span></span></a></li>
							<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Customers</em><span></span></span><span class="r"><span></span></span></a></li>
							<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Site Pages</em><span></span></span><span class="r"><span></span></span></a></li>
							 -->
							 <li><a href="#" class="selected_lk"><span class="l"><span></span></span><span class="m"><em>User Registration</em><span></span></span><span class="r"><span></span></span></a></li>
						</ul>
					</div>
				</div>
				<span class="title_wrapper_bottom"></span>
			</div>
 			<div class="section_content">
				<span class="section_content_top"></span>
				<div class="section_content_inner">
					<form action="UserController?action=addSubmitUser" class="search_form" id="regForm" method="post">
						<fieldset>
							<div class="forms">
								<h3>User Details</h3>
								<div class="row">
									<label>First Name:</label>
									<div class="inputs">
										<ul>
											<li><span class="input_wrapper"><input class="text" name="fName" type="text" id="fName"/></span></li>
											<li style="display: none;color: red;" id="fNameErr">* Enter First Name</li>
										</ul>
									</div>
								</div>
								<div class="row">
									<label>Last Name:</label>
									<div class="inputs">
										<ul>
											<li><span class="input_wrapper"><input class="text" name="lName" type="text" id="lName"/></span></li>
											<li style="display: none;color: red;" id="lNameErr">* Enter Last Name</li>
										</ul>
									</div>
								</div>
								<div class="row">
									<label>User Name:</label>
									<div class="inputs">
										<ul>
											<li><span class="input_wrapper"><input class="text" name="userName" type="text" id="userName"/></span></li>
											<li style="display: none;color: red;" id="userNameErr">* Enter user Name</li>
										</ul>
									</div>
								</div>
								<div class="row">
									<label>Password:</label>
									<div class="inputs">
										<ul>
											<li><span class="input_wrapper"><input class="text" name="password" type="password" id="password"/></span></li>
											<li style="display: none;color: red;" id="passwordErr">Enter Password</li>
										</ul>
									</div>
								</div>
								<div class="row">
									<label>Company:</label>
									<div class="inputs">
										<div>
										<select name="company" id="company">
										<%
   												 ResultSet companyNames = (ResultSet)request.getAttribute("companyNames");
												while(companyNames.next()){	
										%>
										<option value="<%=companyNames.getString("CompanyName")%>"><%=companyNames.getString("CompanyName") %></option>
										<%
												}
										%>
										</select>
										</div>
									</div>
								</div>
								<div class="row">
									<label>Role:</label>
									<div class="inputs">
										<div>
										<select name="role" id="role">
											<option value="selected">select--</option>
											<option value="SuperAdmin">SuperAdmin</option>
											<option value="Admin">Admin</option>
											<option value="User">User</option>
										</select>
										</div>
									</div>
								</div>	
								<div class="row">
									<label>Email ID:</label>
									<div class="inputs">
										<ul>
											<li><span class="input_wrapper"><input class="text" name="email" type="text" id="email"/></span></li>
											<li style="display: none;color: red;" id="emailErr">* Enter Email ID</li>
										</ul>
									</div>
								</div>	
								<div class="row">
									<label>Contact No:</label>
									<div class="inputs">
										<ul>
											<li><span class="input_wrapper"><input class="text" name="contactNo" type="text" id="contactNo"/></span></li>
											<li style="display: none;color: red;" id="contactNoErr">* Enter Contact No</li>
										</ul>
									</div>
								</div>
								<div class="row">
									<label>Address:</label>
									<div class="inputs">
										<ul>
											<li><span class="input_wrapper"><input class="text" name="address" type="text" id="address" /></span></li>
											<li style="display: none;color: red;" id="addressErr">* Enter Address</li>
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
									<label>Pin Code:</label>
									<div class="inputs">
										<ul>
											<li><span class="input_wrapper"><input class="text" name="pinCode" type="text" id="pinCode"/></span></li>
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
						<div class="forms">
							<div class="row">
								<div class="inputs">
									<span class="button blue_button"><span><span>Submit</span></span><input name="submitbtn" type="submit" id="submit"/></span>
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
	