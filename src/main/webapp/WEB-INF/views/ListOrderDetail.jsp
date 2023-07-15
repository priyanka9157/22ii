<%@page import="com.grownited.bean.OrderDetailBean"%>
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
              <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">Order Detail/ </span>Order Detail List</h4>

              <!-- Basic Bootstrap Table -->
              
              <!--/ Basic Bootstrap Table -->

              <hr class="my-5">

              <!-- Bootstrap Dark Table -->
              
              <!--/ Bootstrap Dark Table -->


<%
	List<OrderDetailBean> list =(List<OrderDetailBean>)request.getAttribute("listOrderDetail");
 %>

              <!-- Bootstrap Table with Header - Dark -->
              <div class="card">
                <h5 class="card-header">OrderDetail List
                <a href="neworderdetail" class="bx bx-plus-circle"></a>
               </h5>
                <div class="table-responsive text-nowrap">
                  <table class="table" id="mytable">
                    <thead class="table-dark">
                      <tr>
                       <th align="center">OrderDetailId</th>
						<th align="center">OrderId</th>
						<th align="center">UserId</th>
						<th align="center">ProductId</th>
						<th align="center">Price</th>
						
		
                       
                       
                       
                       
                      </tr>
                    </thead>
                    <tbody class="table-border-bottom-0">
                   <%for(OrderDetailBean od:list){ %>
                   
                   
                   
					<tr>
					<td align="center"><%=od.getOrderDetailId() %></td>
					<td align="center"><%=od.getOrderId() %></td>
					<td align="center"><%=od.getUserId() %></td>
					<td align="center"><%=od.getProductId() %></td>
					<td align="center"><%=od.getPrice() %></td>
					
		
		
					
					
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
              
           
            </div>
            
            <script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
              <script type="text/javascript">
              $('#mytable').DataTable();
           </script>
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
<jsp:include page="AllJavaScript"></jsp:include>

<!-- 
<h3>List OrderDetail</h3>
 
 
<table border="1">
	<tr>
		<th>OrderDetailId</th>
		<th>OrderId</th>
		<th>UserId</th>
		<th>ProductId</th>
		<th>Quantity</th>
		<th>Price</th>
		<th>Status</th>
		<th>ProductName</th>
		<th>Deleted</th>
		<th>Action</th>
		
		
	</tr>


	<tr>
		
		
		
		</tr>

	
	
</table>
 -->
</body>
</html>