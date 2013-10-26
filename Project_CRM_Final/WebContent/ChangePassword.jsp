<%@ include file="Header.jsp"%>
<%@ include file="Menu1.jsp"%>
<%@ include file="Menu2.jsp"%>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
		$(document).ready(function(){
			$("#submit").click(function(){
				var isflag=false;
				if($("#userName").val()==""){
					isflag=true;
					$("#userNameErr").fadeIn(1000);
				}
				if($("#password").val()==""){
					isflag=true;
					$("#passwordErr").fadeIn(1000);
				}
				if($("#newpassword").val()==""){
					isflag=true;
					$("#newpasswordErr").fadeIn(1000);
				}
				if($("#repassword").val()==""){
					isflag=true;
					$("#repasswordErr").fadeIn(1000);
				}
				if(isBlank==false){
					return true;
				}
				return false;
			});
			$("#userName").blur(function(){
				if($("#userName").val() != ""){
					$("#userNameErr").fadeOut();
				}
			});
			$("#password").blur(function(){
				if($("#password").val() != ""){
					$("#passwordErr").fadeOut();
				}
			});
			$("#newpassword").blur(function(){
				if($("#newpassword").val() != ""){
					$("#newpasswordErr").fadeOut();
				}
			});
			$("#repassword").blur(function(){
				if($("#repassword").val() != ""){
					$("#repasswordErr").fadeOut();
				}
			});
		});
</script>
<div id="content">
	<div class="inner">
		<div class="section">
			<div class="title_wrapper">
				<span class="title_wrapper_top"></span>
				<div class="title_wrapper_inner">
					<span class="title_wrapper_middle"></span>
					<div class="title_wrapper_content">
						<h2>Serch User:</h2>
						<ul class="section_menu left">
							<!-- 
							<li><a href="#" class="selected_lk"><span class="l"><span></span></span><span class="m"><em>Complaints</em><span></span></span><span class="r"><span></span></span></a></li>
							<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Employees</em><span></span></span><span class="r"><span></span></span></a></li>
							<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Customers</em><span></span></span><span class="r"><span></span></span></a></li>
							<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Site Pages</em><span></span></span><span class="r"><span></span></span></a></li>			 
							 <li><a href="#" class="selected_lk"><span class="l"><span></span></span><span class="m"><em></em><span></span></span><span class="r"><span></span></span></a></li>
							-->
						</ul>
					</div>
				</div>
				<span class="title_wrapper_bottom"></span>
			</div>
 		<div class="section_content">
			<span class="section_content_top"></span>
			<div class="section_content_inner">
				<form action="UserController?action=AddChangePassword" class="search_form" id="regform" method="post">
					<fieldset>
						<div class="forms">
							<h3> change password </h3>
							<div class="row">
								<label>Enter Username:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="userName" type="text" id="userName"/></span></li>
										<li style="display: none;color: red;" id="usernameErr">* Enter User Name..</li>
									</ul>
								</div>
							</div>
							<div class="row">
								<label>Current Password:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="password" type="text" id="password"/></span></li>
										<li style="display: none;color: red;" id="passwordErr">* Enter Current Password.. </li>
									</ul>
								</div>
							</div>
							<div class="row">
								<label>New Password:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="newpassword" type="text" id="newpassword"/></span></li>
										<li style="display: none;color: red;" id="newpasswordErr">* Invalid new password</li>
									</ul>
								</div>
							</div>
							<div class="row">
								<label>Re-enter Password:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="repassword" type="text" id="repassword"/></span></li>
										<li style="display: none;color: red;" id="repasswordErr">* Invalid re-enter password</li>
									</ul>
								</div>
							</div>
						</div>
					</fieldset>
					<fieldset>
						<div class="forms">
							<div class="row">
								<div class="inputs">
									<span class="button blue_button"><span><span>Submit</span></span><input name="search" type="submit" id="submit"/></span>
								</div>
							</div>
						</div>
					</fieldset>
				</form>
			</div>
		</div>
	</div>
</div>
</div>
</div>
<%@ include file="Footer.jsp"%>