<%@ page language="java" import="java.sql.ResultSet" %>
<%@ include file="Header.jsp"%>
<%@ include file="Menu1.jsp"%>
<%@ include file="Menu2.jsp"%>

<div id="content">
	<div class="inner">
	 <div class="section">
	<div class="title_wrapper">
		<span class="title_wrapper_top"></span>
		<div class="title_wrapper_inner">
			<span class="title_wrapper_middle"></span>
			<div class="title_wrapper_content">
				<h2>Serch User:</h2>
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
				<form action="UserController?action=SearchSubmitUser" class="search_form" id="regform" method="post">
					<fieldset>
					<div class="forms">
							<h3> User search form </h3>
						<div class="row">
								<label>First Name:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="firstName" type="text" id="firstName"/></span></li>
									</ul>
								</div>
							</div>
							<div class="row">
								<label>Last Name:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="lastName" type="text" id="lastName"/></span></li>
									</ul>
								</div>
							</div>
							<div class="row">
								<label>User Name:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="userName" type="text" id="userName"/></span></li>
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
										<li style="display: none;color: red;" id="emailErr">* Invalid Email ID</li>
								</ul>
								</div>
							</div>	
							<div class="row">
								<label>Contact No:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="contactNo" type="text" id="contactNo"/></span></li>
									</ul>
								</div>
							</div>
							<div class="row">
								<label>Address:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="address" type="text" id="address" /></span></li>
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
							
							</div>
						</fieldset>
						<fieldset>
						<div class="forms">
							<div class="row">
								<div class="inputs">
									<span class="button blue_button"><span><span>Search</span></span><input name="search" type="submit" id="submit"/></span>
								</div>
							</div>
							</div>
						</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</div>

<%@ include file="Footer.jsp"%>