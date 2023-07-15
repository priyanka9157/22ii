<%@page import="com.grownited.bean.CategoryBean"%>
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
              <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">Category /</span> List Category</h4>

              <!-- Basic Bootstrap Table -->
              
              <!--/ Basic Bootstrap Table -->

              <hr class="my-5">

              <!-- Bootstrap Dark Table -->
              
              <!--/ Bootstrap Dark Table -->

              
<%
	List<CategoryBean> list =(List<CategoryBean>)request.getAttribute("list");
 %>
              <!-- Bootstrap Table with Header - Dark -->
              <div class="card">
                <h5 class="card-header">List category
                <a href="newcategory" class="bx bx-plus-circle"></a></h5>
                <div class="table-responsive text-nowrap">
                  <table class="table" id="mytable">
                    <thead class="table-dark">
                      <tr>
                      <th align="center">CategoryId</th>
                        <th align="center">CategoryName</th>
                        <th align="center">Deleted</th>
                        <th align="center">Active</th>
                        <th align="center">Edit</th>
                      </tr>
                    </thead>
                    <tbody class="table-border-bottom-0">
                    
						<%for(CategoryBean cb:list){ %>
						
						
							<tr>
					    <td><%=cb.getCategoryId() %></td>
						<td><%=cb.getCategoryName() %></td>
						<td><%=cb.getDeleted() %></td>
						
						<td><a href="deletecategory?categoryId=<%=cb.getCategoryId()%>"><i class="bx bx-x"></i></a>
                       |  <a href="viewcategory/<%=cb.getCategoryId()%>"><i class="bx bx-show"></i></a></td>
                           
						<td>
							<a href="editcategory?categoryId=<%=cb.getCategoryId()%>"><i class="bx bx-edit"></i></a>
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
			<script type="text/javascript">
		function changeStatus(categoryId,currentStatus){
 			location.href="deletecategory/"+categoryId+"/"+currentStatus;
			
		}
	</script>
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
<h3>List Category</h3>
 
-->    


</body>
</html>