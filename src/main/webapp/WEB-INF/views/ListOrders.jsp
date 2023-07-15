<%@page import="com.grownited.bean.OrderBean"%>
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
              <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">Orders/ </span>Order List</h4>

              <!-- Basic Bootstrap Table -->
              
              <!--/ Basic Bootstrap Table -->

              <hr class="my-5">

              <!-- Bootstrap Dark Table -->
              
              <!--/ Bootstrap Dark Table -->


<%
	List<OrderBean> listOrders =(List<OrderBean>)request.getAttribute("listOrders");
 %>

              <!-- Bootstrap Table with Header - Dark -->
              <div class="card">
                <h5 class="card-header">Order List
               </h5>
                <div class="table-responsive text-nowrap">
                  <table class="table" id="mytable">
                    <thead class="table-dark">
                      <tr>
                       <input type="hidden" name="statusId" value="${orderBean.statusId}"/>
                    <th align="">OrderId</th>
					<th align="">UserId</th>
					<th align="">AddressId</th>
					<th align="">StatusId</th>
					<th align="">OrderDate</th>
					<th align="">TotaleAmount</th>
					<th align="">status</th>
					<th align="">Edit Status</th>
					
                       
                       
                       
                      </tr>
                    </thead>
                    <tbody class="table-border-bottom-0">
                   <%for(OrderBean ob:listOrders){ %>
                   
                   
                   
					<tr>
					
					<td align=""><%=ob.getOrderId() %></td>
					<td align=""><%=ob.getUserId() %></td>
					<td align=""><%=ob.getAddressLine() %>|<%=ob.getCity() %>|
 											<%=ob.getPincode() %>|
 											<%=ob.getState() %></td>
					<td><%=ob.getStatusId() %></td>
					<td align=""><%=ob.getOrderDate() %></td>
					<td align="center"><%=ob.getTotaleAmount() %></td>
					<td align=""><%=ob.getStatusName() %></td>
					<td align="center">
							<a href="editorderstatus?statusId=<%=ob.getStatusId()%>"><i class="bx bx-edit"></i></a>
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
              
              
              
            </div>
            <script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
              
<script type="text/javascript">
   $('#mytable').DataTable();
</script>
            <!-- / Content -->

            <!-- Footer -->
            <jsp:include page="AdminFooter.jsp"></jsp:include>
            <!-- / Footer -->
<jsp:include page="AllJavaScript"></jsp:include>
            <div class="content-backdrop fade"></div>
          </div>
          <!-- Content wrapper -->
        </div>
        <!-- / Layout page -->
      </div>

      <!-- Overlay -->
      <div class="layout-overlay layout-menu-toggle"></div>
    </div>


<!-- 
<h3>List Order</h3>
 
 
<table border="1">
	<tr>
		<th>OrderId</th>
		<th>UserId</th>
		<th>AddressId</th>
		<th>StatusId</th>
		<th>OrderDate</th>
		<th>TotaleAmount</th>
		<th>status</th>
		<th>Deleted</th>
		<th>Action</th>
		
	</tr>


	<tr>
		
		</tr>

	
	</table>
	 --> 
</body>
</html>