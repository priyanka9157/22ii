
<!DOCTYPE html>
<%@page import="com.grownited.bean.ProductImageBean"%>
<%@page import="com.grownited.bean.ProductBean"%>
<%@page import="com.grownited.bean.WishListBean"%>
<%@page import="com.grownited.bean.OrderDetailBean"%>
<%@page import="com.grownited.bean.OrderBean"%>
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

			<div class="header__top__right__auth">
				<a href="login"><i class="fa fa-user"></i> Login</a>
			</div>
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
							<li><a href="seecategory?categoryId=<%=c.getCategoryId()%>"><%=c.getCategoryName()%></a></li>
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
	<%
	ProductBean product = (ProductBean) request.getAttribute("products");
	List<ProductImageBean> productImages = (List<ProductImageBean>) request.getAttribute("productImages");
	%>

	<section class="breadcrumb-section set-bg"
		data-setbg="assets/buyer/img/breadcrumb.jpg"
		style="background-image: url(&quot;assets/buyer/img/breadcrumb.jpg&quot;);">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>Shop</h2>
						<div class="breadcrumb__option">
							<a href="welcome">Home</a> <a href=""><%=product.getCategoryName()%>
							</a> <a href=""><%=product.getSubCategoryName()%></a>


						</div>

					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->

	<!-- Product Details Section Begin -->



	<!-- product Details -->


	<form action="addtocart">
		<section class="product-details spad">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-md-6">
						<div class="product__details__pic">
							<div class="product__details__pic__item">
								<img class="product__details__pic__item--large"
									src="assets/product/<%=product.getProductId()%>/main.jpg"
									alt="">
							</div>
							<div
								class="product__details__pic__slider owl-carousel owl-loaded owl-drag">




								<div class="owl-stage-outer">
									<div class="owl-stage"
										style="transform: translate3d(-575px, 0px, 0px); transition: all 1.2s ease 0s; width: 1726px;">
										<div class="owl-item cloned"
											style="width: 123.753px; margin-right: 20px;"></div>
										<div class="owl-item cloned"
											style="width: 123.753px; margin-right: 20px;"></div>
										<div class="owl-item cloned"
											style="width: 123.753px; margin-right: 20px;"></div>
										<div class="owl-item cloned"
											style="width: 123.753px; margin-right: 20px;"></div>
										<!-- down images -->
										<%
										for (ProductImageBean pb : productImages) {
										%>
										<div class="owl-item active"
											style="width: 123.753px; margin-right: 20px;">
											<img data-imgbigurl="<%=pb.getImageUrl()%>" alt=""
												src="<%=pb.getImageUrl()%>" alt="">
										</div>
										<%
										}
										%>

										<!-- /down images -->

										<div class="owl-item cloned"
											style="width: 123.753px; margin-right: 20px;"></div>
										<div class="owl-item cloned"
											style="width: 123.753px; margin-right: 20px;"></div>
										<div class="owl-item cloned"
											style="width: 123.753px; margin-right: 20px;"></div>
										<div class="owl-item cloned"
											style="width: 123.753px; margin-right: 20px;"></div>
									</div>
								</div>
								<div class="owl-nav disabled">
									<button type="button" role="presentation" class="owl-prev">
										<span aria-label="Previous">‹</span>
									</button>
									<button type="button" role="presentation" class="owl-next">
										<span aria-label="Next">›</span>
									</button>
								</div>
								<div class="owl-dots disabled">
									<button role="button" class="owl-dot active">
										<span></span>
									</button>
								</div>
							</div>
						</div>
					</div>

					<div class="col-lg-6 col-md-6">
						<div class="product__details__text">
							<h3><%=product.getProductName()%></h3>
							<div class="product__details__rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star-half-o"></i> <span>(18 reviews)</span>
							</div>

							<div class="product__details__price">
								Rs.<%=product.getPrice()%>.00
							</div>

							<div class="product__details__quantity">
								<div class="quantity">
									<div class="pro-qty">
										<input type="text" value="1" name="qty">
									</div>
								</div>
							</div>

							<%-- <a href="addtocart?productId=<%=product.getProductId()%>"
								class="primary-btn">ADD TO CART</a> 
								 --%>
							
							<button type="submit"  class="primary-btn">ADD TO CART</button>
								<a
								href="addtowishlist?productId=<%=product.getProductId()%>"
								class="heart-icon"><span class="icon_heart_alt"></span></a>


							<p><%=product.getDescription()%></p>


							<input type="hidden" name="productId"
								value="<%=product.getProductId()%>" />



							<ul>
								<li><b>Availability</b> <span>In Stock</span></li>
								<li><b>Shipping</b> <span>01 day shipping. <samp>Free
											pickup today</samp></span></li>
								<li><b>Weight</b> <span><%=product.getQuantity()%></span></li>
								<li><b>Share on</b>
									<div class="share">
										<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
											class="fa fa-twitter"></i></a> <a href="#"><i
											class="fa fa-instagram"></i></a> <a href="#"><i
											class="fa fa-pinterest"></i></a>
									</div></li>
							</ul>
						</div>
					</div>

				</div>
			</div>
		</section>

	</form>
	<!-- /product Details -->


	<!-- Related Product -->

	<%
	List<ProductBean> List3 = (List<ProductBean>) request.getAttribute("list3");
	%>
	<section class="related-product">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title related__product__title">
						<h2>Related Product</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<%
				for (ProductBean cb : List3) {
				%>
				<div class="col-lg-3 col-md-4 col-sm-6">


					<div class="product__item">
						<div class="product__item__pic set-bg"
							data-setbg="assets/product/<%=cb.getProductId()%>/main.jpg"
							style="background-image: url(&quot;assets/buyer/img/product/product-1.jpg&quot;);">
							<ul class="product__item__pic__hover">

								<li><a
									href="addtowishlist?productId=<%=cb.getProductId()%>"><i
										class="fa fa-heart"></i></a></li>
								<li><a href="seedetails?productId=<%=cb.getProductId()%>"><i
										class="fa fa-retweet"></i></a></li>
								<li><a href="addtocart?productId=<%=cb.getProductId()%>&qty=1"><i
										class="fa fa-shopping-cart"></i></a></li>
							</ul>
						</div>
						<div class="product__item__text">
							<h6>
								<a href="seedetails?productId=<%=cb.getProductId()%>"><%=cb.getProductName()%></a>
							</h6>
							<h5>
								Rs.<%=cb.getPrice()%>.00
							</h5>
						</div>
					</div>
				</div>

				<%
				}
				%>


			</div>
		</div>
	</section>
	<!-- /Related Products -->


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