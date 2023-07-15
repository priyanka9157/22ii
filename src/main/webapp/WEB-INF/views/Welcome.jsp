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
			<a href="welcome"><img src="assets/buyer/img/logo.png" alt=""></a>
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
						<a href="welcome"><img src="assets/buyer/img/logo.png" style="" alt=""></a>
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
	<%
	List<CategoryBean> list = (List<CategoryBean>) request.getAttribute("list");
	%>
	<section class="hero">
		<div class="container">
			<div class="row">

				<div class="col-lg-3">
					<div class="hero__categories">
						<div class="hero__categories__all">
							<i class="fa fa-bars"></i> <span>All departments</span>
						</div>
						<ul>
							<%
							for (CategoryBean cb : list) {
							%>
							<li><a href="seecategory?categoryId=<%=cb.getCategoryId()%>"><%=cb.getCategoryName()%></a></li>
							<%
							}
							%>
						</ul>
					</div>
				</div>
				
				<div class="col-lg-9">
					<div class="hero__search">
						<div class="hero__search__form">
							<form action="shop">
								<div class="hero__search__categories">
									All Categories <span class="arrow_carrot-down"></span>
								</div>
								<input type="text" placeholder="What do yo u need?">
								<button type="submit" class="site-btn">SEARCH</button>
							</form>
						</div>

					</div>




					<div class="hero__item set-bg"
						data-setbg="assets/buyer/img/hero/bgurl.jpg">
						<div class="hero__text">
							
							<h2 class="hero__text">
								MY BUCKET<br/>
							</h2>
							<a class="site-btn" href="shop">Shop Now</a>

						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Hero Section End -->

	<!-- Categories Section Begin -->

	<%
	List<ProductBean> AllProduct = (List<ProductBean>) request.getAttribute("allProduct");
	%>
	<section class="categories">
		<div class="container">
			<div class="row">
				<div class="categories__slider owl-carousel">

					<%
					for (ProductBean product : AllProduct) {
					%>
					<div class="col-lg-3">
						<div class="categories__item set-bg" href="seedetails?productId=<%=product.getProductId()%>"
							data-setbg="assets/product/<%=product.getProductId()%>/main.jpg">
							<h5>
								<a href="seedetails?productId=<%=product.getProductId()%>"><%=product.getProductName()%></a>
							</h5>
						</div>
					</div>

					<%
					}
					%>


				</div>
			</div>
		</div>
	</section>
	<!-- Categories Section End -->


	<!-- Featured Section Begin -->
	<%
	List<ProductBean> latestProducts = (List<ProductBean>) request.getAttribute("latestProducts");
	List<ProductBean> topSellingProducts = (List<ProductBean>) request.getAttribute("topSellingProducts");
	List<ProductBean> list4 = (List<ProductBean>) request.getAttribute("list4");
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
							<%
							for (CategoryBean cb : list) {
							%>

							<li data-filter=".<%=cb.getCategoryId()%>"><a
								href="seecategory?categoryId=<%=cb.getCategoryId()%>"
								style="color: black"> <%=cb.getCategoryName()%>
							</a></li>

							<%
							}
							%>
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
							<div class="owl-stage"
								style="transform: translate3d(-1169px, 0px, 0px); transition: all 1.2s ease 0s; width: 3803px;">
								<div class="owl-item cloned" style="width: 292.498px;">
									<div class="col-lg-3 <%=product.getCategoryName()%>">
										<div class="featured__item">
											<div class="featured__item__pic set-bg"
												data-setbg="assets/product/<%=product.getProductId()%>/main.jpg" >
												<ul class="featured__item__pic__hover">
													<li><a
														href="addtowishlist?productId=<%=product.getProductId()%>"><i
															class="fa fa-heart"></i></a></li>
													<li><a
														href="seedetails?productId=<%=product.getProductId()%>"><i
															class="fa fa-retweet"></i></a></li>
													<li><a
														href="addtocart?productId=<%=product.getProductId()%>&qty=1"><i
															class="fa fa-shopping-cart"></i></a></li>
												</ul>
											</div>
											<div class="featured__item__text">
												<h6>
													<a href="#"><%=product.getProductName()%></a>
												</h6>
												<h5>
													Rs.<%=product.getPrice()%>.00
												</h5>
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
							<%
							for (CategoryBean cb : list) {
							%>

							<li data-filter=".<%=cb.getCategoryId()%>"><a
								href="seecategory?categoryId=<%=cb.getCategoryId()%>"
								style="color: black"> <%=cb.getCategoryName()%>
							</a></li>

							<%
							}
							%>
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
							<div class="owl-stage"
								style="transform: translate3d(-1169px, 0px, 0px); transition: all 1.2s ease 0s; width: 3803px;">
								<div class="owl-item cloned" style="width: 292.498px;">
									<div class="col-lg-3">
										<div class="featured__item">
											<div class="featured__item__pic set-bg"
												data-setbg="assets/product/<%=product.getProductId()%>/main.jpg">
												<ul class="featured__item__pic__hover">
													<li><a
														href="addtowishlist?productId=<%=product.getProductId()%>"><i
															class="fa fa-heart"></i></a></li>
													<li><a
														href="seedetails?productId=<%=product.getProductId()%>"><i
															class="fa fa-retweet"></i></a></li>
													<li><a
														href="addtocart?productId=<%=product.getProductId()%>&qty=1"><i
															class="fa fa-shopping-cart"></i></a></li>
												</ul>
											</div>
											<div class="featured__item__text">
												<h6>
													<a href="#"><%=product.getProductName()%></a>
												</h6>
												<h5>
													Rs.<%=product.getPrice()%>.00
												</h5>
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
								<a href="seedetails?productId=<%=product.getProductId()%>"
									class="latest-product__item">
									<div class="latest-product__item__pic">
										<img src="assets/product/<%=product.getProductId()%>/main.jpg"
											alt="">
									</div>
									<div class="latest-product__item__text">
										<h6><%=product.getProductName()%></h6>
										<span>Rs.<%=product.getPrice()%>.00
										</span>
									</div>
								</a>

							</div>

						</div>
						<%
						}
						%>
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


								<a href="seedetails?productId=<%=product.getProductId()%>"
									class="latest-product__item">
									<div class="latest-product__item__pic">
										<img src="assets/product/<%=product.getProductId()%>/main.jpg"
											alt="">
									</div>
									<div class="latest-product__item__text">
										<h6><%=product.getProductName()%></h6>
										<span>Rs.<%=product.getPrice()%>.00
										</span>
									</div>
								</a>
							</div>
						</div>
						<%
						}
						%>
					</div>
				</div>





				<div class="col-lg-4 col-md-6">
					<div class="latest-product__text">
						<h4>Review Products</h4>
						<%
						int k = 0;
						for (ProductBean p : list4) {
							k++;
							if (k == 4)
								break;
						%>
						<div class="latest-product__slider owl-carousel">
							<div class="latest-prdouct__slider__item">

								<a href="seedetails?productId=<%=p.getProductId()%>"
									class="latest-product__item">
									<div class="latest-product__item__pic">
										<img src="assets/product/<%=p.getProductId()%>/main.jpg"
											alt="">
									</div>
									<div class="latest-product__item__text">
										<h6><%=p.getProductName()%></h6>
										<span>Rs.<%=p.getPrice()%></span>
									</div>
								</a>

							</div>
						</div>
						<%
						}
						%>

					</div>
				</div>



			</div>
		</div>
	</section>
	<!-- Latest Product Section End -->
	<jsp:include page="BuyerFooter.jsp"></jsp:include>

	<!-- Blog Section End -->


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