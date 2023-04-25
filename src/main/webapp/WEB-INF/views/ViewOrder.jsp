<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.grownited.bean.OrderBean"%>
<%@page import="java.util.List"%>
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
          
          

                   <div class="container-xxl flex-grow-1 container-p-y">
         <h5 class="fw-bold py-3 mb-4"><span class="text-muted fw-light"> </span>Order</h5>
          
           <div class="row">
                <div class="col-md-9">
                  <div class="card mb-6">
             <h5 class="card-header">View Order</h5>
                    <div class="card-body">
                    </div>

<%
	OrderBean orderBean = (OrderBean) request.getAttribute("orderBean");
	%>
<div>
	 <h7 class="fw-bold py-3 mb-4"><span class="text-muted fw-light"> </span>OrderId :<%=orderBean.getOrderId()%>
	 
	 
	 </h7>
	</div>
	<div>
	 <h7 class="fw-bold py-3 mb-4"><span class="text-muted fw-light"> </span>Order Date :<%=orderBean.getOrderDate()%><br>
	 
	 
	 	 
	 </h7>
	</div>
	
	<div>
	<h7 class="fw-bold py-3 mb-4"><span class="text-muted fw-light"> </span>Total Amount :<%=orderBean.getTotaleAmount()%>
 </h7>
	</div>
	
	<div>
	<h7 class="fw-bold py-3 mb-4"><span class="text-muted fw-light"> </span>Deleted : <%=orderBean.getDeleted()%> <br>
	
	
 </h7>
	</div>
	</div>
	</div>
	</div>
	</div>
	
	
	
	<jsp:include page="AdminFooter.jsp"></jsp:include>
	
	<jsp:include page="AllJavaScript.jsp"></jsp:include>



</body>
</html>