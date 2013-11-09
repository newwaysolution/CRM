<script>
$(document).ready(function(){
	$(".sub_ul").hide();
	$(".sub_bg").hide();
	
	$(".main_ul").hover(function(){
		$(".sub_bg").show();
	});
	
	$("#main_menu").mouseleave(function(){
		$(".sub_bg").hide();
		$(".sub_ul").hide();
	});
	
	$("#dashboard_lk").hover(function(){
		$(".sub_ul").hide();
		$("#dashboard_options .sub_ul").show();
	});
	
	$("#dashboard_options").mouseleave(function(){
	$("#dashboard_options .sub_ul").hide();
	});
	
	$("#organization_lk").hover(function(){
		$(".sub_ul").hide();
		$("#organizationDashboard_options .sub_ul").show();
	});
	
	$("#organizationDashboard_options").mouseleave(function(){
	$("#organizationDashboard_options .sub_ul").hide();
	});
	
	$("#user_lk").hover(function(){
		$(".sub_ul").hide();
		$("#userDashboard_options .sub_ul").show();
	});
	
	$("#userDashboard_options").mouseleave(function(){
	$("#userDashboard_options .sub_ul").hide();
	});
	
	$("#contact_lk").hover(function(){
		$(".sub_ul").hide();
		$("#contactDashboard_options .sub_ul").show();
	});
	
	$("#contactDashboard_options").mouseleave(function(){
	$("#contactDashboard_options .sub_ul").hide();
	});
	
	$("#lead_lk").hover(function(){
		$(".sub_ul").hide();
		$("#leadDashboard_options .sub_ul").show();
	});
	
	$("#leadDashboard_options").mouseleave(function(){
	$("#leadDashboard_options .sub_ul").hide();
	});
	
});

</script>

