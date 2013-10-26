<!--[if !IE]>start wrapper<![endif]-->
	<%@page import="com.beans.UserBean"%>
<div id="wrapper">
		
		
		<!--[if !IE]>start header main menu<![endif]-->
		
		<div id="header_main_menu">
		<span id="header_main_menu_bg"></span>
		
		<%
			 UserBean userBean = (UserBean)session.getAttribute("userBean"); 
			if(userBean == null) {
				
			}
		%>
				
		<!--[if !IE]>start header<![endif]-->
		<div id="header">
			<div class="inner">
				<h1 id="logo"><a href="#">Customer Relationship Management<span>Administration Panel</span></a></h1>
				
				<!--[if !IE]>start user details<![endif]-->
				<div id="user_details">
					<ul id="user_details_menu">
						<li class="welcome">Welcome <strong><%=userBean.getFirstName() %> (<a class="new_messages" href="#">1 new message</a>)</strong></li>
						
						<li>
							<ul id="user_access">
								<li class="first"><a href="#">My account</a></li>
								<li class="last"><a href="UserController?action=LogoutUser">Log out</a></li>
								
							</ul>
						</li>
						
						
					</ul>
					
					<div id="server_details">
						<dl>
							<dt>Server time :</dt>
							<dd>9:22 AM | 03/04/2009</dd>
						</dl>
						<dl>
							<dt>Last login ip :</dt>
							<dd>192.168.0.25</dd>
						</dl>
					</div>
					
				</div>
				
				<!--[if !IE]>end user details<![endif]-->
			</div>
		</div>
		<!--[if !IE]>end header<![endif]-->
		
		