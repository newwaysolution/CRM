<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<title>Admin Login</title>
<link media="screen" rel="stylesheet" type="text/css" href="css/login.css" />
</head>

<body>
<%
	String err ="";
	if(request.getParameter("errMsg")!=null && !request.getParameter("errMsg").equals("")){
		err = request.getParameter("errMsg");
	}
%>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		var isErr = "<%=err%>";
		$("#submitBtn").click(function(){
			var isBlank = false;
			if($("#userName").val() == "" || $("#password").val() == ""){
				isBlank = true;
			}
			if(!isBlank){
				$("#AdminLoginForm").submit();
			}
			if(isBlank){
				$(".error").fadeIn(1000);
			}
		});
		if(isErr != ""){
			$(".error").fadeIn(1000);
		}
	});
</script>
<div id="wrapper">
	<div id="wrapper2">
		<div id="wrapper3">
			<div id="wrapper4">
				<span id="login_wrapper_bg"></span>
				<div id="stripes">
					<div id="login_wrapper">
						<div class="error" style="display: none;">
							<div class="error_inner">
								<strong>Access Denied</strong> | <span>User/Password Combination Wrong</span>
							</div>
						</div>
						<form action="LoginController?action=AdminLogin" id="AdminLoginForm" method="post">
							<fieldset>
								<h1>Please log in</h1>
								<div class="formular">
									<span class="formular_top"></span>
									<div class="formular_inner">
										<label> <strong>UserName:</strong> <span class="input_wrapper"> <input name="userName" type="text" id="userName" /></span></label> 
										<label> <strong>Password:</strong> <span class="input_wrapper"> <input name="password" type="password" /></span></label>
										<label class="inline"> <input class="checkbox"name="" type="checkbox" value="" />Remember me on this computer</label>
										<ul class="form_menu">
											<li><span class="button"><span><span><em>SUBMIT</em></span></span><input type="button" name="submitBtn" id="submitBtn" /></span></li>
											<li><span class="button"><span><span><a href="#">BACK TO SITE</a></span></span></span></li>
										</ul>
									</div>
									<span class="formular_bottom"></span>
								</div>
							</fieldset>
						</form>
						<span class="reflect"></span> <span class="lock"></span>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>

