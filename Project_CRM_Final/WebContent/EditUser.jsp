<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.beans.UserBean"%>
<%@include file="Header.jsp" %>
<%@include file="Menu1.jsp" %>
<%@include file="Menu2.jsp" %>
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
<script type="text/javascript">
	$(document).ready(function(){
		$("#submit").click(function(){
			console.log("1");
			var isBlank=false;
			
			if($("#fName").val() == ""){
				isBlank=true;
				$("#fNameErr").fadeIn(1000);
			}
			if($("#lName").val() == ""){
				isBlank=true;
				$("#lNameErr").fadeIn(1000);
			}
			if($("#userName").val() == ""){
				isBlank=true;
				$("#userNameErr").fadeIn(1000);
			}
			if($("#password").val() ==	""){
				isBlank=true;
				$("#passwordErr").fadeIn(1000);
			}
			if($("#role").val() ==	""){
				isBlank=true;
				$("#roleErr").fadeIn(1000);
			}
			if($("#email").val() == ""){
				isBlank=true;
				$("#emailErr").fadeIn(1000);
			}
			if($("#contactno").val() == ""){
				isBlank=true;
				$("#contactNoErr").fadeIn(1000);
			}
			console.log("isBlank: "+isBlank);
			if(isBlank==false){
				return true;
			}
			return false;
		});
		$("#fName").blur(function(){
			if($("#fName").val() != ""){
				$("#fNameErr").fadeOut(1000);
			}
		});
		$("#lName").blur(function(){
			if($("#lName").val() != ""){
				$("#lNameErr").fadeOut(1000);
			}
		});
		$("#userName").blur(function(){
			if($("#userName").val() != ""){
				$("#userNameErr").fadeOut(1000);
			}
		});
		$("#password").blur(function(){
			if($("#password").val() != ""){
				$("#passwordErr").fadeOut(1000);
			}
		});
		$("#role").blur(function(){
			if($("#role").val() != ""){
				$("#roleErr").fadeOut(1000);
			}
		});
		$("#email").blur(function(){
			if($("#email").val() != ""){
				$("#emailErr").fadeOut(1000);
			}
		});
		$("#contactNo").blur(function(){
			if($("#contactNo").val() != ""){
				$("#contactNoErr").fadeOut(1000);
			}
		});
	});
</script>

<%
	ResultSet rs = (ResultSet)request.getAttribute("rs");
	while(rs.next()){
		Long userId = rs.getLong("UserId");
		String firstName= rs.getString("FirstName");
		String lastName = rs.getString("LastName");
		String userName = rs.getString("UserName");
		String company = rs.getString("Company");
		String role = rs.getString("Role");
		String email = rs.getString("Email");
		String address = rs.getString("Address");
		String city = rs.getString("City");
		String pinCode = rs.getString("PinCode");
		String contactNo = rs.getString("ContactNo");
		String isEnabled = rs.getString("IsEnable");
		String dateCreated = rs.getString("DateCreated");
		String dateModified = rs.getString("DateModified");
		String createdBy = rs.getString("CreatedBy");
		String modifiedBy = rs.getString("ModifiedBy");
		String isVerified = rs.getString("IsVerified");
%>


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
					 <li><a href="#" class="selected_lk"><span class="l"><span></span></span><span class="m"><em>User Registration</em><span></span></span><span class="r"><span></span></span></a></li>
					-->
				</ul>
			</div>
		</div>
		<span class="title_wrapper_bottom"></span>
	</div>
	<div class="section_content">
		<span class="section_content_top"></span>
			<div class="section_content_inner">
				<form action="UserController?action=EditUserSubmit&userId=<%=userId %>" class="search_form" id="regform" name="regForm" method="post">
					<fieldset>
						<div class="forms">
							<h3>User Details</h3>
							<div class="row">
								<label>First Name:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="firstName" value="<%=firstName%>" type="text" id="fName"/></span></li>
										<li style="display: none;color: red;" id="fNameErr">* Invalid First Name</li>
									</ul>
								</div>
							</div>
							<div class="row">
								<label>Last Name:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="lastName" value="<%=lastName%>" type="text" id="lName"/></span></li>
										<li style="display: none;color: red;" id="lNameErr">* Invalid Last Name</li>
									</ul>
								</div>
							</div>
							<div class="row">
								<label>User Name:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="userName" value="<%=userName%>" type="text" id="userName"/></span></li>
										<li style="display: none;color: red;" id="userNameErr">* Invalid Last Name</li>
									</ul>
								</div>
							</div>
							<div class="row">
								<label>Company:</label>
								<div class="inputs">
									<div>
										<select id="company" name="company" >
											<option value="" selected="selected">-Select-</option>
											<%
												ResultSet companyNames = (ResultSet)request.getAttribute("companyNames");
												while(companyNames.next()){
												%>
													<option value="<%=companyNames.getString("CompanyName") %>" ><%=companyNames.getString("CompanyName") %></option>
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
										<select id="role" name="role" >
											<option value="" selected="selected">-Select-</option>
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
										<li><span class="input_wrapper"><input class="text" name="email" value="<%=email%>" type="text" id="email"/></span></li>
										<li style="display: none;color: red;" id="emailErr">* Invalid Email ID</li>
								</ul>
								</div>
							</div>	
							<div class="row">
								<label>Address:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="address" value="<%=address%>" type="text" id="address" /></span></li>
									</ul>
								</div>
							</div>			
							<div class="row">
								<label>City:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="city" value="<%=city%>" type="text" id="city"/></span></li>
									</ul>
								</div>
							</div>	
							<div class="row">
								<label>Pin Code:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="pinCode" value="<%=pinCode%>" type="text" id="pinCode"/></span></li>
									</ul>
								</div>
							</div>
							<div class="row">
								<label>Contact No:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="contactNo" value="<%=contactNo%>" type="text" id="contactNo"/></span></li>
										<li style="display: none;color: red;" id="contactNoErr">* Invalid Contact No</li>
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
	<%@include file="Footer.jsp" %>