<%@include file="User_Header.jsp" %>
<%@include file="User_Menu1.jsp" %>
<%@include file="User_Menu2.jsp" %>
<div id="content">
	<div class="inner">
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
						<div class="lists">
							<div class="lists_inner">
								<dl>
									<dt>User</dt>
									<dd>
										<div class="dd_top">
											<ul class="dd_bottom">
												<li><a href="CompanyController?action=AddCompany">Add New User</a></li>
												<li><a href="CompanyController?action=SearchCompany">Search User</a></li>
												<li><a href="CompanyController?action=ListCompany">List All User</a></li>
												<li><a href="CompanyController?action=DisableCompany">Disable User</a></li>
												<li><a href="CompanyController?action=EnableCompany">Enable User</a></li>
												<li><a href="#"></a></li>
												<li><a href="#"></a></li>	
											</ul>
										</div>
									</dd>
								</dl>
								<!-- 
								<dl>
									<dt>Organization</dt>
									<dd>
										<div class="dd_top">
											<ul class="dd_bottom">
												<li><a href="CompanyController?action=AddCompany">Add New Organization</a></li>
												<li><a href="CompanyController?action=SearchCompany">Search Organization</a></li>
												<li><a href="CompanyController?action=ListCompany">List All Organization</a></li>
												<li><a href="CompanyController?action=DisableCompany">Disable Organization</a></li>
												<li><a href="CompanyController?action=EnableCompany">Enable Organization</a></li>
												<li><a href="#"></a></li>
												<li><a href="#"></a></li>	
											</ul>
										</div>
									</dd>
								</dl>
								<dl>
									<dt>Contact</dt>
									<dd>
										<div class="dd_top">
											<ul class="dd_bottom">
												<li><a href="CompanyController?action=AddCompany">Add New Contact</a></li>
												<li><a href="CompanyController?action=SearchCompany">Search Contact</a></li>
												<li><a href="CompanyController?action=ListCompany">List All Contact</a></li>
												<li><a href="CompanyController?action=DisableCompany">Disable Contact</a></li>
												<li><a href="CompanyController?action=EnableCompany">Enable Contact</a></li>
												<li><a href="#"></a></li>
												<li><a href="#"></a></li>	
											</ul>
										</div>
									</dd>
								</dl>
								<dl>
									<dt>Lead</dt>
									<dd>
										<div class="dd_top">
											<ul class="dd_bottom">
												<li><a href="CompanyController?action=AddCompany">Add New Lead</a></li>
												<li><a href="CompanyController?action=SearchCompany">Search Lead</a></li>
												<li><a href="CompanyController?action=ListCompany">List All Lead</a></li>
												<li><a href="CompanyController?action=DisableCompany">Disable Lead</a></li>
												<li><a href="CompanyController?action=EnableCompany">Enable Lead</a></li>
												<li><a href="#"></a></li>
												<li><a href="#"></a></li>	
											</ul>
										</div>
									</dd>
								</dl>
								 -->
							</div>
						</div>
					</div>
				</div>					
			</div>
		</div>
	</div>
</div>
<%@include file="Footer.jsp" %>"