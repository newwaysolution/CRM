<%@include file="User_Header.jsp" %>
<%@include file="Menu1.jsp" %>
<%@include file="Menu2.jsp" %>

<script type="text/javascript">
	$(document).ready(function(){
		$("#submit").click(function(){
			console.log("1");
			var isBlank=false;
			
			if($("#oName").val() == ""){
				isBlank=true;
				$("#oNameErr").fadeIn(1000);
			}
			if($("#assignedTo").val() == ""){
				isBlank=true;
				$("#assignedToErr").fadeIn(1000);
			}
			console.log("isBlank: "+isBlank);
			if(isBlank==false){
				return true;
			}
			return false;
		});
		$("#oName").blur(function(){
			if($("#oName").val() != ""){
				$("#oNameErr").fadeOut();
			}
		});
		$("#assignedTo").blur(function(){
			if($("#assignedTo").val() != ""){
				$("#assignedToErr").fadeOut();
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
				<h2>Add Organization:</h2>
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
				<form action="OrganizationController?action=AddSubmitOrganization" class="search_form" id="regform" name="regForm" method="post">
					<fieldset>
						<div class="forms">
							<h3>Organization Details</h3>
							<div class="row">
								<label>Organization Name:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="oName" type="text" id="oName"/></span></li>
										<li style="display: none;color: red;" id="oNameErr">* Invalid Organization Name</li>
									</ul>
								</div>		
							</div>
							<div class="row">
								<label>WebSite :</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="website" type="text" id="website"/></span></li>
									</ul>
								</div>
							</div>
							<div class="row">
								<label>Employees :</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="employees" type="text" id="employees"/></span></li>
									</ul>
								</div>
							</div>
							<div class="row">
								<label>Annual Revenue :</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="annualRevenue" type="text" id="annualRevenue"/></span></li>
									</ul>
								</div>
							</div>
							<div class="row">
								<label>Type :</label>
								<div class="inputs">
									<div>
										<select id="type" name="type" >
											<option value="" selected="selected">-Select an Option-</option>
											<option value="Analyst">Analyst</option>
											<option value="Reseller">Reseller</option>
											<option value="Prospect">Prospect</option>
											<option value="Press">Press</option>
											<option value="Partner">Partner</option>
											<option value="Investor">Investor</option>
											<option value="Integrator">Integrator</option>
											<option value="Customer">Customer</option>
											<option value="Competitor">Competitor</option>
											<option value="Other">Other</option>
										</select>
									</div>
								</div>
							</div>	
							<div class="row">
								<label>Assigned To:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="assignedTo" type="text" id="assignedTo"/></span></li>
										<li style="display: none;color: red;" id="assignedToErr">* Invalid Name</li>
									</ul>
								</div>
							</div>
							<div class="row">
								<label>Notify Owner :</label>
								<div class="inputs">
									<ul>
										<li><input name="notifyOwner" type="checkbox" id="notifyOwner"/></li>
									</ul>
								</div>
							</div>
							<div class="row">
								<label>SIC Code :</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="SICCode" type="text" id="sICCode"/></span></li>
									</ul>
								</div>
							</div>
							<div class="row">
								<label>Primary Email:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="primaryEmail" type="text" id="pEmail"/></span></li>
									</ul>
								</div>
							</div>
							<div class="row">
								<label>Primary Phone:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="primaryPhone" type="text" id="pPhone"/></span></li>
									</ul>
								</div>
							</div>
							<div class="row">
								<label>Industry :</label>
								<div class="inputs">
									<div>
										<select id="industry" name="industry" >
											<option value="" selected="selected">-Select an Option-</option>
											<option value="Apparel">Apparel</option>
											<option value="Hospitality">Hospitality</option>
											<option value="Insurance">Insurance</option>
											<option value="Machinery">Machinery</option>
											<option value="Manufacturing">Manufacturing</option>
											<option value="Media">Media</option>
											<option value="NotForProfit">Not For Profit</option>
											<option value="Recreation">Recreation</option>
											<option value="Retail">Retail</option>
											<option value="Shipping">Shipping</option>
											<option value="Technology">Technology</option>
											<option value="Telecommunication">Telecommunication</option>
											<option value="Transportation">Transportation</option>
											<option value="Utilities">Utilities</option>
											<option value="Healthcare">Healthcare</option>
											<option value="Government">Government</option>
											<option value="FoodBeverage">Food And Beverage</option>
											<option value="Banking">Banking</option>
											<option value="BioTechnology">BioTechnology</option>
											<option value="Chemicals">Chemicals</option>
											<option value="Communication">Communication</option>
											<option value="Construction">Construction</option>
											<option value="Consulting">Consulting</option>
											<option value="Education">Education</option>
											<option value="Electronics">Electronics</option>
											<option value="Energy">Energy</option>
											<option value="Engineering">Engineering</option>
											<option value="Environment">Environment</option>
											<option value="Entertainment">Entertainment</option>
											<option value="Finance">Finance</option>
											<option value="Other">Other</option>
										</select>
									</div>
								</div>
							</div>
							<div class="row">
								<label>Fax:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="fax" type="text" id="fax"/></span></li>
									</ul>
								</div>
							</div>
							<div class="row">
								<label>Ownership :</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="ownership" type="text" id="ownership"/></span></li>
									</ul>
								</div>
							</div>
							<div class="row">
								<label>Ticker Symbol:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="tickerSymbol" type="text" id="tickerSymbol"/></span></li>
									</ul>
								</div>
							</div>
							<div class="row">
								<label>Rating :</label>
								<div class="inputs">
									<div>
										<select id="rating" name="rating" >
											<option value="" selected="selected">-Select-</option>
											<option value="Acquired">Acquired</option>
											<option value="Active">Active</option>
											<option value="MarketFailed">Market Failed</option>
											<option value="ProjectCancelled">Project Cancelled</option>
											<option value="ShutDown">Shut Down</option>
										</select>
									</div>
								</div>
							</div>	
							<div class="row">
								<label>Email Opt Out :</label>
								<div class="inputs">
									<ul>
										<li><input name="emailOptOut" type="checkbox" id="eMAilOptOut"/></li>
									</ul>
								</div>
							</div>
						</div>
					</fieldset>
					
					
					<fieldset>
						<div class="forms">
							<h3>Address Details</h3>
							<div class="row">
								<label>Billing Address:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="billingAddress" type="text" id="billingAddress"/></span></li>
									</ul>
								</div>
							</div>
							<div class="row">
								<label>Billing PO Box:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="billingPOBox" type="text" id="billingPOBox"/></span></li>
									</ul>
								</div>
							</div>
							<div class="row">
								<label>Billing City:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="billingCity" type="text" id="billingCity"/></span></li>
									</ul>
								</div>
							</div>
							<div class="row">
								<label>Billing State:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="billingState" type="text" id="billingState"/></span></li>
									</ul>
								</div>
							</div>
							<div class="row">
								<label>Billing Code:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="billingCode" type="text" id="billingCode"/></span></li>
									</ul>
								</div>
							</div>
							<div class="row">
								<label>Billing Country:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="billingCountry" type="text" id="billingCountry"/></span></li>
									</ul>
								</div>
							</div>
							
							<div class="row">
								<label>Shipping Address:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="shippingAddress" type="text" id="shippingAddress"/></span></li>
									</ul>
								</div>
							</div>
							<div class="row">
								<label>Shipping PO Box:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="shippingPOBox" type="text" id="sPOBox"/></span></li>
									</ul>
								</div>
							</div>
							<div class="row">
								<label>Shipping City:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="shippingCity" type="text" id="shippingCity"/></span></li>
									</ul>
								</div>
							</div>
							<div class="row">
								<label>Shipping State:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="shippingState" type="text" id="shippingState"/></span></li>
									</ul>
								</div>
							</div>
							<div class="row">
								<label>Shipping Code:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="shippingCode" type="text" id="shippingCode"/></span></li>
									</ul>
								</div>
							</div>
							<div class="row">
								<label>Shipping Country:</label>
								<div class="inputs">
									<ul>
										<li><span class="input_wrapper"><input class="text" name="shippingCountry" type="text" id="shippingCuntry"/></span></li>
									</ul>
								</div>
							</div>
						</div>
					</fieldset>
					
					<fieldset>
						<div class="forms">
							<h3>Descrpition Details</h3>
							<div class="row">
								<label>Description:</label>
								<div class="inputs">
									<ul>
										<li><textarea class="text" name="descrption" id="descrption"/></textarea></li>
									</ul>
								</div>
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
<%@include file="Footer.jsp" %>
