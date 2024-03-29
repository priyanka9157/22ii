<%@page import="com.grownited.bean.OrderBean"%>
<%@page import="com.grownited.bean.ProductBean"%>
<%@page import="com.grownited.bean.StatusBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New OrderDetail</title>
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
              <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light"> </span>Order Detail</h4>

              <div class="row">
                <div class="col-md-9">
                  <div class="card mb-6">
                  
                    <h5 class="card-header">Add New Order Detail</h5>
                     <form action="saveorderdetail" method="post">
                  
                    <div class="card-body">
                             
                      
                      <div class="mb-3">
                      
                      
		<%
		List<OrderBean> listOrders = (List<OrderBean>) request.getAttribute("listOrders");
	%>
						<br><BR>
						Order <select name="orderId"  class="form-select">
					<%for(OrderBean ob:listOrders){ %>
				<option value="<%=ob.getOrderId()%>"><%=ob.getTotaleAmount() %></option>
					<%
					}
					%>
					
					</select>
					<%
				List<ProductBean> listProducts =(List<ProductBean>)request.getAttribute("listProducts");
 				%>
		
		<br><BR>
		 Product <select name="productId" class="form-select">

			<%
				for (ProductBean pb : listProducts) {
			%>
			<option value="<%=pb.getproductId()%>">
			<%=pb.getproductName()%></option>
			<%
				}
			%>
		</select>
				<% List<StatusBean> list =(List<StatusBean>)request.getAttribute("list");%>

		<br><br>
		Status <select name="statusId" class="form-select">
		
		  <% for(StatusBean sb:list){%>
		<option value="<%=sb.getStatusId() %>"><%=sb.getStatus() %></option>
		
		<%} %>
		
		
		</select>	
					</label>
                     <div>
                
                     
                <label for="defaultFormControlInput" class="form-label"> Quantity</label>
               <input type="text" name="quantity" class="form-control" id="defaultFormControlInput" placeholder="quantity" aria-describedby="defaultFormControlHelp">
                
                <label for="defaultFormControlInput" class="form-label"> Price</label>
               <input type="text" name="price" class="form-control" id="defaultFormControlInput" placeholder="price" aria-describedby="defaultFormControlHelp">
                
                </div>  
				
				</div>
                      <br><br>
                      <button class="btn btn-primary d-grid w-100" type="submit" value="add order detail">Save</button>
             			 <br><br>
             			<a href="listorderdetail">List Order Detail</a>
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
  
<!-- 
	<form action="saveorderdetail" method="post">

	

		
		<br><BR>
		 Order <select name="orderId">

			
		</select><br><br>
		
	

		
		<br><BR>
		 Product <select name="productId">

		</select><br><br>
		

		<br><br>
		Status <select name="statusId">
		
		  
		
		</select>
		<br><br>
		
		Quantity : <input type="text" name="quantity"/><br><br>
		Price : <input type="text" name="price"/><br><br>
		
		<input type="submit" value="Add new orderdetail"/>
		
	
	<br>
	</form>
	<br>
	<a href="listorderdetail">List Order Detail</a>
	 -->
</body>
</html>