<%@page import="com.grownited.bean.AddressBean"%>
<%@page import="com.grownited.bean.StatusBean"%>
<%@page import="java.util.List"%>
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
              <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light"> </span>Order</h4>

              <div class="row">
                <div class="col-md-9">
                  <div class="card mb-6">
                  
                    <h5 class="card-header">Add New Order</h5>
                  <form action="saveorder" method="post">
                    <div class="card-body">
                     
                       
                     <label for="html5-date-input" class="col-md-5 col-form-label">Order Date</label>
                        <div class="col-md-12">
                          <input class="form-control" name="orderDate" type="date" value="2021-06-18" id="html5-date-input">
                        </div>
                         
                      <label for="defaultFormControlInput" class="form-label">Totale Amount</label>
                       <input type="number" name="totaleAmount" class="form-control" id="defaultFormControlInput" placeholder="totalamount" aria-describedby="defaultFormControlHelp">
                      
                      <div class="mb-3">
                      	<% List<AddressBean> listAddress =(List<AddressBean>)request.getAttribute("listAddress"); %>
						<br><BR>
						 Address <select name="addressId" class="form-select">

					<%for(AddressBean ab:listAddress){ %>
					<option value="<%=ab.getAddressId() %>"><%=ab.getAddressLine() %></option>
					<%
						}
					%>
						
					</select>
					<% List<StatusBean> list =(List<StatusBean>)request.getAttribute("list");%>
					Status <select name="statusId" class="form-select">
					<% for(StatusBean sb:list){%>
					<option value="<%=sb.getStatusId() %>" >
					<%=sb.getStatus() %></option>
					
					<%} %>
					
					</select>
					
					</label>
                     
				
				</div>
                      <br><br>
                      <button class="btn btn-primary d-grid w-100" type="submit" value="add Order">Save</button>
             			 <br><br>
             			<a href="listorders">List Order</a>
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
<form action="saveorder" method="post">
		OrderDate : <input type="text" name="orderDate"/>
		<br><br>
		totaleAmount : <input type="number" name="totaleAmount"/>
		<br><br>
		
		</select><br><br>
		<br><br>
		
					
		</select>
		<br><br>
		<input type="submit" value="Add Order"/>

	</form>
	<a href="listorders">List Order</a>
	 -->
</body>
</html>