<!--[if !IE]>start main menu<![endif]-->
		<div id="main_menu">
			<div class="inner">
			<ul>
				<li>
					<a href="Dashboard.jsp" id="dashboard_lk" class="main_ul"><span class="l"><span></span></span><span class="m"><em>Dashboard</em><span></span></span><span class="r"><span></span></span></a>
					<ul id="dashboard_options">
						
						<li class="sub_ul"><a href="#"><span class="l"><span></span></span><span class="m"><em>To do List</em><span></span></span><span class="r"><span></span></span></a></li>
						<li class="sub_ul"><a href="#"><span class="l"><span></span></span><span class="m"><em>List all Products</em><span></span></span><span class="r"><span></span></span></a></li>
						<li class="sub_ul"><a href="#"><span class="l"><span></span></span><span class="m"><em>User Privileges</em><span></span></span><span class="r"><span></span></span></a></li>
					</ul>
				</li>
				
				<li >
					<a href="UserDashboard.jsp" id="user_lk" class=" menu_item1 main_ul" ><span class="l"><span></span></span><span class="m"><em>User</em><span></span></span><span class="r"><span></span></span></a>
					<ul id="userDashboard_options">
						<li class="sub_ul"><a href="#" class="selected_lk"><span class="l"><span></span></span><span class="m"><em>Add User</em><span></span></span><span class="r"><span></span></span></a></li>
						<li class="sub_ul"><a href="#"><span class="l"><span></span></span><span class="m"><em>Update User</em><span></span></span><span class="r"><span></span></span></a></li>
						<li class="sub_ul"><a href="#"><span class="l"><span></span></span><span class="m"><em>List All User</em><span></span></span><span class="r"><span></span></span></a></li>
						<li class="sub_ul"><a href="#"><span class="l"><span></span></span><span class="m"><em>Search User</em><span></span></span><span class="r"><span></span></span></a></li>
						<li class="sub_ul"><a href="#"><span class="l"><span></span></span><span class="m"><em>Enable User</em><span></span></span><span class="r"><span></span></span></a></li>
						<li class="sub_ul"><a href="#"><span class="l"><span></span></span><span class="m"><em>Disable User</em><span></span></span><span class="r"><span></span></span></a></li>
						<li class="sub_ul"><a href="#"><span class="l"><span></span></span><span class="m"><em>Manage Categories</em><span></span></span><span class="r"><span></span></span></a></li>
						<li class="sub_ul"><a href="#"><span class="l"><span></span></span><span class="m"><em>User Privileges</em><span></span></span><span class="r"><span></span></span></a></li>
					</ul>
				</li>
				
				<li>
					<a href="OrganizationDashboard.jsp" id="organization_lk" class="main_ul"><span class="l"><span></span></span><span class="m"><em>Organizations</em><span></span></span><span class="r"><span></span></span></a>
					<ul id="organizationDashboard_options">
					    <li class="sub_ul"><a href="OrganizationController?action=AddOrganization"><span class="l"><span></span></span><span class="m"><em>Add Organization</em><span></span></span><span class="r"><span></span></span></a></li>
					    <li class="sub_ul"><a href="OrganizationController?action=ListAllOrganization"><span class="l"><span></span></span><span class="m"><em>List All Organization</em><span></span></span><span class="r"><span></span></span></a></li>
					    <li class="sub_ul"><a href="OrganizationController?action=SearchOrganization"><span class="l"><span></span></span><span class="m"><em>Search Organization</em><span></span></span><span class="r"><span></span></span></a></li>
					    <li class="sub_ul"><a href="OrganizationController?action=EditOrganization"><span class="l"><span></span></span><span class="m"><em>Update Organization</em><span></span></span><span class="r"><span></span></span></a></li>
					    <li class="sub_ul"><a href="OrganizationController?action=EnableOrganization"><span class="l"><span></span></span><span class="m"><em>Enable Organization</em><span></span></span><span class="r"><span></span></span></a></li>
					    <li class="sub_ul"><a href="OrganizationController?action=DisableOrganization"><span class="l"><span></span></span><span class="m"><em>Disable Organization</em><span></span></span><span class="r"><span></span></span></a></li>
						
					</ul>
				</li>
				
				<li >
					<a href="ContactDashboard.jsp" class=" menu_item1 main_ul" id="contact_lk"><span class="l"><span></span></span><span class="m"><em>Contacts</em><span></span></span><span class="r"><span></span></span></a>
					<ul id="contactDashboard_options">
						<li class="sub_ul"><a href="#"><span class="l"><span></span></span><span class="m"><em>Add Contact</em><span></span></span><span class="r"><span></span></span></a></li>
						<li class="sub_ul"><a href="#"><span class="l"><span></span></span><span class="m"><em>Update Contact</em><span></span></span><span class="r"><span></span></span></a></li>
						<li class="sub_ul"><a href="#"><span class="l"><span></span></span><span class="m"><em>List All Contact</em><span></span></span><span class="r"><span></span></span></a></li>
						<li class="sub_ul"><a href="#"><span class="l"><span></span></span><span class="m"><em>Search Contact</em><span></span></span><span class="r"><span></span></span></a></li>
						<li class="sub_ul"><a href="#"><span class="l"><span></span></span><span class="m"><em>Enable Contact</em><span></span></span><span class="r"><span></span></span></a></li>
						<li class="sub_ul"><a href="#"><span class="l"><span></span></span><span class="m"><em>Disable Contact</em><span></span></span><span class="r"><span></span></span></a></li>
						<li class="sub_ul"><a href="#"><span class="l"><span></span></span><span class="m"><em>Manage Categories</em><span></span></span><span class="r"><span></span></span></a></li>
						<li class="sub_ul"><a href="#"><span class="l"><span></span></span><span class="m"><em>User Privileges</em><span></span></span><span class="r"><span></span></span></a></li>
					</ul>
				</li>
				<li >
					<a href="LeadDashboard.jsp" class=" menu_item1 main_ul" id="lead_lk"><span class="l"><span></span></span><span class="m"><em>Lead</em><span></span></span><span class="r"><span></span></span></a>
					<ul id="leadDashboard_options">
						<li class="sub_ul"><a href="#"><span class="l"><span></span></span><span class="m"><em>Add Lead</em><span></span></span><span class="r"><span></span></span></a></li>
						<li class="sub_ul"><a href="#"><span class="l"><span></span></span><span class="m"><em>Update Lead</em><span></span></span><span class="r"><span></span></span></a></li>
						<li class="sub_ul"><a href="#"><span class="l"><span></span></span><span class="m"><em>List All Lead</em><span></span></span><span class="r"><span></span></span></a></li>
						<li class="sub_ul"><a href="#"><span class="l"><span></span></span><span class="m"><em>Search Lead</em><span></span></span><span class="r"><span></span></span></a></li>
						<li class="sub_ul"><a href="#"><span class="l"><span></span></span><span class="m"><em>Enable Lead</em><span></span></span><span class="r"><span></span></span></a></li>
						<li class="sub_ul"><a href="#"><span class="l"><span></span></span><span class="m"><em>Disable Lead</em><span></span></span><span class="r"><span></span></span></a></li>
						<li class="sub_ul"><a href="#"><span class="l"><span></span></span><span class="m"><em>Manage Categories</em><span></span></span><span class="r"><span></span></span></a></li>
						<li class="sub_ul"><a href="#"><span class="l"><span></span></span><span class="m"><em>User Privileges</em><span></span></span><span class="r"><span></span></span></a></li>
					</ul>
				</li>
				
				
			</ul>
			</div>
			<div class="sub_bg"></div>
		</div>
		<!--[if !IE]>end main menu<![endif]-->
	</div>		
		<!--[if !IE]>end header main menu, its start tag is in menu1<![endif]-->
<body>		