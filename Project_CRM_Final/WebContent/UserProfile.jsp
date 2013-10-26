<%@page import="java.sql.ResultSet"%>
<%@page import="com.beans.UserBean"%>
<%@include file="Header.jsp" %>
<%@include file="Menu1.jsp" %>
<%@include file="Menu2.jsp" %>

<%
	ResultSet user = (ResultSet)request.getAttribute("user");
	while(user.next()){
		Long userId = user.getLong("UserId");
		String firstName= user.getString("FirstName");
		String lastName = user.getString("LastName");
		String userName = user.getString("UserName");
		String company = user.getString("Company");
		String role = user.getString("Role");
		String email = user.getString("Email");
		String address = user.getString("Address");
		String city = user.getString("City");
		String pinCode = user.getString("PinCode");
		String contactNo = user.getString("ContactNo");
		String isEnable = user.getString("IsEnable");
		String dateCreated = user.getString("DateCreated");
		String dateModified = user.getString("DateModified");
		String createdBy = user.getString("CreatedBy");
		String modifiedBy = user.getString("ModifiedBy");
		String isVerified = user.getString("IsVerified");
%>

<div id="content">
<div class="inner">
<div class="section">
	<div class="title_wrapper">
		<span class="title_wrapper_top"></span>
		<div class="title_wrapper_inner">
			<span class="title_wrapper_middle"></span>
			<div class="title_wrapper_content">
				<h2>Add New User:</h2>
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
							<h3>User Details</h3>
							<br>
							<div class="row">
								<label>User ID:</label>
								<label><%=userId %></label>
							</div>
							<br>
							<div class="row">
								<label>First Name : </label>
								<label><%=firstName%></label>
							</div>
							<br>
							<div class="row">
								<label>Last Name : </label>
								<label><%=lastName%></label>
							</div>
							<br>
							<div class="row">
								<label>User Name : </label>
								<label><%=userName%></label>
							</div>
							<br>
							<div class="row">
								<label>Company : </label>
								<label><%=company%></label>
							</div>
							<br>
							<div class="row">
								<label>Role : </label>
								<label><%=role%></label>
							</div>
							<br>
							<div class="row">
								<label>Email : </label>
								<label><%=email%></label>
							</div>
							<br>
							<div class="row">
								<label>Address : </label>
								<label><%=address%></label>
							</div>
							<br>
							<div class="row">
								<label>City : </label>
								<label><%=city %></label>
							</div>
							<br>
							<div class="row">
								<label>PinCode : </label>
								<label><%=pinCode%></label>
							</div>
							<br>
							<div class="row">
								<label>Contact No : </label>
								<label><%=contactNo%></label>
							</div>
							<br>
							<div class="row">
								<label>IsEnabled : </label>
								<label><%=isEnable%></label>
							</div>
							<br>
							<div class="row">
								<label>Date Created:</label>
								<label><%=dateCreated %></label>
							</div>
							<br>
							<div class="row">
								<label>Date Modified:</label>
								<label><%=dateModified %></label>
							</div>
							<br>
							<div class="row">
								<label>Created By:</label>
								<label><%=createdBy %></label>
							</div>
							<br>
							<div class="row">
								<label>Modified By:</label>
								<label><%=modifiedBy %></label>
							</div>
							<br>
							<div class="row">
								<label>IsVerified:</label>
								<label><%=isVerified %></label>
							</div>
							<br>
						</div>
					</fieldset>
								
					<fieldset>
						<div class="forms">
							<div class="row">
								<div class="inputs">
									<span class="button blue_button"><span><span><a href="UserController?action=EditUser&userId=<%=userId %>" >Update</a></span></span>
								</div>
							</div>
						</div>
						<%
							}
						%>
					</fieldset>			
			</div>			
			<span class="section_content_bottom"></span>
		</div>
	</div>
	</div>
	</div>

</div>
<%@include file="Footer.jsp"%>