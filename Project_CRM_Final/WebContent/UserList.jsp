<%@page import="java.sql.ResultSet"%>
<%@include file="Header.jsp" %>
<%@include file="Menu1.jsp" %>
<%@include file="Menu2.jsp" %>
<%
	ResultSet userList = (ResultSet)request.getAttribute("userList");
%>		
		<div id="content">
			<div class="inner">
				<div class="section">
					
					<!--[if !IE]>start title wrapper<![endif]-->
					<div class="title_wrapper">
						<span class="title_wrapper_top"></span>
						<div class="title_wrapper_inner">
							<span class="title_wrapper_middle"></span>
							<div class="title_wrapper_content">
								<h2>User's List:</h2>
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
								<li><a href="#" class="selected"><span><span>All User</span></span></a></li>
								<!-- <li><a href="#"><span><span>All products</span></span></a></li>
								<li><a href="#"><span><span>Best Sellers</span></span></a></li> -->
							</ul>
							<!--[if !IE]>end  tabs<![endif]-->
							<a href="UserController?action=AddUser" class="update"><span><span><em>Add New User</em><strong></strong></span></span></a>
							</div>
						
							<!--[if !IE]>start table_wrapper<![endif]-->
							<div class="table_wrapper">
								<div class="table_wrapper_inner">
								<table cellspading="0" colspadding="0" width="100%">
									<tbody><tr>
										<th style="width: 17px;">No.</th>
										<th class="photo"><span>UserId</span></th>
										<th><a href="#" class="asc">UserName</a></th>
										<th style="width: 81px;">Company</th>
										<th style="width: 81px;">City</th>
										<!-- <th style="width: 60px;"><a href="#" class="desc">License End Date</a></th> -->
										<th style="width: 60px;">Enable/Disable</th>
										
										<th style="width: 165px;">Actions</th>
									</tr>
									<%
									int no = 1;
									while(userList.next()){
										String userId = (userList.getString("UserId")!=null)?userList.getString("UserId"):"";
									%>
										<tr class="first">
											<td><%=no++ %>.</td>
											<td><a href="UserController?action=ViewUser&userId=<%=userId%>" class="product_name"><%=(userList.getString("UserId")!=null)?userList.getString("UserId"):"" %></a></td>
											<td><a href="UserController?action=ViewUser&userId=<%=userId%>" class="product_name"><%=userList.getString("UserName")!=null?userList.getString("UserName"):"" %></a></td>
											<td><a href="CompanyController?action=ViewCompany&companyId=<%=userList.getString("Company") %>" class="product_name"><%=userList.getString("Company")!=null?userList.getString("Company"):"&nbsp;" %></a></td>
											<td><%=userList.getString("City")!=null?userList.getString("City"):"&nbsp;" %></td>
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
														<li><a class="details" href="UserController?action=ViewUser&userId=<%=userId%>">Details</a></li>
														<li><a class="edit" href="UserController?action=EditUser&userId=<%=userId%>">Edit</a></li>
														<li><a class="delete" href="UserController?action=DeleteUser&userId=<%=userId%>">Delete</a></li>
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
	</div>
		<%@include file="Footer.jsp" %>