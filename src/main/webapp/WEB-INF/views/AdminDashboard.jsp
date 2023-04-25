<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.grownited.bean.OrderChartBean"%>
<%@page import="java.util.List"%>
<!-- <!DOCTYPE html>
<html>
<head>

</head>
<body>
 
 </body>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard</title>
</head>
<body>
<h2>Admin Dashboard</h2>
<a href="newcategory">Add New Category</a> <br>
<br>
<a href="listcategories">List Category</a> <br>
<br>
<a href="newsubcategory">Add New SubCategory</a><br>
<br>
<a href="listsubcategory">List Sub Category</a><br>
<br>
<a href="newproduct">Add New Product</a> <br>
<br>
<a href="newstatus"> Add Status</a><br><br> 
<a href="logout">Logout</a>
</body> </html>-->

<html lang="en" class="light-style layout-menu-fixed" dir="ltr" data-theme="theme-default" data-assets-path="../assets/" data-template="vertical-menu-template-free">
<head>


<script 
src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.bundle.js">
</script>
<jsp:include page="AllCss.jsp"></jsp:include>
 </head>

  
<body>
    <jsp:include page="AdminSideBar.jsp"></jsp:include>
  
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
      <div class="layout-container">
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
              <div class="row">
                
                <div class="col-lg-12 col-md-4 order-1">
                  <div class="row">
                  <div class="col-3 mb-4">
                      <div class="card">
                        <div class="card-body">
                          <div class="card-title d-flex align-items-start justify-content-between">
                            <div class="avatar flex-shrink-0">
                              <img src="../assets/img/icons/unicons/wallet-info.png" alt="Credit Card" class="rounded">
                            </div>
                            <div class="dropdown">
                              <button class="btn p-0" type="button" id="cardOpt6" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="bx bx-dots-vertical-rounded"></i>
                              </button>
                              <div class="dropdown-menu dropdown-menu-end" aria-labelledby="cardOpt6">
                                <a class="dropdown-item" href="javascript:void(0);">View More</a>
                                <a class="dropdown-item" href="javascript:void(0);">Delete</a>
                              </div>
                            </div>
                          </div>
                          <span>Totale Sales</span>
                          <h3 class="card-title text-nowrap mb-1">${totaleSales==null?0:totaleSales}</h3>
                          <small class="text-success fw-semibold"><i class="bx bx-up-arrow-alt"></i> +28.42%</small>
                        </div>
                      </div>
                    </div>
                    <div class="col-3 mb-4">
                      <div class="card">
                        <div class="card-body">
                          <div class="card-title d-flex align-items-start justify-content-between">
                            <div class="avatar flex-shrink-0">
                              <img src="../assets/img/icons/unicons/chart-success.png" alt="chart success" class="rounded">
                            </div>
                            <div class="dropdown">
                              <button class="btn p-0" type="button" id="cardOpt3" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="bx bx-dots-vertical-rounded"></i>
                              </button>
                              <div class="dropdown-menu dropdown-menu-end" aria-labelledby="cardOpt3">
                                <a class="dropdown-item" href="javascript:void(0);">View More</a>
                                <a class="dropdown-item" href="javascript:void(0);">Delete</a>
                              </div>
                            </div>
                          </div>
                          <span class="fw-semibold d-block mb-1">Revenue</span>
                          <h3 class="card-title mb-2">${totalRevenue==null?0:totalRevenue}</h3>
                          <small class="text-success fw-semibold"><i class="bx bx-up-arrow-alt"></i> +72.80%</small>
                        </div>
                      </div>
                    </div>
                    
                    <div class="col-3 mb-4">
                      <div class="card">
                        <div class="card-body">
                          <div class="card-title d-flex align-items-start justify-content-between">
                            <div class="avatar flex-shrink-0">
                              <img src="../assets/img/icons/unicons/paypal.png" alt="Credit Card" class="rounded">
                            </div>
                            <div class="dropdown">
                              <button class="btn p-0" type="button" id="cardOpt4" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="bx bx-dots-vertical-rounded"></i>
                              </button>
                              <div class="dropdown-menu dropdown-menu-end" aria-labelledby="cardOpt4">
                                <a class="dropdown-item" href="javascript:void(0);">View More</a>
                                <a class="dropdown-item" href="javascript:void(0);">Delete</a>
                              </div>
                            </div>
                          </div>
                          <span class="d-block mb-1">Users</span>
                          <h3 class="card-title text-nowrap mb-2">${totalUsers==null?0:totalUsers}</h3>
                          <small class="text-danger fw-semibold"><i class="bx bx-down-arrow-alt"></i> -14.82%</small>
                        </div>
                      </div> 
                  </div>
                      <div class="col-3 mb-4">
                      <div class="card">
                        <div class="card-body">
                          <div class="card-title d-flex align-items-start justify-content-between">
                            <div class="avatar flex-shrink-0">
                              <img src="../assets/img/icons/unicons/cc-primary.png" alt="Credit Card" class="rounded">
                            </div>
                            <div class="dropdown">
                              <button class="btn p-0" type="button" id="cardOpt1" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="bx bx-dots-vertical-rounded"></i>
                              </button>
                              <div class="dropdown-menu" aria-labelledby="cardOpt1">
                                <a class="dropdown-item" href="javascript:void(0);">View More</a>
                                <a class="dropdown-item" href="javascript:void(0);">Delete</a>
                              </div>
                            </div>
                          </div>
                          <span class="fw-semibold d-block mb-1">Transactions</span>
                          <h3 class="card-title mb-2">${totaleTransactions==null?0:totaleTransactions}</h3>
                          <small class="text-success fw-semibold"><i class="bx bx-up-arrow-alt"></i> +28.14%</small>
                        </div>
                        
                      </div>
                    </div>
                </div>
                
                <!-- Total Revenue -->
                
                
                
                <!-- Chart -->
       <div class="col-12">
						<div class="card">


							<div class="card-body">
								<h5 class="card-title">Orders-Monthly</h5>

								<%
									List<OrderChartBean> chartData = (List<OrderChartBean>) request.getAttribute("chartData");
								%>
								<!-- Line Chart -->
								<div>
       
       <canvas id="orderchart" width="800" height="400"></canvas>
       </div>
