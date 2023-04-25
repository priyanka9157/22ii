<%@page import="com.grownited.bean.CategoryBean"%>
<%@page import="com.grownited.bean.AddressBean"%>
<%@page import="com.grownited.bean.CartBean"%>
<%@page import="com.grownited.bean.ProductImageBean"%>
<%@page import="java.util.List"%>
<%@page import="com.grownited.bean.ProductBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>mybucket | Welcome</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="assets/buyer/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="assets/buyer/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="assets/buyer/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="assets/buyer/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="assets/buyer/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="assets/buyer/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="assets/buyer/css/slicknav.min.css" type="text/css">
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
            
            <div class="header__top__right__auth">
                <a href="login"><i class="fa fa-user"></i> Login</a>
            </div>
        </div>
        
        
        <jsp:include page="NavBar.jsp"></jsp:include>
        
        
        
        <div id="mobile-menu-wrap"></div>
        <div class="header__top__right__social">
            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-linkedin"></i></a>
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
                    <div class="col-lg-6 col-md-6">
                        <div class="header__top__left">
                            <ul>
                                <li><i class="fa fa-envelope"></i> hello@colorlib.com</li>
                                                <li>Free Shipping for all Order of Rs.500</li>
                                
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="header__top__right">
                            <div class="header__top__right__social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-linkedin"></i></a>
                                <a href="#"><i class="fa fa-pinterest-p"></i></a>
                            </div>
                            
                            <div class="header__top__right__auth">
                                <a href="login"><i class="fa fa-user"></i> Login</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-2">
                    <div class="header__logo">
                        <a href="./index.html"><img src="assets/buyer/img/logo.png" alt=""></a>
                    </div>
                </div>
                
                
                                <jsp:include page="BuyerMenu.jsp"></jsp:include>
                
                
          <!-- buyer menu -->
               
            </div>
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>
    <!-- Header Section End -->
     <section class="hero">
        <div class="container">
            <div class="row">
            <%
        	List<CategoryBean> list =(List<CategoryBean>)request.getAttribute("list");

 %>
                <div class="col-lg-3">
                    <div class="hero__categories">
                        <div class="hero__categories__all">
                            <i class="fa fa-bars"></i>
                            <span>All departments</span>
                        </div>
                        <ul>
                          <%for(CategoryBean cb:list){ %>
                            <li><a href="seecategory?categoryId=<%=cb.getCategoryId()%>"><%=cb.getCategoryName() %></a></li>
                            <%} %>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="hero__search">
                        <div class="hero__search__form">
                            <form action="#">
                                <div class="hero__search__categories">
                                    All Categories
                                    <span class="arrow_carrot-down"></span>
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
    
    <!-- Header Section End -->
    <!-- vegetable header -->
    
    
    <!-- /vegetable header -->
    <%
    
	List<CartBean> mycart = (List<CartBean>) request.getAttribute("mycart");
	%>
<section class="breadcrumb-section set-bg" data-setbg="assets/buyer/img/breadcrumb.jpg" style="background-image: url(&quot;assets/buyer/img/breadcrumb.jpg&quot;);">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>My Address</h2>
                        
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Cart -->
    
    <section class="shoping-cart spad">
    
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__table">
                        <table>
                            <thead>
                                <tr>
                                           <th class="product-remove">AddressLine</th>
											<th class="product-thumbnail">Landmark</th>
											<th class="product-name">City</th>
											<th class="product-price">State</th>
											<th class="product-quantity">Pincode</th>
											<th class="product-subtotal">Default</th>
                                    
                                </tr>
                            </thead>
                            <tbody>
                            
                                
                                    <%
											List<AddressBean> address = (List<AddressBean>) request.getAttribute("address");
											for (AddressBean c : address) {
										%>
										<tr>
										<td><%=c.getAddressLine() %></td>
										<td><%=c.getLandMark() %>	</td>
										<td><%=c.getCity() %></td>									
											<td><%=c.getState()%></td>
											<td><%=c.getPincode()%></td>
											<td>
											<input type="checkbox" <%=c.getDefaultInd()==true?"checked":""%> />
											</td>
										
                                        </tr>
                                        
                                        
                                <%} %>
                                         </tbody>
                        </table>
                        <div>
                        <a href="newaddress">
                       <input class="site-btn type="button"  value="Add Address"></a>
                       </div>
                        
                    </div>
                </div>
            </div>
            
        </div>
        
    </section>
    
    
     <!-- /Cart -->
      
    <!-- Footer Section Begin -->
    <footer class="footer spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__about__logo">
                            <a href="./index.html"><img src="assets/buyer/img/logo.png" alt=""></a>
                        </div>
                        <ul>
                            <li>Address: 60-49 Road 11378 New York</li>
                            <li>Phone: +65 11.188.888</li>
                            <li>Email: hello@colorlib.com</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6 offset-lg-1">
                    <div class="footer__widget">
                        <h6>Useful Links</h6>
                        <ul>
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">About Our Shop</a></li>
                            <li><a href="#">Secure Shopping</a></li>
                            <li><a href="#">Delivery infomation</a></li>
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="#">Our Sitemap</a></li>
                        </ul>
                        <ul>
                            <li><a href="#">Who We Are</a></li>
                            <li><a href="#">Our Services</a></li>
                            <li><a href="#">Projects</a></li>
                            <li><a href="#">Contact</a></li>
                            <li><a href="#">Innovation</a></li>
                            <li><a href="#">Testimonials</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12">
                    <div class="footer__widget">
                        <h6>Join Our Newsletter Now</h6>
                        <p>Get E-mail updates about our latest shop and special offers.</p>
                        <form action="#">
                            <input type="text" placeholder="Enter your mail">
                            <button type="submit" class="site-btn">Subscribe</button>
                        </form>
                        <div class="footer__widget__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-pinterest"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="footer__copyright">
                        <div class="footer__copyright__text"><p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p></div>
                        <div class="footer__copyright__payment"><img src="assets/buyer/img/payment-item.png" alt=""></div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
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