<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="imagetoolbar" content="no" />

<title>User Login</title>

<link media="screen" rel="stylesheet" type="text/css" href="css/login.css"  />
<link media="screen" rel="stylesheet" type="text/css" href="css/login-blue.css"  />

</head>

<body>
<%
String msg="";
%>
<div id="wrapper">
	<div id="wrapper2">
		<div id="wrapper3">
			<div id="wrapper4">
			<span id="login_wrapper_bg"></span>
				<div id="stripes">
					<div id="login_wrapper">
						<form action="../LoginController?action=UserLogin" method="post" id="loginform">
						<fieldset>
							<h1>Please log in</h1>
							<div class="formular">
								<span class="formular_top"></span>
								<div class="formular_inner">
								<label>
									<strong>UserID:</strong>
									<span class="input_wrapper">
									<input name="userName" type="text" id="userName"/>
								</span>
								</label>
								<label>
									<strong>Password:</strong>
									<span class="input_wrapper">
										<input name="password" type="password" id="password"/>
									</span>
								</label>
								<label class="inline">
									<input class="checkbox" name="" type="checkbox" value="" />
									Remember me on this computer
								</label>
								<ul>
									<%
										if(request.getParameter("errMsg")!=null && !request.getParameter("errMsg").equals("")){
											if(request.getParameter("errMsg").equalsIgnoreCase("invalid")){
												msg = "Invalid UserID...!";
											}
											if(request.getParameter("errMsg").equalsIgnoreCase("wrongpassword")){
												msg = "Invalid Password..";
											}
										}
										out.println(msg);
									%>
								</ul>
								<ul class="form_menu">
									<li><span class="button"><span><span><em>SUBMIT</em></span></span><input type="submit" name=""/></span></li>
									<li><span class="button"><span><span><a href="#">BACK TO SITE</a></span></span></span></li>
								</ul>
								</div>
								<span class="formular_bottom"></span>
							</div>
							</fieldset>
							</form>
							<span class="reflect"></span>
							<span class="lock"></span>
						</div>
	    			</div>
				</div>
     		</div>
		</div>	
	</div>
</body>
</html>