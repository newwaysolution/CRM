<%@ page language="java" import="java.sql.ResultSet" %>
<%@ include file="Header.jsp"%>
<%@ include file="Menu1.jsp"%>
<%@ include file="Menu2.jsp"%>
<script type="text/javascript" src="firstJQuery.js"></script>
		<script type="text/javascript" src="./datepicker/js/jquery-ui-1.8.23.custom.min.js"></script>
		<script>
			$(function() {
				$( "#dateErr" ).datepicker();
			});
		</script>
<script type="text/javascript" src="js/jquery.js"></script>
<script>
	$(document).ready(function(){
		$("#submit").click(function(){
			console.log("1");
			var isBlank=false;
			
			if($("#pName").val() == ""){
				isBlank=true;
				$("#pNameErr").fadeIn(2000);
			}
			if($("#pcompany").val() == ""){
				isBlank=true;
				$("#compErr").fadeIn(2000);
			}
			if($("#city").val() == ""){
				isBlank=true;
				$("#cityErr").fadeIn(2000);
			}
			if($("#price").val() ==	""){
				isBlank=true;
				$("#priceErr").fadeIn(2000);
			}
			
			
			});
	});
</script>
<body>
<%					String msg="";
					if(request.getParameter("Msg")!=null && !request.getParameter("Msg").equals("")){
						if(request.getParameter("Msg").equalsIgnoreCase("success")){
							msg = "successfully inserted";
						}
						if(request.getParameter("Msg").equalsIgnoreCase("Err")){
							msg = "not inserted data";
						}
					}
					out.println(msg);
				%>
<div id="content">
	<div class="inner">
	 <div class="section">
	<div class="title_wrapper">
		<span class="title_wrapper_top"></span>
		<div class="title_wrapper_inner">
			<span class="title_wrapper_middle"></span>
			<div class="title_wrapper_content">
				<h2>Add Product:</h2>
				<ul class="section_menu left">
					<!-- 
					<li><a href="#" class="selected_lk"><span class="l"><span></span></span><span class="m"><em>Complaints</em><span></span></span><span class="r"><span></span></span></a></li>
					<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Employees</em><span></span></span><span class="r"><span></span></span></a></li>
					<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Customers</em><span></span></span><span class="r"><span></span></span></a></li>
					<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Site Pages</em><span></span></span><span class="r"><span></span></span></a></li>
					
					 <li><a href="#" class="selected_lk"><span class="l"><span></span></span><span class="m"><em>User Registration</em><span></span></span><span class="r"><span></span></span></a></li>
					 -->
				 </ul>
			</div>
		</div>
		<span class="title_wrapper_bottom"></span>
	</div>
 
 
	<div class="section_content">
		<span class="section_content_top"></span>
			<div class="section_content_inner">
				<form action="ProductController?action=AddSubmitProduct" class="search_form" id="regform" method="post">
					<fieldset>
						<div class="forms">
							<h3>Product Details</h3>
							<div class="row">
								<label>Product Name:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="pname" type="text" id="pName"/></span></li>
										<li style="display: none;color: red;" id="pNameErr">* Invalid Product Name</li>
									</ul>
								</div>
							</div>
							<div class="row">
								<label>Product Company:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="pcompany" type="text" id="pcompany"/></span></li>
										<li style="display: none;color: red;" id="compErr">* Invalid company</li>
									</ul>
								</div>
							</div>
							<div class="row">
								<label>city:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="city" type="text" id="city"/></span></li>
										<li style="display: none;color: red;" id="cityErr">* Invalid city</li>
									</ul>
								</div>
							</div>
							<div class="row">
								<label>Price:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="price" type="text" id="price"/></span></li>
										<li style="display: none;color: red;" id="priceErr">* Invalid price</li>
									</ul>
								</div>
							</div>
							
							<div class="row">
								<label>Mfg Date:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="date" type="text" id="date"/></span></li>
										<li style="display: none;color: red;" id="dateErr">* Invalid Date</li>
									</ul>
								</div>
							</div>
							
							
					</fieldset>
								
					<fieldset>
						<div class="forms">
							<div class="row">
								<div class="inputs">
									<span class="button blue_button"><span><span>Submit</span></span><input name="submitbtn" type="submit" id="submit"/></span>
								</div>
							</div>
						</div>
					</fieldset>
				</form>				
			</div>			
			<span class="section_content_bottom"></span>
		</div>
	</div>
	</div>
	</div>
	</body>
	<%@ include file="Footer.jsp" %>
	