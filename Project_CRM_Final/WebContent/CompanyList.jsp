<%@page import="java.sql.ResultSet"%>
<%@include file="Header.jsp" %>
<%@include file="Menu1.jsp" %>
<%@include file="Menu2.jsp" %>
<%
	ResultSet companyList = (ResultSet)request.getAttribute("companyList");
%>		
<div id="content">
	<div class="inner">
		<div class="section">
			<div class="title_wrapper">
				<span class="title_wrapper_top"></span>
				<div class="title_wrapper_inner">
					<span class="title_wrapper_middle"></span>
					<div class="title_wrapper_content">
						<h2>Company's List:</h2>
					</div>
				</div>
				<span class="title_wrapper_bottom"></span>
			</div>
			<div class="section_content">
				<span class="section_content_top"></span>
				<div class="section_content_inner">
					<div class="table_tabs_menu">
						<ul class="table_tabs">
							<li><a href="#" class="selected"><span><span>All Company</span></span></a></li>
							<!-- <li><a href="#"><span><span>All products</span></span></a></li>								<li><a href="#"><span><span>Best Sellers</span></span></a></li> -->
						</ul>
						<a href="CompanyController?action=AddCompany" class="update"><span><span><em>Add New Company</em><strong></strong></span></span></a>
					</div>
					<div class="table_wrapper">
						<div class="table_wrapper_inner">
							<table cellspading="0" colspadding="0" width="100%">
								<tbody><tr>
									<th style="width: 17px;">No.</th>
									<th class="photo"><span>Company Code</span></th>
									<th><a href="#" class="asc">Company Name</a></th>
									<th style="width: 81px;">License Start Date</th>
									<th style="width: 81px;">License End Date</th>
									<th style="width: 60px;">Enable/Disable</th>
									<th style="width: 165px;">Actions</th>
								</tr>
								<%
									int no = 1;
									while(companyList.next()){
										String code = (companyList.getString("CompanyCode")!=null)?companyList.getString("CompanyCode"):"";
								%>
								<tr class="first">
									<td><%=no++ %>.</td>
									<td><a href="CompanyController?action=ViewCompany&companyId=<%=code %>" class="product_name"><%=code %></a></td>
									<td><a href="CompanyController?action=ViewCompany&companyId=<%=code %>" class="product_name"><%=companyList.getString("CompanyName")!=null?companyList.getString("CompanyName"):"" %></a></td>
									<td><%=companyList.getString("LicenseStartDate")!=null?companyList.getString("LicenseStartDate"):"&nbsp;" %></td>
									<td><%=companyList.getString("LicenseEndDate")!=null?companyList.getString("LicenseEndDate"):"&nbsp;" %></td>
									<td>
										<div class="move_menu">
											<ul>
												<li><a href="#" class="move1">1</a></li>
												<li><a href="#" class="move2">2</a></li>
												<li><a href="#" class="move3">3</a></li>
												<li><a href="#" class="move4">4</a></li>
											</ul>
										</div>
									</td>
									<td>
										<div class="actions_menu">
											<ul>
												<li><a class="details" href="CompanyController?action=ViewCompany&companyId=<%=code %>">Details</a></li>
												<li><a class="edit" href="CompanyController?action=EditCompany&companyId=<%=code %>">Edit</a></li>
												<li><a class="delete" href="CompanyController?action=DeleteCompany&companyId=<%=code%>">Delete</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<%
									}
								%>
								</tbody>
							</table>
						</div>
					</div>				
				</div>
				<div class="pagination_wrapper">
					<span class="pagination_top"></span>
					<div class="pagination_middle">
						<div class="pagination">
							<span class="page_no">Page 1 of 217</span>
							<ul class="pag_list">
								<li><a href="#" class="pag_nav"><span><span>Previous</span></span></a> </li>
								<li><a href="#">1</a></li>
								<li><a href="#" class="current_page"><span><span>2</span></span></a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li>[...]</li>
								<li><a href="#">217</a></li>
								<li><a href="#" class="pag_nav"><span><span>Next</span></span></a> </li>
							</ul>
						</div>
					</div>
					<span class="pagination_bottom"></span>
				</div>
				<span class="section_content_bottom"></span>
			</div>
		</div>
	</div>
</div>
</div>
<%@include file="Footer.jsp" %>