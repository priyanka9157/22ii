<%@page import="java.util.List"%>
<%@page import="com.grownited.bean.StatusBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>onlineGrocery | New Order</title>
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
              <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light"> </span>Order Status</h4>
              
              <div class="row">
                <div class="col-md-9">
                  <div class="card mb-6">
                  
                    <h5 class="card-header">Edit Status</h5>
                  <form action="updateorderstatus" method="post">
                  <input type="hidden" name="orderId" value="${orderBean.orderId}"/>
                  
                    
                    
                    <div class="card-body">
                      <div>
                      
                        <label for="defaultFormControlInput" class="form-label">Status Name</label>
                        
                        <input type="text" name="status" value="${orderBean.status}" class="form-control" id="defaultFormControlInput" placeholder="${orderBean.statusId}" aria-describedby="defaultFormControlHelp">
                       <br><br>
                      
                      </div>
                     
                      </div>
                      
                     
                      
                      <br><br>
             	       <input class="btn btn-primary d-grid w-50" type="submit" value="updateorderstatus">
             			 
             			 <br><br>
             			 
             			 <a href="listorders">Cancel</a>
             			 
             		</form>
             			 
                   
                    
                 
                 <%List<StatusBean> list =(List<StatusBean>)request.getAttribute("list");%>

                   <div class="row">
                <div class="col-md-4">
                  <div class="card mb-6">
                  
                  
                  <table class="table" border="1">
                    <thead class="table-dark">
                    <tr>
                      <th>StatusId</th>
					   <th>Status</th>
					   </tr>
                      </thead>
                      <tbody class="table-border-bottom-0">
                      <%for (StatusBean sb:list){ %>
                      <tr>
                      <td><%=sb.getStatusId() %></td>
                      <td><%=sb.getStatus() %></td>
                      </tr>
                      
                      <%} %>
                      </tbody>
                      
                      
                      </table>
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
  

</body>
<!-- 
<form action="savecategory" method="post">
		CategoryName : <input type="text" name="categoryName"/>

		<br><br>
		<input type="submit" value="Save Category"/>

	</form>
	<a href="listcategories">List Category</a> 
</body>
 -->
</html>