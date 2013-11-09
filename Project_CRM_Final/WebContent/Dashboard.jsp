<%@include file="User_Header.jsp" %>
<%@include file="User_Menu1.jsp" %>
<%@include file="User_Menu2.jsp" %>
<head>
<title>User Dashboard</title>
<script>
$(document).ready(function(){
	$("#dashboard_lk").addClass("selected_lk");
	$("#dashboard_options").show();
});
</script>

</head>
		<div id="content">
			<div class="inner">
			
			<div class="section">
					
					<!--[if !IE]>start title wrapper<![endif]-->
					<div class="title_wrapper">
						<span class="title_wrapper_top"></span>
						<div class="title_wrapper_inner">
							<span class="title_wrapper_middle"></span>
							<div class="title_wrapper_content">
								<h2>Quick Shortcuts</h2>
								<ul class="section_menu right">
									<li><a href="#" class="selected_lk"><span class="l"><span></span></span><span class="m"><em>Routine Tasks</em><span></span></span><span class="r"><span></span></span></a></li>
									<li><a href="#"><span class="l"><span></span></span><span class="m"><em>To Do</em><span></span></span><span class="r"><span></span></span></a></li>
									<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Products</em><span></span></span><span class="r"><span></span></span></a></li>
								</ul>
							</div>
						</div>
						<span class="title_wrapper_bottom"></span>
					</div>
					<!--[if !IE]>end title wrapper<![endif]-->
					
					<!--[if !IE]>start section content<![endif]-->
					<div class="section_content">
						<span class="section_content_top"></span>
						
						<div class="section_content_inner">
							<!--[if !IE]>start dashboard menu<![endif]-->
								<div class="dashboard_menu_wrapper">
								<ul class="dashboard_menu">
									<li><a href="#" class="d1"><span>User Management Tools</span></a></li>
									<li><a href="#" class="d2"><span>Setup upload folders</span></a></li>
									<li><a href="#" class="d3"><span>Manage photo galleries</span></a></li>
									<li><a href="#" class="d4"><span>Change site templates</span></a></li>
									<li><a href="#" class="d5"><span>SEO Tools and Settings</span></a></li>
									<li><a href="#" class="d6"><span>Email Settings and Templates</span></a></li>
									<li><a href="#" class="d7"><span>Homepage and Static Pages</span></a></li>
									<li><a href="#" class="d8"><span>Website Security Settings</span></a></li>
									<li><a href="#" class="d9"><span>Printable Pages Template</span></a></li>
									<li><a href="#" class="d10"><span>Date and Time Setup</span></a></li>
									<li><a href="#" class="d11"><span>Favorires Settings</span></a></li>
									<li><a href="#" class="d12"><span>Statistics and Graphs</span></a></li>
									<li><a href="#" class="d13"><span>Favorires Settings</span></a></li>
									<li><a href="#" class="d14"><span>Setup upload folders</span></a></li>
									<li><a href="#" class="d15"><span>Statistics and Graphs</span></a></li>
									<li><a href="#" class="d16"><span>Change site templates</span></a></li>
								</ul>
								</div>
								<!--[if !IE]>end dashboard menu<![endif]-->	
						</div>
						
						<span class="section_content_bottom"></span>
					</div>
					<!--[if !IE]>end section content<![endif]-->
				</div>
				<!--[if !IE]>end section<![endif]-->
				
			
			
				<div class="section">
					<div class="title_wrapper">
						<span class="title_wrapper_top"></span>
						<div class="title_wrapper_inner">
							<span class="title_wrapper_middle"></span>
							<div class="title_wrapper_content">
								<h2>User Dashboard</h2>
							</div>
						</div>
						<span class="title_wrapper_bottom"></span>
					</div>	
					<div class="section_content">
						<span class="section_content_top"></span>
						
						<div class="section_content_inner">
						<!--[if !IE]>start lists<![endif]-->
						<div class="lists">
							<div class="lists_inner">
								<dl>
									<dt>Upcoming Activities</dt>
									<dd>
										<div class="dd_top">
											<ul class="dd_bottom">
												<li><a href="UserController?action=activities">Add New Product</a></li>
												<li><a href="CompanyController?action=SearchProduct">Search Product</a></li>
												<li><a href="#">Remove Product</a></li>
												<li><a href="#"></a></li>
												<li><a href="#"></a></li>
												<li><a href="#"></a></li>
												<li><a href="#"></a></li>
												<li><a href="#"></a></li>	
											</ul>
										</div>
									</dd>
								</dl>
								<dl>
									<dt>Task Schedule</dt>
									<dd>
										<div class="dd_top">
											<ul class="dd_bottom">
												<li><a href="CompanyController?action=AddCompany">Add New Company</a></li>
												<li><a href="CompanyController?action=CompanyList">Company List</a></li>
												<li><a href="CompanyController?action=SearchCompany">Search Company</a></li>
												<li><a href="CompanyController?action=EnableDisableCompany">Enable/Disable Company</a></li>
												<li><a href="#"></a></li>
												<li><a href="#"></a></li>
												<li><a href="#"></a></li>
												<li><a href="#"></a></li>
												<li><a href="#"></a></li>	
											</ul>
										</div>
									</dd>
								</dl>
								
								<dl>
									<dt>User Settings</dt>
									<dd>
										<div class="dd_top">
											<ul class="dd_bottom">
												<li><a href="UserController?action=AddUser">Add New User</a></li>
												<li><a href="UserController?action=SearchUser">Search User</a></li>
												<li><a href="UserController?action=ChangePassword">Change Password</a></li>
												<li><a href="UserController?action=EnableDisableUser">Enable/Disable User</a></li>
												<li><a href="UserController?action="></a></li>
												<li><a href="#"></a></li>
												<li><a href="#"></a></li>	
											</ul>
										</div>
									</dd>
								</dl>
								
								<dl>
									<dt>Static Pages</dt>
									<dd>
										<div class="dd_top">
											<ul class="dd_bottom">
												<li><a href="#">Store</a></li>
												<li><a href="#">Shipping</a></li>
												<li><a href="#">Authorize.net</a></li>
												<li><a href="#">Emails</a></li>
												<li><a href="#">Contact Form</a></li>
												<li><a href="#">Lookbook</a></li>
												<li><a href="#">SEO Settings</a></li>
												<li><a href="#">Tax</a></li>	
											</ul>
										</div>
									</dd>
								</dl>
								
							</div>
						</div>
						</div>
					</div>
					
				</div>
			</div>
		</div>
<%@include file="Footer.jsp" %>