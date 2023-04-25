<%@page import="com.grownited.bean.CategoryBean"%>
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
                <div class="col-lg-3">
                    <div class="header__logo">
                        <a href="./index.html"><img src="assets/buyer/img/logo.png" alt=""></a>
                    </div>
                </div>
                <!-- buyer menu -->
                
                <jsp:include page="BuyerMenu.jsp"></jsp:include>
                
                 <!-- buyer menu -->
                
            </div>
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>
    <!-- Header Section End -->

    <!-- Hero Section Begin -->
    
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
                    
                    
                    
                    
                    <div class="hero__item set-bg" data-setbg="assets/buyer/img/hero/banner.jpg">
                        <div class="hero__text">
                            <span>FRUIT FRESH</span>
                            <h2>Vegetable <br />100% Organic</h2>
                            <p>Free Pickup and Delivery Available</p>
                            <a href="#" class="primary-btn">SHOP NOW</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->

    <!-- Categories Section Begin -->
    
    <%		List<ProductBean> AllProduct = (List<ProductBean>) request.getAttribute("allProduct");
 %>
    <section class="categories">
        <div class="container">
            <div class="row">
                <div class="categories__slider owl-carousel">
                
                <%
								for (ProductBean product : AllProduct) {
									
							%>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="assets/product/<%=product.getProductId()%>/main.jpg">
                            <h5><a href="seedetails?productId=<%=product.getProductId()%>"><%=product.getProductName()%></a></h5>
                        </div>
                    </div>
                   
                    <%} %>
                    
                    
                </div>
            </div>
        </div>
    </section>
    <!-- Categories Section End -->


    <!-- Featured Section Begin -->
    <%
		List<ProductBean> latestProducts = (List<ProductBean>) request.getAttribute("latestProducts");
        List<ProductBean> topSellingProducts = (List<ProductBean>) request.getAttribute("topSellingProducts");
                		
	%>
    <section class="featured spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Latest Product</h2>
                    </div>
                    <div class="featured__controls">
                        <ul>
                            <li class="active" data-filter="*">All</li>
                            <li data-filter=".oranges">Oranges</li>
                            <li data-filter=".fresh-meat">Fresh Meat</li>
                            <li data-filter=".vegetables">Vegetables</li>
                            <li data-filter=".fastfood">Fastfood</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row featured__filter">
            <div class="categories__slider owl-carousel owl-loaded owl-drag">
                <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
                <%
								for (ProductBean product : latestProducts) {
									
							%>
							
							<div class="owl-stage-outer">
							<div class="owl-stage" style="transform: translate3d(-1169px, 0px, 0px); transition: all 1.2s ease 0s; width: 3803px;">
							<div class="owl-item cloned" style="width: 292.498px;"><div class="col-lg-3">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="assets/product/<%=product.getProductId()%>/main.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="addtowishlist?productId=<%=product.getProductId() %>"><i class="fa fa-heart"></i></a></li>
                                <li><a href="seedetails?productId=<%=product.getProductId()%>"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="addtocart?productId=<%=product.getProductId()%>"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#"><%=product.getProductId()%></a></h6>
                            <h5>Rs.<%=product.getPrice()%>.00</h5>
                        </div>
                    </div>
                     
                </div>
               <%
								}
							%>
            </div>
            
            </div>
            </div>
            </div>
            </div>
            </div>
            
            </div>
        
    </section>
    <!-- Featured Section End -->
<!-- Featured Section Begin -->
    
    <section class="featured spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Top Selling Product</h2>
                    </div>
                    <div class="featured__controls">
                        <ul>
                            <li class="active" data-filter="*">All</li>
                            <li data-filter=".oranges">Oranges</li>
                            <li data-filter=".fresh-meat">Fresh Meat</li>
                            <li data-filter=".vegetables">Vegetables</li>
                            <li data-filter=".fastfood">Fastfood</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row featured__filter">
            <div class="categories__slider owl-carousel owl-loaded owl-drag">
                <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
                <%
								for (ProductBean product : topSellingProducts) {
							%>
							<div class="owl-stage-outer">
							<div class="owl-stage" style="transform: translate3d(-1169px, 0px, 0px); transition: all 1.2s ease 0s; width: 3803px;">
							<div class="owl-item cloned" style="width: 292.498px;"><div class="col-lg-3">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="assets/product/<%=product.getProductId()%>/main.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="addtowishlist?productId=<%=product.getProductId() %>"><i class="fa fa-heart"></i></a></li>
                                <li><a href="seedetails?productId=<%=product.getProductId()%>"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="addtocart?productId=<%=product.getProductId()%>"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#"><%=product.getProductName()%></a></h6>
                            <h5>Rs.<%=product.getPrice()%>.00</h5>
                        </div>
                    </div>
                    
                </div>
                <%
								}
							%>
            </div>
            </div>
            </div>
            </div>
            </div>
            
            </div>
        </div>
    </section>
    <!-- Featured Section End -->

    <!-- Banner Begin -->
    <div class="banner">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="banner__pic">
                        <img src="assets/buyer/img/banner/banner-1.jpg" alt="">
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="banner__pic">
                        <img src="assets/buyer/img/banner/banner-2.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Banner End -->

    <!-- Latest Product Section Begin -->
    <section class="latest-product spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="latest-product__text">
                        <h4>Latest Products</h4>
                        <%
                                int i = 0;
								for (ProductBean product : latestProducts) {
									i++;
									if (i == 4)
										break;
									
							%>
                        <div class="latest-product__slider owl-carousel">
                         
                            <div class="latest-prdouct__slider__item">
                                <a href="seedetails?productId=<%=product.getProductId()%>" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="assets/product/<%=product.getProductId()%>/main.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6><%=product.getProductName()%></h6>
                                        <span>Rs.<%=product.getPrice()%>.00</span>
                                    </div>
                                </a>
                             
                            </div>
                            
                        </div>
                        <%} %>
                    </div>
                </div>
                
                <div class="col-lg-4 col-md-6">
                
                    <div class="latest-product__text">
                        <h4>Top Selling Products</h4>
                        <%
							int j = 0;
							for (ProductBean product : topSellingProducts) {
								j++;
								if (j == 4)
									break;
						%>
                        <div class="latest-product__slider owl-carousel">
                        
                            <div class="latest-prdouct__slider__item">
                                
                                
                                <a href="seedetails?productId=<%=product.getProductId()%>" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="assets/product/<%=product.getProductId()%>/main.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6><%=product.getProductName()%></h6>
                                        <span>Rs.<%=product.getPrice() %>.00</span>
                                    </div>
                                </a>
                                
                                
                                    </div>
                                   
                        </div>
                         <%} %>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="latest-product__text">
                        <h4>Review Products</h4>
                        <div class="latest-product__slider owl-carousel">
                            <div class="latest-prdouct__slider__item">
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="assets/buyer/img/latest-product/lp-1.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="assets/buyer/img/latest-product/lp-2.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="assets/buyer/img/latest-product/lp-3.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                            </div>
                            <div class="latest-prdouct__slider__item">
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="assets/buyer/img/latest-product/lp-1.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="assets/buyer/img/latest-product/lp-2.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="assets/buyer/img/latest-product/lp-3.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Latest Product Section End -->

    
    <!-- Blog Section End -->

    <!-- Footer Section Begin -->
    <footer class="footer spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__about__logo">
                            <a href="./index.html"><img src="img/logo.png" alt=""></a>
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