<script type="text/javascript">
  
var ctx = document.getElementById("orderchart");
var myChart = new Chart(ctx, {
  type: 'bar',
  data: {
    labels : [ 
		<%for (OrderChartBean o : chartData) {%>
		 '<%=o.getMonth()%>',
			<%}%>],
    datasets: [
      { label: '# of OrderAmount',
        data: [
        <%for (OrderChartBean o : chartData) {%>
		<%=o.getOrderAmount()%>,
<%}%>
],
        backgroundColor :['rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)'
],
  
borderColor: [
                'rgba(255,99,132,1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)'
            ],
borderWidth : 1
      }
    ]
  },
  options: {
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero:true
                }
            }]
        }
    }
});
  
    </script>

</div>
   </div>
   </div>
   

                
                
                
                <!--/ Total Revenue -->
                
                   
    <div class="row"> 
                    <div class="col-12 mb-4">
                      <div class="card">
                        <div class="card-body">
                          <div class="d-flex justify-content-between flex-sm-row flex-column gap-3" style="position: relative;">
                            <div class="d-flex flex-sm-column flex-row align-items-start justify-content-between">
                              <div class="card-title">
                                <h5 class="text-nowrap mb-2">Profile Report</h5>
                                <span class="badge bg-label-warning rounded-pill">Year 2021</span>
                              </div>
                              <div class="mt-sm-auto">
                                <small class="text-success text-nowrap fw-semibold"><i class="bx bx-chevron-up"></i> 68.2%</small>
                                <h3 class="mb-0">$84,686k</h3>
                              </div>
                            </div>
                            <div id="profileReportChart" style="min-height: 80px;"><div id="apexchartsto5yxqwq" class="apexcharts-canvas apexchartsto5yxqwq apexcharts-theme-light" style="width: 199px; height: 80px;"><svg id="SvgjsSvg1402" width="199" height="80" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.dev" class="apexcharts-svg" xmlns:data="ApexChartsNS" transform="translate(0, 0)" style="background: transparent;"><g id="SvgjsG1404" class="apexcharts-inner apexcharts-graphical" transform="translate(0, 0)"><defs id="SvgjsDefs1403"><clipPath id="gridRectMaskto5yxqwq"><rect id="SvgjsRect1409" width="200" height="85" x="-4.5" y="-2.5" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><clipPath id="forecastMaskto5yxqwq"></clipPath><clipPath id="nonForecastMaskto5yxqwq"></clipPath><clipPath id="gridRectMarkerMaskto5yxqwq"><rect id="SvgjsRect1410" width="195" height="84" x="-2" y="-2" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><filter id="SvgjsFilter1416" filterUnits="userSpaceOnUse" width="200%" height="200%" x="-50%" y="-50%"><feFlood id="SvgjsFeFlood1417" flood-color="#ffab00" flood-opacity="0.15" result="SvgjsFeFlood1417Out" in="SourceGraphic"></feFlood><feComposite id="SvgjsFeComposite1418" in="SvgjsFeFlood1417Out" in2="SourceAlpha" operator="in" result="SvgjsFeComposite1418Out"></feComposite><feOffset id="SvgjsFeOffset1419" dx="5" dy="10" result="SvgjsFeOffset1419Out" in="SvgjsFeComposite1418Out"></feOffset><feGaussianBlur id="SvgjsFeGaussianBlur1420" stdDeviation="3 " result="SvgjsFeGaussianBlur1420Out" in="SvgjsFeOffset1419Out"></feGaussianBlur><feMerge id="SvgjsFeMerge1421" result="SvgjsFeMerge1421Out" in="SourceGraphic"><feMergeNode id="SvgjsFeMergeNode1422" in="SvgjsFeGaussianBlur1420Out"></feMergeNode><feMergeNode id="SvgjsFeMergeNode1423" in="[object Arguments]"></feMergeNode></feMerge><feBlend id="SvgjsFeBlend1424" in="SourceGraphic" in2="SvgjsFeMerge1421Out" mode="normal" result="SvgjsFeBlend1424Out"></feBlend></filter></defs><line id="SvgjsLine1408" x1="0" y1="0" x2="0" y2="80" stroke="#b6b6b6" stroke-dasharray="3" stroke-linecap="butt" class="apexcharts-xcrosshairs" x="0" y="0" width="1" height="80" fill="#b1b9c4" filter="none" fill-opacity="0.9" stroke-width="1"></line><g id="SvgjsG1425" class="apexcharts-xaxis" transform="translate(0, 0)"><g id="SvgjsG1426" class="apexcharts-xaxis-texts-g" transform="translate(0, -4)"></g></g><g id="SvgjsG1434" class="apexcharts-grid"><g id="SvgjsG1435" class="apexcharts-gridlines-horizontal" style="display: none;"><line id="SvgjsLine1437" x1="0" y1="0" x2="191" y2="0" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine1438" x1="0" y1="20" x2="191" y2="20" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine1439" x1="0" y1="40" x2="191" y2="40" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine1440" x1="0" y1="60" x2="191" y2="60" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine1441" x1="0" y1="80" x2="191" y2="80" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line></g><g id="SvgjsG1436" class="apexcharts-gridlines-vertical" style="display: none;"></g><line id="SvgjsLine1443" x1="0" y1="80" x2="191" y2="80" stroke="transparent" stroke-dasharray="0" stroke-linecap="butt"></line><line id="SvgjsLine1442" x1="0" y1="1" x2="0" y2="80" stroke="transparent" stroke-dasharray="0" stroke-linecap="butt"></line></g><g id="SvgjsG1411" class="apexcharts-line-series apexcharts-plot-series"><g id="SvgjsG1412" class="apexcharts-series" seriesName="seriesx1" data:longestSeries="true" rel="1" data:realIndex="0"><path id="SvgjsPath1415" d="M 0 76C 13.370000000000001 76 24.830000000000002 12 38.2 12C 51.57000000000001 12 63.03 62 76.4 62C 89.77 62 101.23 22 114.6 22C 127.97 22 139.43 38 152.8 38C 166.17000000000002 38 177.63 6 191 6" fill="none" fill-opacity="1" stroke="rgba(255,171,0,0.85)" stroke-opacity="1" stroke-linecap="butt" stroke-width="5" stroke-dasharray="0" class="apexcharts-line" index="0" clip-path="url(#gridRectMaskto5yxqwq)" filter="url(#SvgjsFilter1416)" pathTo="M 0 76C 13.370000000000001 76 24.830000000000002 12 38.2 12C 51.57000000000001 12 63.03 62 76.4 62C 89.77 62 101.23 22 114.6 22C 127.97 22 139.43 38 152.8 38C 166.17000000000002 38 177.63 6 191 6" pathFrom="M -1 120L -1 120L 38.2 120L 76.4 120L 114.6 120L 152.8 120L 191 120"></path><g id="SvgjsG1413" class="apexcharts-series-markers-wrap" data:realIndex="0"><g class="apexcharts-series-markers"><circle id="SvgjsCircle1449" r="0" cx="0" cy="0" class="apexcharts-marker wenzv1d5i no-pointer-events" stroke="#ffffff" fill="#ffab00" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" default-marker-size="0"></circle></g></g></g><g id="SvgjsG1414" class="apexcharts-datalabels" data:realIndex="0"></g></g><line id="SvgjsLine1444" x1="0" y1="0" x2="191" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" stroke-linecap="butt" class="apexcharts-ycrosshairs"></line><line id="SvgjsLine1445" x1="0" y1="0" x2="191" y2="0" stroke-dasharray="0" stroke-width="0" stroke-linecap="butt" class="apexcharts-ycrosshairs-hidden"></line><g id="SvgjsG1446" class="apexcharts-yaxis-annotations"></g><g id="SvgjsG1447" class="apexcharts-xaxis-annotations"></g><g id="SvgjsG1448" class="apexcharts-point-annotations"></g></g><rect id="SvgjsRect1407" width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe"></rect><g id="SvgjsG1433" class="apexcharts-yaxis" rel="0" transform="translate(-18, 0)"></g><g id="SvgjsG1405" class="apexcharts-annotations"></g></svg><div class="apexcharts-legend" style="max-height: 40px;"></div><div class="apexcharts-tooltip apexcharts-theme-light"><div class="apexcharts-tooltip-title" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"></div><div class="apexcharts-tooltip-series-group" style="order: 1;"><span class="apexcharts-tooltip-marker" style="background-color: rgb(255, 171, 0);"></span><div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-y-label"></span><span class="apexcharts-tooltip-text-y-value"></span></div><div class="apexcharts-tooltip-goals-group"><span class="apexcharts-tooltip-text-goals-label"></span><span class="apexcharts-tooltip-text-goals-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div></div><div class="apexcharts-yaxistooltip apexcharts-yaxistooltip-0 apexcharts-yaxistooltip-left apexcharts-theme-light"><div class="apexcharts-yaxistooltip-text"></div></div></div></div>
                          <div class="resize-triggers"><div class="expand-trigger"><div style="width: 338px; height: 118px;"></div></div><div class="contract-trigger"></div></div></div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div>
      
            <!-- / Content -->

           <jsp:include page="AdminFooter.jsp"></jsp:include>

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
    <script src="assets/vendor/libs/chartjs/chartjs.js"></script>
    <script src="../assets/vendor/js/menu.js"></script>
    <!-- endbuild -->

    <!-- Vendors JS -->
    <script src="../assets/vendor/libs/apex-charts/apexcharts.js"></script>

    <!-- Main JS -->
    <script src="../assets/js/main.js"></script>

    <!-- Page JS -->
    <script src="../assets/js/dashboards-analytics.js"></script>

    <!-- Place this tag in your head or just before your close body tag. -->
    <script async="" defer="" src="https://buttons.github.io/buttons.js"></script>
  

