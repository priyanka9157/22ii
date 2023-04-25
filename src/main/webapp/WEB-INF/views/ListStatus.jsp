<%@page import="com.grownited.bean.StatusBean"%>
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
              <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">Status/ </span>Status List</h4>

              <!-- Basic Bootstrap Table -->
              
              <!--/ Basic Bootstrap Table -->

              <hr class="my-5">

              <!-- Bootstrap Dark Table -->
              
              <!--/ Bootstrap Dark Table -->


 <%List<StatusBean> list =(List<StatusBean>)request.getAttribute("list");
%>
              <!-- Bootstrap Table with Header - Dark -->
              <div class="card">
                <h5 class="card-header">List Status
                <a href="newstatus" class="bx bx-plus-circle"></a></h5>
                <div class="table-responsive text-nowrap">
                  <table class="table" id="mytable">
                    <thead class="table-dark">
                      <tr>
                       		<th>StatusId</th>
							<th>Status</th>
							<th>Deleted?</th>
							<th>Active</th>
							<th>Action</th>
							<th>Edit</th>
                      </tr>
                    </thead>
                    <tbody class="table-border-bottom-0">
                  
                    <% for(StatusBean sb:list){%>

				<tr>
						<td><%=sb.getStatusId() %></td>
						<td><%=sb.getStatus() %></td>
						<td><%=sb.getDeleted()%></td>
						<td align="center"><div class="form-check form-switch">
							<input class="form-check-input" onclick="changeStatus(<%=sb.getStatusId()%>,<%=sb.getDeleted() %>)" type="checkbox"
							id="flexSwitchCheckChecked"<%=!sb.getDeleted() ? "checked" : ""%>>
						</div></td>
						<td><a href="deletestatus/<%=sb.getStatusId()%>">Delete</a>
					<a href="viewstatus/<%=sb.getStatusId() %>"><i class="bx bx-show"></i></a></td>
					<td align="center">
							<a href="editstatus?statusId=<%=sb.getStatusId()%>"><i class="bx bx-edit"></i></a></td>
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
<h2>Status</h2>

<table border="1">
	<tr>
			<th>StatusId</th>
			<th>Status</th>
			<th>Deleted?</th>
			<th>Action</th>
			
	</tr>



	<tr>
			

	</table>
	
	 -->
	
</body>
</html>