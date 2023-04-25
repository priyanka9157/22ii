<%@page import="com.grownited.bean.ProductBean"%>
<%@page import="com.grownited.bean.CategoryBean"%>
<%@page import="com.grownited.bean.SubCategoryBean"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>onlineGrocery | New Product</title>
<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>
<jsp:include page="AdminSideBar.jsp"></jsp:include>
 

    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
      <div class="layout-container">
        <!-- Menu -->


        <!-- / Menu -->

        <!-- Layout container -->
        <div class="layout-page">
          <!-- Navbar -->

                   <jsp:include page="SearchBar.jsp"></jsp:include>
         
          <!-- / Navbar -->

          <!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Content -->
          
            <div class="container-xxl flex-grow-1 container-p-y">
              <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light"> </span>Product</h4>

              <div class="row">
                <div class="col-md-9">
                  <div class="card mb-6">
                  
                    <h5 class="card-header">Add New Product</h5>
                  <form action="saveproduct" method="post">
                    <div class="card-body">
                      <div>
                        <label for="defaultFormControlInput" class="form-label"> Product Name</label>
                        <input type="text" name="productName" class="form-control" id="defaultFormControlInput" placeholder="product name" aria-describedby="defaultFormControlHelp">

						<label for="defaultFormControlInput" class="form-label"> Description</label>
                        <input type="text" name="description" class="form-control" id="defaultFormControlInput" placeholder="description" aria-describedby="defaultFormControlHelp">
                        
                        <label for="defaultFormControlInput" class="form-label">Quantity</label>
                        <input type="text" name="quantity" class="form-control" id="defaultFormControlInput" placeholder="quantity" aria-describedby="defaultFormControlHelp">
                        
                        <label for="defaultFormControlInput" class="form-label"> Price</label>
                        <input type="number" name="price" class="form-control" id="defaultFormControlInput" placeholder="price" aria-describedby="defaultFormControlHelp">
                        
                        
                        <label for="defaultFormControlInput" class="form-label"> Brand Name</label>
                        <input type="text" name="brandName" class="form-control" id="defaultFormControlInput" placeholder="brandName" aria-describedby="defaultFormControlHelp">
                      
                        
                        <br><br>
                        <div class="row mb-3">
								<legend class="col-form-label col-sm-2 pt-0">Top Selling</legend>
								<div class="col-sm-10">
									<div class="form-check">
										<input class="form-check-input" type="checkbox"
											id="gridCheck2" value="true" name="topSellingInd" > <label
											class="form-check-label" for="gridCheck2">  </label>
									</div>

								</div>
							</div>
                        <div class="row mb-3">
								<legend class="col-form-label col-sm-2 pt-0">Latest?</legend>
								<div class="col-sm-10">
									<div class="form-check">
										<input class="form-check-input" type="checkbox"
											id="gridCheck2" value="true" name="latestInd" > <label
											class="form-check-label" for="gridCheck2">  </label>
									</div>

								</div>
							</div>
                       
                      
                      <div class="mb-3">
                        
                        <% List<CategoryBean> list = (List<CategoryBean>) request.getAttribute("list"); %>
                       
                         Category <select name="categoryId" class="form-select">
						
						<%
							for (CategoryBean cb : list) 
							{
						%>
						
							<option value="<%=cb.getCategoryId()%>">
							<%=cb.getCategoryName()%></option>
						
						<%
							}
						%>
						</select><br><br>
				
				</div>
				<div>
						<%List<SubCategoryBean> listSubCategory=(List<SubCategoryBean>)request.getAttribute("listSubCategory"); %>      
					 SubCategory <select name="subCategoryId" class="form-select" >
 						
 						<% 
 						for(SubCategoryBean sb:listSubCategory)
 						{
 						%>
 						
 						<option value="<%=sb.getSubCategoryId() %>">
 						<%=sb.getSubCategoryName() %></option>
 						<%} %>

					</select>
                      </div>
                      <br><br>
                      <button class="btn btn-primary d-grid w-100" type="submit" value="saveproduct">Save</button>
             			 <br><br>
             			<a href="listproducts">List Product</a>
             			</div>
                    </div>
                    </form>  
                  </div>
                
                </div>
                

                <!-- Form controls -->
                

                <!-- Input Sizing -->
                 </div>
            </div>
            </div>
            <!-- / Content -->

            <!-- Footer -->
            <footer class="content-footer footer bg-footer-theme">
              <div class="container-xxl d-flex flex-wrap justify-content-between py-2 flex-md-row flex-column">
                <div class="mb-2 mb-md-0">
                  ©
                  <script>
                    document.getFullYear());
                  </script>2023
                  
                  
                </div>
                <div>
                  <a href="https://themeselection.com/license/" class="footer-link me-4" target="_blank">License</a>
                  <a href="https://themeselection.com/" target="_blank" class="footer-link me-4">More Themes</a>

                  <a href="https://themeselection.com/demo/sneat-bootstrap-html-admin-template/documentation/" target="_blank" class="footer-link me-4">Documentation</a>

                  <a href="https://github.com/themeselection/sneat-html-admin-template-free/issues" target="_blank" class="footer-link me-4">Support</a>
                </div>
              </div>
            </footer>
            <!-- / Footer -->

            <div class="content-backdrop fade"></div>
          </div>
          <!-- Content wrapper -->
        </div>
        <!-- / Layout page -->
      </div>

      <!-- Overlay -->
      <div class="layout-overlay layout-menu-toggle"></div>
    </div>
    <!-- / Layout wrapper -->

    <div class="buy-now">
      <a href="https://themeselection.com/products/sneat-bootstrap-html-admin-template/" target="_blank" class="btn btn-danger btn-buy-now">Upgrade to Pro</a>
    </div>

    <!-- Core JS -->
    <!-- build:js assets/vendor/js/core.js -->
    <script src="../assets/vendor/libs/jquery/jquery.js"></script>
    <script src="../assets/vendor/libs/popper/popper.js"></script>
    <script src="../assets/vendor/js/bootstrap.js"></script>
    <script src="../assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

    <script src="../assets/vendor/js/menu.js"></script>
    <!-- endbuild -->

    <!-- Vendors JS -->

    <!-- Main JS -->
    <script src="../assets/js/main.js"></script>

    <!-- Page JS -->

    <script src="../assets/js/form-basic-inputs.js"></script>

    <!-- Place this tag in your head or just before your close body tag. -->
    <script async="" defer="" src="https://buttons.github.io/buttons.js"></script>
  
<!-- 
<form action="saveproduct" method="post">


		ProductName : <input type="text" name="productName"/><br><br>
		Description : <input type="text" name="description"/><br><br>
		Quantity : <input type="text" name="quantity"/><br><br>
		Price : <input type="number" name="price"/><br><br>
		TopSelling : <input type="text" name="topSelling"/><br><br>
		MostValue : <input type="text" name="mostValue"/><br><br>
		BrandName : <input type="text" name="brandName"/>

		<br><br>
		<input type="submit" value="saveproduct"/><br><br>

	</form>
	<a href="listproducts">List Product</a>
	 --> 
</body>
</html>