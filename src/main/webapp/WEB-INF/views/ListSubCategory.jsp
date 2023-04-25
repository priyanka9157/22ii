<%@page import="com.grownited.bean.SubCategoryBean"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>
<link href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css" rel="stylesheet" />
<script src="https://ajax.googleapis.com//ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 <jsp:include page="AdminSideBar.jsp"></jsp:include>
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
            
              <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">Sub Category /</span> List Sub Category</h4>
			              
              <!--/ Basic Bootstrap Table -->

              <hr class="my-5">

              <!-- Bootstrap Dark Table -->
              
              <!--/ Bootstrap Dark Table -->

        <%
	List<SubCategoryBean> listSubCategory =(List<SubCategoryBean>)request.getAttribute("listSubCategory");
 %>      

              <!-- Bootstrap Table with Header - Dark -->
              <div class="card">
                            <!-- Basic Bootstrap Table -->
              
              <h5 class="card-header">List Sub Category
              <a href="newsubcategory" class="bx bx-plus-circle"></a>
              </div>
     
              
              </h5>
                <div class="table-responsive text-nowrap">
                  <table class="table" id="mytable"   style="width:100%">
                  
              
                    <thead class="table-dark">
                      <tr>
                       <th align="center">SubCategoryId</th>
						<th align="center">CategoryId</th>
						<th align="center">SubCategoryName</th>
						<th align="center">CategoryName</th>
						<th align="center">Deleted</th>
						<th align="center">Active</th>
						<th align="center">Action</th>
						<th align="center">Edit</th>
                      </tr>
                    </thead>
                    <tbody class="table-border-bottom-0">
                    <% for(SubCategoryBean sb:listSubCategory){%>

					<tr>
					<td align="center"><span> <%=sb.getSubCategoryId() %></span></td>
					<td align="center"><%=sb.getCategoryId() %></td>
					<td align="center"><span class="subcategoryname"><%=sb.getSubCategoryName() %></span></td>
					<td align="center"><span> <%=sb.getCategoryName() %></span></td>
					<td align="center"><%=sb.isDeleted() %></td>	
					
					<td align="center"><div class="form-check form-switch">
							<input class="form-check-input" onclick="changeStatus(<%=sb.getSubCategoryId()%>,<%=sb.isDeleted() %>)" type="checkbox"
							id="flexSwitchCheckChecked"<%=!sb.isDeleted() ? "checked" : ""%>>
						</div></td>
						<td align="center"><a href="deletesubcategory/<%=sb.getSubCategoryId()%>">Delete</a>
							<a href="viewsubcategory/<%=sb.getSubCategoryId() %>"><i class="bx bx-show"></i></a>
						
						</td>
						<td align="center">
							<a href="editsubcategory?subCategoryId=<%=sb.getSubCategoryId()%>"><i class="bx bx-edit"></i></a>
						</td>
					
					</tr>
        
						<%} %>
					 </tbody>
                  </table>
                </div>
              </div>
              
              <!--/ Bootstrap Table with Header Dark -->

              

              <!-- Bootstrap Table with Header - Light -->
              
              

              

              <!-- Bootstrap Table with Header - Footer -->

              <!-- Bootstrap Table with Caption -->
              
              <!-- Bootstrap Table with Caption -->

              <!-- Bordered Table -->

<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
              
<script type="text/javascript">
   $('#mytable').DataTable();
</script>
              
              
              
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
            <div class="content-backdrop fade"></div>
          </div>
          <!-- Content wrapper -->
        </div>
        <!-- / Layout page -->
      </div>

      <!-- Overlay -->
      <div class="layout-overlay layout-menu-toggle"></div>
    </div>
<!-- - <h3>List SubCategory</h3>
 
 
<table border="1">
	<tr>
			<th>SubCategoryId</th>
			<th>CategoryId</th>
			<th>SubCategoryName</th>
			<th>CategoryName</th>
			<th>Deleted</th>
	</tr>

<% for(SubCategoryBean sb:listSubCategory){%>

	<tr>
			<td><%=sb.getSubCategoryId() %></td>
			<td><%=sb.getCategoryId() %></td>
			<td><%=sb.getSubCategoryName() %></td>
			<td><%=sb.getCategoryName() %>
			<td><%=sb.isDeleted() %></td>	
	</tr>

	<%} %>
	
</table>
-->
</body>
</html>