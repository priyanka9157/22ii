<%@page import="com.grownited.bean.ProductBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
              <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light"> </span>Product Image</h4>

              <div class="row">
                <div class="col-md-12">
                  <div class="card mb-6">
                  
                    <h5 class="card-header">Add New Product Image</h5>
                   <% List<ProductBean> list = (List<ProductBean>) request.getAttribute("listProducts");%>
                    
                 	<form action="saveimage" method="post" enctype="multipart/form-data" >
                   
                  <input type="hidden" name="productId" value="${param.productId}"/>
                  
                    <div class="card-body">
                     <label for="inputText" class="col-sm-2 col-form-label">Image</label>
								<div class="col-sm-6">
									<input type="file" name="imageFile" class="form-control">
								</div>
							</div>
                     
                     
                      <br><br>
                      <button class="btn btn-primary d-grid w-100" type="submit" value="saveproductimage">Save</button>
             			 <br><br>
             			 </form>
             			<a href="listproductimage">List Product Image</a>
             			</div>
             			 
                    </div>
                   
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


<!-- <h2>New Product Image </h2> -->
<%-- <% List<ProductBean> list = (List<ProductBean>) request.getAttribute("listProducts");%> --%>
<!--     	<form action="saveproductimage" method="post"> -->
		
<!-- 		<br><BR> -->
<!-- 		 Product <select name="productId"> -->

<%-- 			<% --%>
// 				for (ProductBean pb : list) {
<%-- 			%> --%>
<%-- 			<option value="<%=pb.getproductId()%>"> --%>
<%-- 				<%=pb.getproductName()%></option> --%>
<%-- 			<% --%>
// 				}
<%-- 			%> --%>
<!-- 		</select><br><br> -->
<!-- 		<br><br> -->
<!-- 		<input type="submit" value="saveproductimage"/><br><br> -->

<!-- 	</form> -->
<!-- 	<a href="listproductimage">List Product Image</a>  -->
</body>
</html>