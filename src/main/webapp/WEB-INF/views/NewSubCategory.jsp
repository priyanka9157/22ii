<%@page import="com.grownited.bean.CategoryBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>onlineGrocery | New SubCategory</title>
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
              <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light"> </span>Sub Category</h4>

              <div class="row">
                <div class="col-md-9">
                  <div class="card mb-6">
                  
                    <h5 class="card-header">Add New Sub Category</h5>
                  <form action="savesubcategory" id="save" method="post">
                    <div class="card-body">
                      <div>
                      
                        <label for="defaultFormControlInput" class="form-label">Sub Category Name</label>
                        
                        <input type="text" name="subCategoryName" class="form-control" id="sub" placeholder="subcategory name" aria-describedby="defaultFormControlHelp">
                      <span id="subError" class="error"></span>
                       <br><br>
                       <div class="mb-3">
                     
                        <% List<CategoryBean> list = (List<CategoryBean>) request.getAttribute("list"); %>
                        
                         Category <select name="categoryId" class="form-select">
						<%
							for (CategoryBean cb : list) {
						%>
						
						<option selected value="-1" <%=cb.getCategoryId()%>">
						<%=cb.getCategoryName()%></option>
						<%
							}
						%>
						</select><br><br>
						
                       
                      </div>
                      <br><br>
                      <button class="btn btn-primary d-grid w-100" type="submit" value="Add SubCategory">Save</button>
             			 <br><br>
             			 <a href="listsubcategory">List Sub Category</a> 
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

<script>
		
		function validateSubCategory(){
			categoryId = document.getElementById("categoryId");
			isError = false;
			if(categoryId.value == "-1"){
				isError = true;
			}
		}
	
	</script>



            <!-- Footer -->
            <jsp:include page="AdminFooter.jsp"></jsp:include>
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
	<form action="savesubcategory" method="post">
		SubCategoryName : <input type="text" name="subCategoryName"/> 
		
		<br><BR>
		         
		</select><br><br>
		
		<input type="submit" value="Add SubCategory"/>
	</form>
	<br>
	<br>
	<a href="listsubcategory">List SubCategory</a>
 -->
</body>
</html>