<svg id="SvgjsSvg1283" width="2" height="0" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.dev" style="overflow: hidden; top: -100%; left: -100%; position: absolute; opacity: 0;"><defs id="SvgjsDefs1284"></defs><polyline id="SvgjsPolyline1285" points="0,0"></polyline><path id="SvgjsPath1286" d="M-1 218.37599884271623L-1 218.37599884271623C-1 218.37599884271623 52.526785714285715 218.37599884271623 52.526785714285715 218.37599884271623C52.526785714285715 218.37599884271623 105.05357142857143 218.37599884271623 105.05357142857143 218.37599884271623C105.05357142857143 218.37599884271623 157.58035714285714 218.37599884271623 157.58035714285714 218.37599884271623C157.58035714285714 218.37599884271623 210.10714285714286 218.37599884271623 210.10714285714286 218.37599884271623C210.10714285714286 218.37599884271623 262.63392857142856 218.37599884271623 262.63392857142856 218.37599884271623C262.63392857142856 218.37599884271623 315.1607142857143 218.37599884271623 315.1607142857143 218.37599884271623C315.1607142857143 218.37599884271623 367.6875 218.37599884271623 367.6875 218.37599884271623C367.6875 218.37599884271623 367.6875 218.37599884271623 367.6875 218.37599884271623 "></path></svg>
</body>
     
</html>