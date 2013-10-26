<%@ include file="Header.jsp" %>
<%@ include file="Menu1.jsp" %>
<%@ include file="Menu2.jsp" %>
<body>
<script type="text/javascript">
$(document).ready(function(){
	$("#product_lk").addClass('selected_lk');

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
								<h2>Product</h2>
							</div>
						</div>
						<span class="title_wrapper_bottom"></span>
					</div>	 
					<div class="section_content">
						<span class="section_content_top"></span>
						
						<div class="section_content_inner">
							 <!--[if !IE]>start lists<![endif]-->	
						<div class="lists">
							<div class="lists_inner">
								<dl>
									<dt>Product Settings</dt>
									<dd>
										<div class="dd_top">
											<ul class="dd_bottom">
												<li><a href="ProductController?action=AddProduct">Add Product</a></li>
												<li><a href="ProductController?action=SearchProduct">Search Product</a></li>
												<li><a href="ProductController?action=ProductList">Product List</a></li>
												<li><a href="ProductController?action=RemoveProduct">Remove Product</a></li>
												<li><a href="#"></a></li>
												<li><a href="#"></a></li>
												<li><a href="#"></a></li>
												<li><a href="#"></a></li>	
											</ul>
										</div>
									</dd>
								</dl>
									</div>
						</div>
						</div>
					</div>
					
				</div>
			</div>
		</div>
		</div>
	</body>	
<%@include file="Footer.jsp" %>		