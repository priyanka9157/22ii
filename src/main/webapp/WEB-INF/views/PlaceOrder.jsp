
<!DOCTYPE html>
<%@page import="com.grownited.bean.PaymentBean"%>
<%@page import="com.grownited.bean.AddressBean"%>
<%@page import="com.grownited.bean.CartBean"%>
<%@page import="com.grownited.bean.CategoryBean"%>
<%@page import="java.util.List"%>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Ogani Template">
<meta name="keywords" content="Ogani, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Ogani | Template</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="assets/buyer/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet" href="assets/buyer/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet" href="assets/buyer/css/elegant-icons.css"
	type="text/css">
<link rel="stylesheet" href="assets/buyer/css/nice-select.css"
	type="text/css">
<link rel="stylesheet" href="assets/buyer/css/jquery-ui.min.css"
	type="text/css">
<link rel="stylesheet" href="assets/buyer/css/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet" href="assets/buyer/css/slicknav.min.css"
	type="text/css">
<link rel="stylesheet" href="assets/buyer/css/style.css" type="text/css">
</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Humberger Begin -->
	<div class="humberger__menu__overlay"></div>
	<div class="humberger__menu__wrapper">
		<div class="humberger__menu__logo">
			<a href="#"><img src="assets/buyer/img/logo.png" alt=""></a>
		</div>
		
		<div class="humberger__menu__widget">
			
				<jsp:include page="NavBarLogin.jsp"></jsp:include>
		</div>
		      <jsp:include page="NavBar.jsp"></jsp:include>
		
		<div id="mobile-menu-wrap"></div>
		<div class="header__top__right__social">
			<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
				class="fa fa-twitter"></i></a> <a href="#"><i class="fa fa-linkedin"></i></a>
			<a href="#"><i class="fa fa-pinterest-p"></i></a>
		</div>
		<div class="humberger__menu__contact">
			<ul>
				<li><i class="fa fa-envelope"></i> hello@colorlib.com</li>
				<li>Free Shipping for all Order of Rs.500</li>
			</ul>
		</div>
	</div>
	<!-- Humberger End -->

	<!-- Header Section Begin -->
	<header class="header">
		<div class="header__top">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<div class="header__top__left">
							<ul>
								<li><i class="fa fa-envelope"></i> hello@colorlib.com</li>
								<li>Free Shipping for all Order of Rs.500</li>
							</ul>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="header__top__right">
							<div class="header__top__right__social">
								<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
									class="fa fa-twitter"></i></a> <a href="#"><i
									class="fa fa-linkedin"></i></a> <a href="#"><i
									class="fa fa-pinterest-p"></i></a>
							</div>
							
								<jsp:include page="NavBarLogin.jsp"></jsp:include>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<div class="header__logo">
						<a href="./index.html"><img src="assets/buyer/img/logo.png"
							alt=""></a>
					</div>
				</div>
					                                <jsp:include page="BuyerMenu.jsp"></jsp:include>
					
			<div class="humberger__open">
				<i class="fa fa-bars"></i>
			</div>
		</div>
		</div>
		
	</header>
	<!-- Header Section End -->

 	<% 
 	List<CategoryBean> list = (List<CategoryBean>) request.getAttribute("list");
	%> 

 	<!-- Hero Section Begin -->
 	<section class="hero hero-normal">
		<div class="container">
 				<div class="row"> 
			<div class="col-lg-3"> 
					<div class="hero__categories"> 
 						<div class="hero__categories__all"> 
 							<i class="fa fa-bars"></i> <span>All departments</span>
 						</div> 
 						<ul> 
 							<%
						for (CategoryBean c : list) {
 							%> 
  							<li><a href="seecategory?categoryId=<%=c.getCategoryId()%>"><%=c.getCategoryName() %></a></li> 
 							<% 
 							}
 							%> 
 						</ul>
 					</div> 
 				</div> 
				<div class="col-lg-9">
					<div class="hero__search">
						<div class="hero__search__form">
							<form action="#">
								<div class="hero__search__categories">
									All Categories <span class="arrow_carrot-down"></span>
								</div>
								<input type="text" placeholder="What do yo u need?">
								<button type="submit" class="site-btn">SEARCH</button>
							</form>
						</div>
						
							
						</div>
					</div>
				</div>
			</div>
		
	</section>
	<!-- Hero Section End -->

	<!-- Breadcrumb Section Begin -->
	
	<section class="breadcrumb-section set-bg"
		data-setbg="assets/buyer/img/breadcrumb.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>Pay Now</h2>
						
						</div>
					</div>
				</div>
			</div>
		
	</section>
	<!-- Breadcrumb Section End -->

	<!-- Product Details Section Begin -->
	
 
    <%
         List<PaymentBean> Plist = (List<PaymentBean>) request.getAttribute("Plist");

    
	%>                         
	 	<form action="chargecreditcard" method="post">								
     <div class="container">
            <div class="row">
             
   <div class="col-lg-8">
   <div class="checkout__order">
   
             
                     
                          <div>   
                        <label for="inputText" class="form-label">CreditCardNum</label>
                        <input type="text" name="creditCardNum" class="form-control" id="catId" placeholder="creditCardNum" aria-describedby="defaultFormControlHelp">
                        
                      </div>
                      <br><br>
                        <div>
                        <label for="inputText" class="form-label">ExpDate</label>
                        <input type="text" name="ExpDate" class="form-control" id="catId" placeholder="ExpDate" aria-describedby="defaultFormControlHelp">
                        
                      </div>
                      <br><br>
                     
                      
                      <div>
                        <label for="inputText" class="form-label">CVV</label>
                        <input type="text" name="cvv" class="form-control" id="catId" placeholder="cvv" aria-describedby="defaultFormControlHelp">
                       
                      </div>
                      
                      
										
                     
                       <input type="hidden" name="userId" value="${user.userId}"/>
                  <input type="hidden" name="defaultInd" value="false"/>
                  
                  
                            
                                <h4>Your Order</h4>
                                
                                <div class="checkout__order__subtotal">Subtotal <span>Rs.${totalPrice}.00</span></div>
                                <div class="checkout__order__subtotal">Shipping<span>Rs.${totalPrice <= 499?50:"Free Shipping" }.00</span></div>
                                <div class="checkout__order__total">Total <span>Rs.${totalPrice <= 499?totalPrice+50:totalPrice }.00</span></div>
                                <div class="checkout__input__checkbox">
                                    
                                </div>
                               
									
					
							<input type="hidden" name="amount" value="${totalPrice <= 499?totalPrice+50:totalPrice }"/>
							<input type="hidden" name="email"  value="${user.email}" />
	 

								
									
                       <input class="site-btn" type="submit"  value="Place Order">
                       </div>
                       
									
									 </div>
									 
									 </form>
									 </div>
									 
                                
                                
                                
                           
                            </div>
                           
											
                       
	<!-- Related Product Section End -->
    
	<!-- Related Product Section End -->

	<!-- Footer Section Begin -->
	<jsp:include page="BuyerFooter.jsp"></jsp:include>
	<!-- Footer Section End -->

	<!-- Js Plugins -->
	<script src="assets/buyer/js/jquery-3.3.1.min.js"></script>
	<script src="assets/buyer/js/bootstrap.min.js"></script>
	<script src="assets/buyer/js/jquery.nice-select.min.js"></script>
	<script src="assets/buyer/js/jquery-ui.min.js"></script>
	<script src="assets/buyer/js/jquery.slicknav.js"></script>
	<script src="assets/buyer/js/mixitup.min.js"></script>
	<script src="assets/buyer/js/owl.carousel.min.js"></script>
	<script src="assets/buyer/js/main.js"></script>


</body>

</html>