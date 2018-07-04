<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>购物车</title>
<meta charset="UTF-8" />
<title>GFashion - Responsive e-commerce HTML Template</title>
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- Favorite Icons -->
<link rel="icon" href="img/favicon/favicon.html" type="image/x-icon" />
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="img/favicon/apple-touch-icon-144x144-precomposed.html">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="img/favicon/apple-touch-icon-72x72-precomposed.html">
<link rel="apple-touch-icon-precomposed"
	href="img/favicon/apple-touch-icon-precomposed.html">
<!-- // Favorite Icons -->

<link href='http://fonts.useso.com/css?family=Open+Sans:300,400,600,700'
	rel='stylesheet' type='text/css'>

<!-- GENERAL CSS FILES -->
<link rel="stylesheet" href="css/minified.css">
<!-- // GENERAL CSS FILES -->

<!--[if IE 8]>
		<script src="js/respond.min.js"></script>
		<script src="js/selectivizr-min.js"></script>
	<![endif]-->
<!--
	<script src="js/jquery.min.js"></script>
	-->
<script>
	window.jQuery
			|| document.write('<script src="js/jquery.min.js"><\/script>');
</script>
<script src="js/modernizr.min.js"></script>
<!-- PARTICULAR PAGES CSS FILES -->
<link rel="stylesheet" href="css/innerpage.css">
<link rel="stylesheet" href="css/owl.carousel.css">
<link rel="stylesheet" href="css/owl.theme.css">
<!-- // PARTICULAR PAGES CSS FILES -->
<link rel="stylesheet" href="css/responsive.css">
</head>
<body>

	<!-- PAGE WRAPPER -->
	<div id="page-wrapper">

		<!-- SITE HEADER -->
		<header id="site-header" role="banner"> <!-- HEADER TOP -->
		<div class="header-top">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 col-sm-6 col-md-7">
						<!-- CONTACT INFO -->
						<div class="contact-info">
							<i class="iconfont-headphones round-icon"></i> <strong>+86
								（100）0000</strong> <span>(周一- 周五: 09.00 - 21.00)</span>
						</div>
						<!-- // CONTACT INFO -->
					</div>
					<div class="col-xs-12 col-sm-6 col-md-5">
						<ul class="actions unstyled clearfix">
							<li>
								<!-- SEARCH BOX -->
								<div class="search-box">
									<form action="#" method="post">
										<div class="input-iconed prepend">
											<button class="input-icon">
												<i class="iconfont-search"></i>
											</button>
											<label for="input-search" class="placeholder">Search
												here…</label> <input type="text" name="q" id="input-search"
												class="round-input full-width" required />
										</div>
									</form>
								</div> <!-- // SEARCH BOX -->
							</li>
							<li data-toggle="sub-header" data-target="#sub-social">
								<!-- SOCIAL ICONS --> <a href="javascript:void(0);"
								id="social-icons"> <i class="iconfont-share round-icon"></i>
							</a>

								<div id="sub-social" class="sub-header">
									<ul class="social-list unstyled text-center">
										<li><a href="#"><i
												class="iconfont-facebook round-icon"></i></a></li>
										<li><a href="#"><i
												class="iconfont-twitter round-icon"></i></a></li>
										<li><a href="#"><i
												class="iconfont-google-plus round-icon"></i></a></li>
										<li><a href="#"><i
												class="iconfont-pinterest round-icon"></i></a></li>
										<li><a href="#"><i class="iconfont-rss round-icon"></i></a></li>
									</ul>
								</div> <!-- // SOCIAL ICONS -->
							</li>
							<li data-toggle="sub-header" data-target="#sub-cart">
								<!-- SHOPPING CART --> <a href="javascript:void(0);"
								id="total-cart"> <i
									class="iconfont-shopping-cart round-icon"></i>
							</a>

								<div id="sub-cart" class="sub-header">
									<div class="cart-header">
										<span>你的购物车目前为空.</span> <small><a href="cart.html">(See
												All)</a></small>
									</div>
									<ul class="cart-items product-medialist unstyled clearfix"></ul>
									<div class="cart-footer">
										<div class="cart-total clearfix">
											<span class="pull-left uppercase">总价</span> <span
												class="pull-right total">$ 0</span>
										</div>
										<div class="text-right">
											<a href="cart.jsp"
												class="btn btn-default btn-round view-cart">查看购物车</a>
										</div>
									</div>
								</div> <!-- // SHOPPING CART -->
							</li>
						</ul>
					</div>
				</div>
			</div>

			<!-- ADD TO CART MESSAGE -->
			<div class="cart-notification">
				<ul class="unstyled"></ul>
			</div>
			<!-- // ADD TO CART MESSAGE -->
		</div>
		<div class="main-header-wrapper">
			<div class="container">
				<div class="main-header">
					<!-- CURRENCY / LANGUAGE / USER MENU -->
					<div class="actions">

						<div class="clearfix"></div>
						<!-- USER RELATED MENU -->
						<nav id="tiny-menu" class="clearfix"> <c:if
							test="${not empty User}">
							<ul class="user-menu">
								<li><h4>${User.user_name}欢迎您</h4></li>
								<li><a href="user/exit.do">退出</a></li>
							</ul>
						</c:if> <c:if test="${empty User}">
							<ul class="user-menu">
								<li><a href="login.jsp">登录</a></li>
								<li><a href="register.jsp">注册</a></li>
							</ul>
						</c:if> </nav>
						<!-- // USER RELATED MENU -->
					</div>
					<!-- // CURRENCY / LANGUAGE / USER MENU -->
					<!-- SITE LOGO -->
					<div class="logo-wrapper">
						<a href="index.jsp" class="logo"
							title="GFashion - Responsive e-commerce HTML Template"> <img
							src="img/logo.png"
							alt="GFashion - Responsive e-commerce HTML Template" />
						</a>
					</div>
					<!-- // SITE LOGO -->
					<!-- SITE NAVIGATION MENU -->
					<nav id="site-menu" role="navigation">
					<ul class="main-menu hidden-sm hidden-xs">
						<li><a href="index.jsp">主页</a></li>
						<li><a href="note.jsp">笔记</a></li>
						<li><a href="products.jsp">商城</a></li>
						<li><a href="userInfo.jsp">我的</a></li>

					</ul>
					</nav>
					<!-- // SITE NAVIGATION MENU -->
				</div>
			</div>
		</div>
		<!-- // MAIN HEADER --> </header>

		<!-- BREADCRUMB -->
		<div class="breadcrumb-container">
			<div class="container">
				<div class="relative">
					<ul class="bc unstyled clearfix">
						<li><a href="index.jsp">主页</a></li>
						<li class="active">购物车</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- // BREADCRUMB -->

		<!-- SITE MAIN CONTENT -->
		<main id="main-content" role="main"> <section class="section">
		<div class="container">

			<table class="tbl-cart">
				<thead>
					<tr>
						<th>商品名称</th>
						<th style="width: 15%;">价格</th>
						<th style="width: 15%;">数量</th>
						<th class="hidden-xs" style="width: 15%;">总价</th>
						<th class="hidden-xs" style="width: 10%;"></th>
					</tr>
				</thead>
				<tbody>
					<tr class="hide empty-cart">
						<td colspan="5">It seems your shopping cart is empty, try
							looking our <a href="products.jsp">products</a>.
						</td>
					</tr>
					<tr>
						<td><a class="entry-thumbnail"
							href="images/women/legging/104331-0014_1.jpg"
							data-toggle="lightbox"> <img
								src="images/women/legging/104331-0014_1.jpg" alt="" />
						</a> <a class="entry-title" href="product.jsp">Inceptos orci hac
								libero</a></td>
						<td><span class="unit-price">$350.00</span></td>
						<td>
							<div class="qty-btn-group">
								<button type="button" class="down">
									<i class="iconfont-caret-down inline-middle"></i>
								</button>
								<input type="text" value="1" />
								<button type="button" class="up">
									<i class="iconfont-caret-up inline-middle"></i>
								</button>
							</div>
						</td>
						<td class="hidden-xs"><strong class="text-bold row-total">$350.00</strong></td>
						<td class="hidden-xs"><button type="button" class="close"
								aria-hidden="true">×</button></td>
					</tr>
				</tbody>
			</table>



			<div class="shopcart-total pull-right clearfix">
				<div class="cart-subtotal text-xs m-b-sm clearfix">
					<span class="pull-left">小计:</span> <span class="pull-right">$1050.00</span>
				</div>
				<div class="cart-total text-bold m-b-lg clearfix">
					<span class="pull-left">总价:</span> <span class="pull-right">$1050.00</span>
				</div>
				<div class="text-center">
					<a class="btn btn-round btn-default uppercase" href="cosprovinces/listp.do">
						结 &nbsp&nbsp&nbsp&nbsp&nbsp账</a>
				</div>
			</div>

		</div>
		</section> <!-- RELATED PRODUCTS --> <section class="section visible-items-4">
		<div class="container">
			<div class="row">
				<header class="section-header clearfix col-sm-offset-3 col-sm-6">
				<h3 class="section-title">这些你可能感兴趣</h3>

				</header>

				<div class="clearfix"></div>

				<!-- BEGIN CAROUSEL -->
				<div id="featured-products" class="add-cart" data-product=".product"
					data-thumbnail=".entry-media .thumb" data-title=".entry-title > a"
					data-url=".entry-title > a" data-price=".entry-price > .price">

					<div class="owl-controls clickable top">
						<div class="owl-buttons">
							<div class="owl-prev">
								<i class="iconfont-angle-left"></i>
							</div>
							<div class="owl-next">
								<i class="iconfont-angle-right"></i>
							</div>
						</div>
					</div>

					<div class="owl-carousel owl-theme" data-visible-items="4"
						data-navigation="true" data-lazyload="true">
						<div class="product" data-product-id="1">
							<div class="entry-media">
								<img data-src="images/women/basic/848051-0014_1_t.jpg" alt=""
									class="lazyOwl thumb" />
								<div class="hover">
									<a href="product.jsp" class="entry-url"></a>
									<ul class="icons unstyled">
										<li>
											<div class="circle ribbon ribbon-sale">Sale</div>
										</li>
										<li><a href="images/women/basic/848051-0014_1.jpg"
											class="circle" data-toggle="lightbox"><i
												class="iconfont-search"></i></a></li>
										<li><a href="#" class="circle add-to-cart"><i
												class="iconfont-shopping-cart"></i></a></li>
									</ul>
									<div class="rate-bar">
										<input type="range" value="4.5" step="0.5" id="backing1" />
										<div class="rateit" data-rateit-backingfld="#backing1"
											data-rateit-starwidth="12" data-rateit-starheight="12"
											data-rateit-resetable="false" data-rateit-ispreset="true"
											data-rateit-min="0" data-rateit-max="5"></div>
									</div>
								</div>
							</div>
							<div class="entry-main">
								<h5 class="entry-title">
									<a href="#">Inceptos orci hac libero</a>
								</h5>
								<div class="entry-price">
									<s class="entry-discount">$ 350.00</s> <strong
										class="accent-color price">$ 250.00</strong>
								</div>

							</div>
						</div>

						<div class="product" data-product-id="2">
							<div class="entry-media">
								<img data-src="images/women/basic/688086-0286_1_t.jpg" alt=""
									class="lazyOwl thumb" />
								<div class="hover">
									<a href="product.jsp" class="entry-url"></a>
									<ul class="icons unstyled">
										<li><a href="images/women/basic/688086-0286_1.jpg"
											class="circle" data-toggle="lightbox"><i
												class="iconfont-search"></i></a></li>
										<li><a href="#" class="circle add-to-cart" data-><i
												class="iconfont-shopping-cart"></i></a></li>
									</ul>
									<div class="rate-bar">
										<input type="range" value="4" step="0.5" id="backing2" />
										<div class="rateit" data-rateit-backingfld="#backing2"
											data-rateit-starwidth="12" data-rateit-starheight="12"
											data-rateit-resetable="false" data-rateit-ispreset="true"
											data-rateit-min="0" data-rateit-max="5"></div>
									</div>
								</div>
							</div>
							<div class="entry-main">
								<h5 class="entry-title">
									<a href="#">Inceptos orci hac libero</a>
								</h5>
								<div class="entry-price">
									<strong class="price">$ 350.00</strong>
								</div>

							</div>
						</div>

						<div class="product" data-product-id="3">
							<div class="entry-media">
								<img data-src="images/women/basic/848099-0067_1_t.jpg" alt=""
									class="lazyOwl thumb" />
								<div class="hover">
									<a href="product.jsp" class="entry-url"></a>
									<ul class="icons unstyled">
										<li>
											<div class="circle ribbon ribbon-new">New</div>
										</li>
										<li><a href="images/women/basic/848099-0067_1.jpg"
											class="circle" data-toggle="lightbox"><i
												class="iconfont-search"></i></a></li>
										<li><a href="#" class="circle add-to-cart" data-><i
												class="iconfont-shopping-cart"></i></a></li>
									</ul>
									<div class="rate-bar">
										<input type="range" value="3.5" step="0.5" id="backing3" />
										<div class="rateit" data-rateit-backingfld="#backing3"
											data-rateit-starwidth="12" data-rateit-starheight="12"
											data-rateit-resetable="false" data-rateit-ispreset="true"
											data-rateit-min="0" data-rateit-max="5"></div>
									</div>
								</div>
							</div>
							<div class="entry-main">
								<h5 class="entry-title">
									<a href="#">Inceptos orci hac libero</a>
								</h5>
								<div class="entry-price">
									<strong class="price">$ 450.00</strong>
								</div>

							</div>
						</div>

						<div class="product" data-product-id="4">
							<div class="entry-media">
								<img data-src="images/women/basic/589550-0014_1_t.jpg" alt=""
									class="lazyOwl thumb" />
								<div class="hover">
									<a href="product.jsp" class="entry-url"></a>
									<ul class="icons unstyled">
										<li><a href="images/women/basic/589550-0014_1.jpg"
											class="circle" data-toggle="lightbox"><i
												class="iconfont-search"></i></a></li>
										<li><a href="#" class="circle add-to-cart" data-><i
												class="iconfont-shopping-cart"></i></a></li>
									</ul>
									<div class="rate-bar">
										<input type="range" value="5" step="0.5" id="backing4" />
										<div class="rateit" data-rateit-backingfld="#backing4"
											data-rateit-starwidth="12" data-rateit-starheight="12"
											data-rateit-resetable="false" data-rateit-ispreset="true"
											data-rateit-min="0" data-rateit-max="5"></div>
									</div>
								</div>
							</div>
							<div class="entry-main">
								<h5 class="entry-title">
									<a href="#">Inceptos orci hac libero</a>
								</h5>
								<div class="entry-price">
									<strong class="price">$ 350.00</strong>
								</div>

							</div>
						</div>

						<div class="product" data-product-id="5">
							<div class="entry-media">
								<img data-src="images/women/legging/104331-0014_1_t.jpg" alt=""
									class="lazyOwl thumb" />
								<div class="hover">
									<a href="product.jsp" class="entry-url"></a>
									<ul class="icons unstyled">
										<li>
											<div class="circle ribbon ribbon-sale">Sale</div>
										</li>
										<li><a href="images/women/legging/104331-0014_1.jpg"
											class="circle" data-toggle="lightbox"><i
												class="iconfont-search"></i></a></li>
										<li><a href="#" class="circle add-to-cart" data-><i
												class="iconfont-shopping-cart"></i></a></li>
									</ul>
									<div class="rate-bar">
										<input type="range" value="4.5" step="0.5" id="backing5" />
										<div class="rateit" data-rateit-backingfld="#backing5"
											data-rateit-starwidth="12" data-rateit-starheight="12"
											data-rateit-resetable="false" data-rateit-ispreset="true"
											data-rateit-min="0" data-rateit-max="5"></div>
									</div>
								</div>
							</div>
							<div class="entry-main">
								<h5 class="entry-title">
									<a href="#">Inceptos orci hac libero</a>
								</h5>
								<div class="entry-price">
									<s class="entry-discount">$ 350.00</s> <strong
										class="accent-color price">$ 250.00</strong>
								</div>

							</div>
						</div>

						<div class="product" data-product-id="6">
							<div class="entry-media">
								<img data-src="images/women/legging/714384-0014_1_t.jpg" alt=""
									class="lazyOwl thumb" />
								<div class="hover">
									<a href="product.jsp" class="entry-url"></a>
									<ul class="icons unstyled">
										<li><a href="images/women/legging/714384-0014_1.jpg"
											class="circle" data-toggle="lightbox"><i
												class="iconfont-search"></i></a></li>
										<li><a href="#" class="circle add-to-cart" data-><i
												class="iconfont-shopping-cart"></i></a></li>
									</ul>
									<div class="rate-bar">
										<input type="range" value="4" step="0.5" id="backing6" />
										<div class="rateit" data-rateit-backingfld="#backing6"
											data-rateit-starwidth="12" data-rateit-starheight="12"
											data-rateit-resetable="false" data-rateit-ispreset="true"
											data-rateit-min="0" data-rateit-max="5"></div>
									</div>
								</div>
							</div>
							<div class="entry-main">
								<h5 class="entry-title">
									<a href="#">Inceptos orci hac libero</a>
								</h5>
								<div class="entry-price">
									<strong class="price">$ 350.00</strong>
								</div>

							</div>
						</div>

						<div class="product" data-product-id="7">
							<div class="entry-media">
								<img data-src="images/women/dress/256479-0014_1_t.jpg" alt=""
									class="lazyOwl thumb" />
								<div class="hover">
									<a href="product.jsp" class="entry-url"></a>
									<ul class="icons unstyled">
										<li>
											<div class="circle ribbon ribbon-new">New</div>
										</li>
										<li><a href="images/women/dress/256479-0014_1.jpg"
											class="circle" data-toggle="lightbox"><i
												class="iconfont-search"></i></a></li>
										<li><a href="#" class="circle add-to-cart" data-><i
												class="iconfont-shopping-cart"></i></a></li>
									</ul>
									<div class="rate-bar">
										<input type="range" value="3.5" step="0.5" id="backing7" />
										<div class="rateit" data-rateit-backingfld="#backing7"
											data-rateit-starwidth="12" data-rateit-starheight="12"
											data-rateit-resetable="false" data-rateit-ispreset="true"
											data-rateit-min="0" data-rateit-max="5"></div>
									</div>
								</div>
							</div>
							<div class="entry-main">
								<h5 class="entry-title">
									<a href="#">Inceptos orci hac libero</a>
								</h5>
								<div class="entry-price">
									<strong class="price">$ 450.00</strong>
								</div>

							</div>
						</div>

						<div class="product" data-product-id="8">
							<div class="entry-media">
								<img data-src="images/women/dress/278638-0083_1_t.jpg" alt=""
									class="lazyOwl thumb" />
								<div class="hover">
									<a href="product.jsp" class="entry-url"></a>
									<ul class="icons unstyled">
										<li><a href="images/women/dress/278638-0083_1.jpg"
											class="circle" data-toggle="lightbox"><i
												class="iconfont-search"></i></a></li>
										<li><a href="#" class="circle add-to-cart" data-><i
												class="iconfont-shopping-cart"></i></a></li>
									</ul>
									<div class="rate-bar">
										<input type="range" value="5" step="0.5" id="backing8" />
										<div class="rateit" data-rateit-backingfld="#backing8"
											data-rateit-starwidth="12" data-rateit-starheight="12"
											data-rateit-resetable="false" data-rateit-ispreset="true"
											data-rateit-min="0" data-rateit-max="5"></div>
									</div>
								</div>
							</div>
							<div class="entry-main">
								<h5 class="entry-title">
									<a href="#">Inceptos orci hac libero</a>
								</h5>
								<div class="entry-price">
									<strong class="price">$ 350.00</strong>
								</div>

							</div>
						</div>

					</div>

				</div>
				<!-- // END CAROUSEL -->

			</div>
		</div>
		</section> <!-- // RELATED PRODUCTS --> </main>
		<!-- // SITE MAIN CONTENT -->

		<footer class="page-footer"> <!-- WIDGET AREA -->
		<div class="widgets">

			<!-- FIRST ROW -->
			<div class="section">
				<div class="container">


					<!-- SECOND ROW -->
					<div class="section">
						<div class="container">
							<div class="row">

								<div class="col-xs-12 col-sm-12 col-md-3">
									<section class="widget widget-menu">
									<h5 class="widget-title">联系我们</h5>
									<div class="widget-content">
										<ul class="menu iconed-list unstyled">
											<li><span class="list-icon"><i
													class="round-icon iconfont-map-marker"></i></span>
												<div class="list-content">西北农林科技大学北校区信息工程学院</div></li>
											<li><span class="list-icon"><i
													class="round-icon iconfont-phone"></i></span>
												<div class="list-content">+86 （100）0000</div></li>
											<li><span class="list-icon"><i
													class="round-icon iconfont-envelope-alt"></i></span>
												<div class="list-content">weizhaung163.com</div></li>
										</ul>
									</div>
									</section>
								</div>

								<div class="col-xs-12 col-sm-12 col-md-6">
									<section class="widget widget-ads">
									<div class="widget-content">
										<div class="center-xs">
											<div class="ads">
												<a href="#"> <img src="images/demo/images-footer.jpg"
													alt="" />
												</a>
												<div class="ads-caption bottom-right">
													<a href="#" class="btn btn-default btn-round"> <i
														class="round-icon iconfont-angle-right"></i> <span
														class="inline-middle">Show More</span>
													</a>
												</div>
											</div>
										</div>
									</div>
									</section>
								</div>

								<div class="col-xs-12 col-sm-12 col-md-3">
									<section class="widget widget-subscription">
									<h5 class="widget-title">Newletter</h5>
									<div class="widget-content">
										<p>Subscribe to be the first to know about Sales, Events,
											and Exclusive Offers!</p>
										<form action="#" method="post">
											<div class="input-group">
												<label for="subscription-email" class="placeholder">Enter
													Your Email</label> <input type="email" id="subscription-email"
													name="email" class="form-control" required /> <span
													class="input-group-btn">
													<button class="btn btn-primary">Subscribe</button>
												</span>
											</div>
										</form>
									</div>
									</section>
								</div>

							</div>
						</div>
					</div>
					<!-- // SECOND ROW -->

				</div>
				<!-- // WIDGET AREA -->

				<div class="footer-sub">
					<div class="container">
						<div class="row">
							<div class="col-xs-12 col-sm-6">
								<div class="footer-links center-xs clearfix"></div>
								<div class="space10"></div>
								<div class="copyright center-xs">
									<p>
										© 2018 More Templates <a href="http://www.cssmoban.com/"
											target="_blank" title="模板之家">weizhaung </a> - Collect from <a
											href="http://www.cssmoban.com/" title="网页模板" target="_blank">weizhaung</a>.
										All Rights Reserved.
									</p>
								</div>
							</div>


						</div>
					</div>
		</footer>
		<!-- // SITE FOOTER -->
	</div>
	<!-- // PAGE WRAPPER -->

	<!-- Essential Javascripts -->
	<script src="js/minified.js"></script>
	<!-- // Essential Javascripts -->

	<script>
		(function(i, s, o, g, r, a, m) {
			i['GoogleAnalyticsObject'] = r;
			i[r] = i[r] || function() {
				(i[r].q = i[r].q || []).push(arguments)
			}, i[r].l = 1 * new Date();
			a = s.createElement(o), m = s.getElementsByTagName(o)[0];
			a.async = 1;
			a.src = g;
			m.parentNode.insertBefore(a, m)
		})(window, document, 'script',
				'../../../www.google-analytics.com/analytics.js', 'ga');

		ga('create', 'UA-27646173-3', 'themina.net');
		ga('send', 'pageview');
	</script>
	<!-- Particular Page Javascripts -->
	<script src="js/products.js"></script>
	<script src="js/owl.carousel.js"></script>
	<!-- // Particular Page Javascripts -->

</body>
</html>