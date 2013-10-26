<%@ include file="Header.jsp"%>
<%@ include file="Menu1.jsp"%>
<%@ include file="Menu2.jsp"%>
<script type="text/javascript" src="js/jquery.js"></script>
<script>
	$(document).ready(function(){
		$("#submit").click(function(){
			console.log("1");
			var isBlank=false;
			
			
			if($("#userName").val() == ""){
				isBlank=true;
				$("#userNameErr").fadeIn(2000);
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
				<h2>Disable User:</h2>
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
				<form action="UserController?action=AddDisableUser" class="search_form" id="regform" method="post">
					<fieldset>
					<div class="forms">
							
							<div class="row">
								<label>Enter UserName:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="username" type="text" id="username"/></span></li>
										<li style="display: none;color: red;" id="usernameErr">* Invalid  username</li>
									</ul>
								</div>
							</div>
							</div>
						</fieldset>
						<fieldset>
						<div class="forms">
							<div class="row">
								<div class="inputs">
									<span class="button blue_button"><span><span>Disable</span></span><input name="search" type="submit" id="submit"/></span>
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