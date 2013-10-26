<!--[if !IE]>start main menu<![endif]-->
<script>
$(document).ready(function(){
	$("#dashboard_lk").onclick(function(){
		alert("dashboard");
		$("#dashboard_options").show();
	});
	$("#user_lk").onclick(function(){
		$("#userDashboard_options").show();
	});
	$("#organization_lk").onclick(function(){
		$("#organizationDashboard_options").show();
	});
	$("#contact_lk").onclick(function(){
		$("#contactDashboard_options").show();
	});
	$("#lead_lk").onclick(function(){
		$("#leadDashboard_options").show();
	});
});
</script>
		<div id="main_menu">
			<div class="inner">
			<ul>
				<li >
					<a href="Dashboard.jsp" class=" menu_item1" id="dashboard_lk"><span class="l"><span></span></span><span class="m"><em>Dashboard</em><span></span></span><span class="r"><span></span></span></a>
					<ul id="dashboard_options" style="display: none;">
						<li><a href="#" class="selected_lk"><span class="l"><span></span></span><span class="m"><em>To Do List</em><span></span></span><span class="r"><span></span></span></a></li>
						<li><a href="#"><span class="l"><span></span></span><span class="m"><em>List All Product</em><span></span></span><span class="r"><span></span></span></a></li>
						<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Check Sales</em><span></span></span><span class="r"><span></span></span></a></li>
						<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Open Cases</em><span></span></span><span class="r"><span></span></span></a></li>
						<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Manage Category</em><span></span></span><span class="r"><span></span></span></a></li>
						<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Selected Item</em><span></span></span><span class="r"><span></span></span></a></li>
						<li><a href="#"><span class="l"><span></span></span><span class="m"><em>User Privileges</em><span></span></span><span class="r"><span></span></span></a></li>
					</ul>
				</li>
				<li >
					<a href="UserDashboard.jsp" class=" menu_item1" id="user_lk"><span class="l"><span></span></span><span class="m"><em>User</em><span></span></span><span class="r"><span></span></span></a>
					<ul id="userDashboard_options" style="display: none;">
						<li><a href="#" class="selected_lk"><span class="l"><span></span></span><span class="m"><em>Add User</em><span></span></span><span class="r"><span></span></span></a></li>
						<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Update User</em><span></span></span><span class="r"><span></span></span></a></li>
						<li><a href="#"><span class="l"><span></span></span><span class="m"><em>List All User</em><span></span></span><span class="r"><span></span></span></a></li>
						<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Search User</em><span></span></span><span class="r"><span></span></span></a></li>
						<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Enable User</em><span></span></span><span class="r"><span></span></span></a></li>
						<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Disable User</em><span></span></span><span class="r"><span></span></span></a></li>
						<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Manage Categories</em><span></span></span><span class="r"><span></span></span></a></li>
						<li><a href="#"><span class="l"><span></span></span><span class="m"><em>User Privileges</em><span></span></span><span class="r"><span></span></span></a></li>
					</ul>
				</li>
				<li >
					<a href="OrganizationDashboard.jsp" class=" menu_item1" id="organization_lk"><span class="l"><span></span></span><span class="m"><em>Organization</em><span></span></span><span class="r"><span></span></span></a>
					<ul id="organizationDashboard_options" style="display: none;">
						<li><a href="OrganizationController?action=AddOrganization" class="selected_lk"><span class="l"><span></span></span><span class="m"><em>Add Organization</em><span></span></span><span class="r"><span></span></span></a></li>
						<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Update Organization</em><span></span></span><span class="r"><span></span></span></a></li>
						<li><a href="#"><span class="l"><span></span></span><span class="m"><em>List All Organization</em><span></span></span><span class="r"><span></span></span></a></li>
						<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Search Organization</em><span></span></span><span class="r"><span></span></span></a></li>
						<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Enable Organization</em><span></span></span><span class="r"><span></span></span></a></li>
						<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Disable Organization</em><span></span></span><span class="r"><span></span></span></a></li>
						<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Manage Categories</em><span></span></span><span class="r"><span></span></span></a></li>
						<li><a href="#"><span class="l"><span></span></span><span class="m"><em>User Privileges</em><span></span></span><span class="r"><span></span></span></a></li>
					</ul>
				</li>
				<li >
					<a href="ContactDashboard.jsp" class=" menu_item1" id="contact_lk"><span class="l"><span></span></span><span class="m"><em>Contact</em><span></span></span><span class="r"><span></span></span></a>
					<ul id="contactDashboard_options" style="display: none;">
						<li><a href="#" class="selected_lk"><span class="l"><span></span></span><span class="m"><em>Add Contact</em><span></span></span><span class="r"><span></span></span></a></li>
						<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Update Contact</em><span></span></span><span class="r"><span></span></span></a></li>
						<li><a href="#"><span class="l"><span></span></span><span class="m"><em>List All Contact</em><span></span></span><span class="r"><span></span></span></a></li>
						<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Search Contact</em><span></span></span><span class="r"><span></span></span></a></li>
						<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Enable Contact</em><span></span></span><span class="r"><span></span></span></a></li>
						<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Disable Contact</em><span></span></span><span class="r"><span></span></span></a></li>
						<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Manage Categories</em><span></span></span><span class="r"><span></span></span></a></li>
						<li><a href="#"><span class="l"><span></span></span><span class="m"><em>User Privileges</em><span></span></span><span class="r"><span></span></span></a></li>
					</ul>
				</li>
				<li >
					<a href="LeadDashboard.jsp" class=" menu_item1" id="lead_lk"><span class="l"><span></span></span><span class="m"><em>Lead</em><span></span></span><span class="r"><span></span></span></a>
					<ul id="leadDashboard_options" style="display: none;">
						<li><a href="#" class="selected_lk"><span class="l"><span></span></span><span class="m"><em>Add Lead</em><span></span></span><span class="r"><span></span></span></a></li>
						<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Update Lead</em><span></span></span><span class="r"><span></span></span></a></li>
						<li><a href="#"><span class="l"><span></span></span><span class="m"><em>List All Lead</em><span></span></span><span class="r"><span></span></span></a></li>
						<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Search Lead</em><span></span></span><span class="r"><span></span></span></a></li>
						<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Enable Lead</em><span></span></span><span class="r"><span></span></span></a></li>
						<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Disable Lead</em><span></span></span><span class="r"><span></span></span></a></li>
						<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Manage Categories</em><span></span></span><span class="r"><span></span></span></a></li>
						<li><a href="#"><span class="l"><span></span></span><span class="m"><em>User Privileges</em><span></span></span><span class="r"><span></span></span></a></li>
					</ul>
				</li>
		</ul>
	</div>
	<span class="sub_bg"></span>
</div>
</div>
<body>		