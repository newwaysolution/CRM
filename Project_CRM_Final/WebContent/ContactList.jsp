<%@page import="java.sql.ResultSet"%>
<%@include file="User_Header.jsp" %>
<%@include file="Menu11.jsp" %>
<%@include file="Menu22.jsp" %>
<%
	ResultSet contactList = (ResultSet)request.getAttribute("contactList");
%>		
		<!--[if !IE]>start content<![endif]-->
		<div id="content">
			<div class="inner">
				<div class="section">
					
					<!--[if !IE]>start title wrapper<![endif]-->
					<div class="title_wrapper">
						<span class="title_wrapper_top"></span>
						<div class="title_wrapper_inner">
							<span class="title_wrapper_middle"></span>
							<div class="title_wrapper_content">
								<h2>Contact's List:</h2>
							</div>
						</div>
						<span class="title_wrapper_bottom"></span>
					</div>
					<!--[if !IE]>end title wrapper<![endif]-->
					
					<!--[if !IE]>start section content<![endif]-->
					<div class="section_content">
						<span class="section_content_top"></span>
						
						<div class="section_content_inner">
							
							<div class="table_tabs_menu">
							<!--[if !IE]>start  tabs<![endif]-->
							<ul class="table_tabs">
								<li><a href="#" class="selected"><span><span>All Contact</span></span></a></li>
								<!-- <li><a href="#"><span><span>All products</span></span></a></li>
								<li><a href="#"><span><span>Best Sellers</span></span></a></li> -->
							</ul>
							<!--[if !IE]>end  tabs<![endif]-->
							<a href="UserController1?action=AddContact" class="update"><span><span><em>Add New Contact</em><strong></strong></span></span></a>
							</div>
						
							<!--[if !IE]>start table_wrapper<![endif]-->
							<div class="table_wrapper">
								<div class="table_wrapper_inner">
								<table cellspading="0" colspadding="0" width="100%">
									<tbody><tr>
										<th style="width: 17px;">No.</th>
										<th class="photo"><span>Email</span></th>
										<!--  <th><a href="#" class="asc"></a></th>-->
										<th style="width: 81px;">First Name</th>
										<th style="width: 81px;">LastName</th>
										<th style="width: 81px;">Address</th>
										<th style="width: 81px;">Start Date</th>
										<th style="width: 81px;">End Date</th>
									
										<!-- <th style="width: 60px;"><a href="#" class="desc">License End Date</a></th> -->
										<th style="width: 60px;"></th>
										
										<th style="width: 165px;">Actions</th>
									</tr>
									<%
									int no = 1;
									while(contactList.next()){
										String Email = (contactList.getString("Email")!=null)?contactList.getString("Email"):"";
									%>
										<tr class="first">
											<td><%=no++ %>.</td>
											<td><a href="#" class="product_name"><%=Email %></a></td>
											<td><%=contactList.getString("FirstName")!=null?contactList.getString("FirstName"):"" %></td>
											<td><%=contactList.getString("LastName")!=null?contactList.getString("LastName"):"&nbsp;" %></td>
											<td><%=contactList.getString("Address")!=null?contactList.getString("Address"):"&nbsp;" %></td>
											<td><%=contactList.getString("StartDate")!=null?contactList.getString("StartDate"):"&nbsp;" %></td>
											<td><%=contactList.getString("EndDate")!=null?contactList.getString("EndDate"):"&nbsp;" %></td>
											
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
														<li><a class="details" href="#">Details</a></li>
														<li><a class="edit" href="#">Edit</a></li>
														<li><a class="delete" href="#">Delete</a></li>
													</ul>
												</div>
											</td>
										</tr>
									<%
									}
									%>
								</tbody></table>
								</div>
							</div>
							<!--[if !IE]>end table_wrapper<![endif]-->
							
						</div>
						
						<!--[if !IE]>start pagination<![endif]-->
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
						<!--[if !IE]>end pagination<![endif]-->
						
						
						<span class="section_content_bottom"></span>
					</div>
					<!--[if !IE]>end section content<![endif]-->
				</div>
				<!--[if !IE]>end section<![endif]-->
			
			</div>
		</div>
		<!--[if !IE]>end content<![endif]-->
		
		<%@include file="Footer.jsp" %>