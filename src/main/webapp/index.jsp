<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	// 获得项目完全路径（假设你的项目叫MyApp，那么获得到的地址就是http://localhost:8080/MyApp/）: 
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html class="noIE" lang="en-US">
<html class="noIE" lang="en-US">
<!--<![endif]-->
<head>
<base href=" <%=basePath%>">
<meta charset="UTF-8" />
<title>微妆主页</title>
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
<script>
	window.jQuery
			|| document.write('<script src="js/jquery.min.js"><\/script>');
</script>
<script src="js/modernizr.min.js"></script>
<!-- 检测浏览器html5和css样式能力的工具 -->
<!-- PARTICULAR PAGES CSS FILES -->
<link rel="stylesheet" href="css/owl.carousel.css">
<link rel="stylesheet" href="css/owl.theme.css">
<link href="css/flexslider.css" rel="stylesheet" />
<!-- // PARTICULAR PAGES CSS FILES -->
<link rel="stylesheet" href="css/responsive.css">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body class="home">

	<!-- PAGE WRAPPER -->
	<div id="page-wrapper">

		<!-- SITE HEADER -->
		<header id="site-header" role="banner">
			<!-- HEADER TOP -->
			<div class="header-top">
				<div class="container">
					<div class="row">
						<div class="col-xs-12 col-sm-6 col-md-7">
							<!-- CONTACT INFO -->
							<div class="contact-info">
								<i class="iconfont-headphones round-icon"></i> <strong>+86
									(100) 0000</strong> <span>(周一- 周五: 09.00 - 21.00)</span>
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
												<label for="input-search" class="placeholder">搜索…</label> <input
													type="text" name="q" id="input-search"
													class="round-input full-width" required />
											</div>
										</form>
									</div> <!-- // SEARCH BOX -->
								</li>

								

									<li><a href="cart/listUserCart.do" id="total-cart"> <i
										class="iconfont-shopping-cart round-icon"></i>
								</a></li>
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
			<!-- // HEADER TOP -->
			<!-- MAIN HEADER -->
			<div class="main-header-wrapper">
				<div class="container">
					<div class="main-header">
						<!-- CURRENCY / LANGUAGE / USER MENU -->
						<div class="actions">
							<div class="center-xs"></div>
							<nav id="tiny-menu" class="clearfix">
								<c:if test="${not empty User}">
									<ul class="user-menu">
										<li><h4>${User.user_name}欢迎您</h4></li>
										<li><a href="user/exit.do">退出</a></li>
									</ul>
								</c:if>
								<c:if test="${empty User}">
									<ul class="user-menu">
										<li><a href="login.jsp">登录</a></li>
										<li><a href="user/ListEmail.do">注册</a></li>
									</ul>
								</c:if>
							</nav>
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
								<li><a href="goods/SearchgoodsByclass.do">主页</a></li>
								<li><a href="notes/listnotes.do">笔 记</a></li>
								<li><a href="goods/listproducts.do">商 城</a></li>
								<li><a href="notes/addhot.do">我 的</a></li>
								<li><a href="user/ListEmail.do">TEST</a></li>
							</ul>
							
							<!-- MOBILE MENU -->
							<div id="mobile-menu"
								class="dl-menuwrapper visible-xs visible-sm">
								<button class="dl-trigger">
									<i class="iconfont-reorder round-icon"></i>
								</button>
								<ul class="dl-menu">
									<li class="active"><a href="javsacript:void(0);">Home</a>
									</li>
									<li><a href="javsacript:void(0);">Women</a></li>
									<li><a href="javsacript:void(0);">Men</a>

										<ul class="dl-submenu">
											<li><a href="products.jsp">Clothing</a>
												<ul class="dl-submenu">
													<li><a href="products.jsp">Casual Wear</a></li>
													<li><a href="products.jsp">Evening Wear</a></li>
													<li><a href="products.jsp">Formal Attire</a></li>
													<li><a href="products.jsp">Womens Jeans</a></li>
													<li><a href="products.jsp">Mens Jeans</a></li>
													<li><a href="products.jsp">Fall Styles</a></li>
												</ul></li>
											<li><a href="products.jsp">Accessories</a>
												<ul class="dl-submenu">
													<li><a href="products.jsp">Casual Wear</a></li>
													<li><a href="products.jsp">Evening Wear</a></li>
													<li><a href="products.jsp">Formal Attire</a></li>
													<li><a href="products.jsp">Womens Jeans</a></li>
													<li><a href="products.jsp">Mens Jeans</a></li>
													<li><a href="products.jsp">Fall Styles</a></li>
												</ul></li>
											<li><a href="products.jsp">Brands</a>
												<ul class="dl-submenu">
													<li><a href="products.jsp">Casual Wear</a></li>
													<li><a href="products.jsp">Evening Wear</a></li>
													<li><a href="products.jsp">Formal Attire</a></li>
													<li><a href="products.jsp">Womens Jeans</a></li>
													<li><a href="products.jsp">Mens Jeans</a></li>
													<li><a href="products.jsp">Fall Styles</a></li>
												</ul></li>
										</ul></li>
								</ul>
							</div>
							<!-- // MOBILE MENU -->

						</nav>
						<!-- // SITE NAVIGATION MENU -->
					</div>
				</div>
			</div>
			<!-- // MAIN HEADER -->
		</header>
		<!-- // SITE HEADER -->


		<!-- HOMEPAGE SLIDER -->
		<div id="home-slider">
			<div class="flexslider">
				<ul class="slides">
					<!-- THE FIRST SLIDE -->
					<li>
						<!-- THE MAIN IMAGE IN THE SLIDE --> <img
						src="rev-slider/img/slides/banner.jpg" alt="" /> <!-- THE CAPTIONS OF THE FIRST SLIDE -->
						<div class="flex-caption h6 text-bold gfc uppercase animated"
							data-animation="fadeInLeftBig" data-x="800" data-y="110"
							data-speed="600" data-start="1200">新 系 列</div>

						<div class="flex-caption herotext text-bold gfc animated"
							data-animation="fadeInRightBig" data-x="590" data-y="140"
							data-speed="900" data-start="2000">点赞即送积分</div>

						<div class="flex-caption h6 text-bold gfc text-center animated"
							data-animation="fadeInDown" data-x="760" data-y="260"
							data-speed="1600" data-start="2900">
							狂欢不止 大牌库存告急<br /> <a href="products.jsp"
								class="btn btn-primary uppercase">马上去抢</a>
						</div>

					</li>

					<!-- THE SECOND SLIDE -->
					<li style="background: #fa6f57;">
						<!-- THE MAIN IMAGE IN THE SLIDE --> <img
						src="img/transparent.png" alt="" />

						<div class="flex-caption super-giant gfc animated uppercase"
							data-animation="fadeInUp" data-x="center" data-y="60"
							data-speed="500" data-start="900">
							<font color="white">降价</font>
						</div>

						<div id="caption-left-round"
							class="flex-caption round gfc animated uppercase"
							data-animation="fadeInLeftBig" data-x="240" data-y="60"
							data-speed="600" data-start="1200">
							<div class="vmid">
								<span>换季<br />清仓
								</span>
							</div>
						</div>

						<div class="flex-caption round gfc animated uppercase"
							data-animation="fadeInRightBig" data-x="1100" data-y="60"
							data-speed="600" data-start="1200">
							<div class="vmid">
								<span>高达<br />70%折扣
								</span>
							</div>
						</div>

						<div class="flex-caption h3 gfc animated uppercase"
							data-animation="fadeInDown" data-x="center" data-y="250"
							data-speed="400" data-start="1800">
							<strong class="text-bold"><font color="white">500种</font>
							</strong><font color="white">新品供您选择</font>
						</div>

					</li>

					<!-- THE SECOND SLIDE -->
					<li>
						<!-- THE MAIN IMAGE IN THE SLIDE --> <img
						src="rev-slider/img/slides/3303349658_cfaebb811f_o.jpg" alt="" />

						<div
							class="flex-caption herotext text-bold gfc bg-dark animated uppercase"
							data-animation="fadeInUpBig" data-x="360" data-y="60"
							data-speed="900" data-start="100">全场包邮</div>

						<div
							class="flex-caption h2 text-bold gfc bg-dark animated uppercase"
							data-animation="fadeInUpBig" data-x="397" data-y="175"
							data-speed="600" data-start="900">购物超过200元</div>

					</li>

				</ul>
			</div>

			<script>
				jQuery(function($) {
					var $slider = $('#home-slider > .flexslider');
					$slider.find('.flex-caption').each(
							function() {
								var $this = $(this);
								var configs = {
									left : $this.data('x'),
									top : $this.data('y'),
									speed : $this.data('speed') + 'ms',
									delay : $this.data('start') + 'ms'
								};
								if (configs.left == 'center'
										&& $this.width() !== 0) {
									configs.left = ($slider.width() - $this
											.width()) / 2;
								}
								if (configs.top == 'center'
										&& $this.height() !== 0) {
									configs.top = ($slider.height() - $this
											.height()) / 2;
								}

								$this.data('positions', configs);

								$this.css({
									'left' : configs.left + 'px',
									'top' : configs.top + 'px',
									'animation-duration' : configs.speed,
									'animation-delay' : configs.delay
								});
							});

					$(window)
							.on(
									'resize',
									function() {
										var wW = $(window).width(), zoom = (wW >= 1170) ? 1
												: wW / 1349;
										$('.flex-caption.gfc')
												.css('zoom', zoom);
									});
					$(window).trigger('resize');

					$slider
							.imagesLoaded(function() {
								$slider
										.flexslider({
											animation : 'slide',
											easing : 'easeInQuad',
											slideshow : false,
											nextText : '<i class="iconfont-angle-right"></i>',
											prevText : '<i class="iconfont-angle-left"></i>',
											start : function() {
												flex_fix_pos(1);
											},
											before : function(slider) {
												// initial caption animation for next show
												$slider
														.find(
																'.slides li .animation-done')
														.each(
																function() {
																	$(this)
																			.removeClass(
																					'animation-done');
																	var animation = $(
																			this)
																			.attr(
																					'data-animation');
																	$(this)
																			.removeClass(
																					animation);
																});

												flex_fix_pos(slider.animatingTo + 1);
											},
											after : function() {
												// run caption animation
												$slider
														.find(
																'.flex-active-slide .animated')
														.each(
																function() {
																	var animation = $(
																			this)
																			.attr(
																					'data-animation');
																	$(this)
																			.addClass(
																					'animation-done')
																			.addClass(
																					animation);
																});
											}
										});
							});

					function flex_fix_pos(i) {
						$slider.find('.slides > li:eq(' + i + ') .gfc').each(
								function() {
									var $this = $(this), pos = $(this).data(
											'positions');

									if (pos.left == 'center') {
										pos.left = ($slider.width() - $this
												.width()) / 2;
										$this.css('left', pos.left + 'px');
										$this.data('positions', pos);
									}
									if (pos.top == 'center') {
										pos.top = ($slider.height() - $this
												.height()) / 2;
										$this.css('left', pos.top + 'px');
										$this.data('positions', pos);
									}
								});
					}
				});
			</script>
		</div>
		<!-- // HOMEPAGE SLIDER -->

		<!-- SITE MAIN CONTENT -->
		<main id="main-content" role="main"> <!-- PROMO BOXES -->
		<section class="section promos">
			<div class="container">
				<div class="row">

					<div class="col-md-4">
						<div
							class="promo accent-background first-child first-row animated"
							data-animation="fadeInLeft">
							<div class="inner text-center">
								<h1 class="uppercase text-semibold">
									<a href="#"> <span class="inverse-color">热卖</span>直降35% <span
										class="inverse-color">减价</span>
									</a>
								</h1>
								<h5 class="uppercase">2018年终热卖</h5>
							</div>
						</div>
					</div>

					<div class="col-md-4">
						<div class="promo inverse-background first-row animated"
							data-animation="fadeInDown"
							style="background: url('images/demo/P2200214.jpg') no-repeat; background-size: 100%;">
							<div class="inner text-center np">
								<div class="ribbon">
									<h6 class="nmb">新品到货</h6>
									<h5 class="text-semibold uppercase nmb">彩妆</h5>
									<div class="space10"></div>
									<a href="products.jsp" class="with-icon prepend-icon"><i
										class="iconfont-caret-right"></i><span> 立即购买</span></a>
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-4">
						<div class="promo inverse-background first-row animated"
							data-animation="fadeInRight">
							<div class="inner text-center">
								<h1 class="uppercase text-bold">
									<a href="#"> 畅享 <span class="inverse-color">购物</span>
									</a>
								</h1>
								<h5 class="uppercase">最低200起</h5>
							</div>
						</div>
					</div>

				</div>
			</div>
		</section>
		<!-- // PROMO BOXES --> <!-- FEATURED PRODUCTS -->
		<section class="section featured visible-items-4">
			<div class="container">
				<div class="row">
					<header class="section-header clearfix col-sm-offset-3 col-sm-6">
						<h3 class="section-title">热 卖 商 品</h3>
						<!--<p class="section-teaser">Lorem ipsum dolor sit amet, consectetur adipiscing elit ac lobortis lacus</p>-->
					</header>

					<div class="clearfix"></div>

					<!-- BEGIN CAROUSEL -->
					<div id="featured-products" class="add-cart"
						data-product=".product" data-thumbnail=".entry-media .thumb"
						data-title=".entry-title > a" data-url=".entry-title > a"
						data-price=".entry-price > .price">

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
									<img data-src="images/zhuye/basic/1.jpg" alt=""
										class="lazyOwl thumb" />
									<div class="hover">
										<a href="product.jsp" class="entry-url"></a>
										<ul class="icons unstyled">
											<li>
												<div class="circle ribbon ribbon-sale">特卖</div>
											</li>
											<li><a href="images/zhuye/basic/1c.jpg" class="circle"
												data-toggle="lightbox"><i class="iconfont-search"></i></a></li>
											<li><a href="#" class="circle add-to-cart"><i
													class="iconfont-shopping-cart"></i></a></li>
										</ul>
									</div>
								</div>
								<div class="entry-main">
									<h5 class="entry-title">
										<a href="#">DAISO 大创嫩白淡斑保湿乳液 超评价全身美白120ml</a>
									</h5>
									<div class="entry-price">
										<s class="entry-discount">¥33/瓶</s> <strong
											class="accent-color price">¥29/瓶</strong>
									</div>
									<div class="entry-links clearfix">
										<!--<a href="#" class="pull-left m-r">+ Add to Wishlist</a>-->
										<a href="#" class="pull-right">+ 加入购物车</a>
									</div>
								</div>
							</div>

							<div class="product" data-product-id="2">
								<div class="entry-media">
									<img data-src="images/zhuye/basic/2.jpg" alt=""
										class="lazyOwl thumb" />
									<div class="hover">
										<a href="product.jsp" class="entry-url"></a>
										<ul class="icons unstyled">
											<li><a href="images/zhuye/basic/2c.jpg" class="circle"
												data-toggle="lightbox"><i class="iconfont-search"></i></a></li>
											<li><a href="#" class="circle add-to-cart"><i
													class="iconfont-shopping-cart"></i></a></li>
										</ul>
									</div>
								</div>
								<div class="entry-main">
									<h5 class="entry-title">
										<a href="#">utena佑天兰 玫瑰精华玻尿酸黄金果冻面膜</a>
									</h5>
									<div class="entry-price">
										<strong class="price">¥149/盒（3片）</strong>
									</div>
									<div class="entry-links clearfix">

										<a href="#" class="pull-right">+ 加入购物车</a>
									</div>
								</div>
							</div>

							<div class="product" data-product-id="3">
								<div class="entry-media">
									<img data-src="images/zhuye/basic/3.jpg" alt=""
										class="lazyOwl thumb" />
									<div class="hover">
										<a href="product.jsp" class="entry-url"></a>
										<ul class="icons unstyled">
											<li>
												<div class="circle ribbon ribbon-new">新品</div>
											</li>
											<li><a href="images/zhuye/basic/3c.jpg" class="circle"
												data-toggle="lightbox"><i class="iconfont-search"></i></a></li>
											<li><a href="#" class="circle add-to-cart"><i
													class="iconfont-shopping-cart"></i></a></li>
										</ul>
									</div>
								</div>
								<div class="entry-main">
									<h5 class="entry-title">
										<a href="#">ATREUS 泰国VC亮白保湿爽肤水 500ml 新版</a>
									</h5>
									<div class="entry-price">
										<strong class="price">¥72/瓶</strong>
									</div>
									<div class="entry-links clearfix">

										<a href="#" class="pull-right">+ 加入购物车</a>
									</div>
								</div>
							</div>

							<div class="product" data-product-id="4">
								<div class="entry-media">
									<img data-src="images/zhuye/basic/4.jpg" alt=""
										class="lazyOwl thumb" />
									<div class="hover">
										<a href="product.jsp" class="entry-url"></a>
										<ul class="icons unstyled">
											<li><a href="images/zhuye/basic/4c.jpg" class="circle"
												data-toggle="lightbox"><i class="iconfont-search"></i></a></li>
											<li><a href="#" class="circle add-to-cart"><i
													class="iconfont-shopping-cart"></i></a></li>
										</ul>
									</div>
								</div>
								<div class="entry-main">
									<h5 class="entry-title">
										<a href="#">Rohto 乐敦CC美白祛痘印祛斑保湿面膜</a>
									</h5>
									<div class="entry-price">
										<strong class="price">¥69/20片</strong>
									</div>
									<div class="entry-links clearfix">

										<a href="#" class="pull-right">+ 加入购物车</a>
									</div>
								</div>
							</div>

							<div class="product" data-product-id="5">
								<div class="entry-media">
									<img data-src="images/zhuye/basic/5.jpg" alt=""
										class="lazyOwl thumb" />
									<div class="hover">
										<a href="product.jsp" class="entry-url"></a>
										<ul class="icons unstyled">
											<li>
												<div class="circle ribbon ribbon-sale">特卖</div>
											</li>
											<li><a href="images/zhuye/basic/5c.jpg" class="circle"
												data-toggle="lightbox"><i class="iconfont-search"></i></a></li>
											<li><a href="#" class="circle add-to-cart"><i
													class="iconfont-shopping-cart"></i></a></li>
										</ul>
									</div>
								</div>
								<div class="entry-main">
									<h5 class="entry-title">
										<a href="#">得鲜 the saem 完美底妆防晒遮瑕液 1.5号 6.5g</a>
									</h5>
									<div class="entry-price">
										<s class="entry-discount">26</s> <strong
											class="accent-color price">¥23</strong>
									</div>
									<div class="entry-links clearfix">

										<a href="#" class="pull-right">+ 加入购物车</a>
									</div>
								</div>
							</div>

							<div class="product" data-product-id="6">
								<div class="entry-media">
									<img data-src="images/zhuye/basic/6.jpg" alt=""
										class="lazyOwl thumb" />
									<div class="hover">
										<a href="product.jsp" class="entry-url"></a>
										<ul class="icons unstyled">
											<li><a href="images/zhuye/basic/6c.jpg" class="circle"
												data-toggle="lightbox"><i class="iconfont-search"></i></a></li>
											<li><a href="#" class="circle add-to-cart"><i
													class="iconfont-shopping-cart"></i></a></li>
										</ul>
									</div>
								</div>
								<div class="entry-main">
									<h5 class="entry-title">
										<a href="#">伊诗兰顿 去黑眼圈眼袋抹茶细致眼膜贴</a>
									</h5>
									<div class="entry-price">
										<strong class="price">¥56/60片</strong>
									</div>
									<div class="entry-links clearfix">

										<a href="#" class="pull-right">+ 加入购物车</a>
									</div>
								</div>
							</div>

							<div class="product" data-product-id="7">
								<div class="entry-media">
									<img data-src="images/zhuye/basic/7.jpg" alt=""
										class="lazyOwl thumb" />
									<div class="hover">
										<a href="product.jsp" class="entry-url"></a>
										<ul class="icons unstyled">
											<li>
												<div class="circle ribbon ribbon-new">新品</div>
											</li>
											<li><a href="images/zhuye/basic/7c.jpg" class="circle"
												data-toggle="lightbox"><i class="iconfont-search"></i></a></li>
											<li><a href="#" class="circle add-to-cart"><i
													class="iconfont-shopping-cart"></i></a></li>
										</ul>
									</div>
								</div>
								<div class="entry-main">
									<h5 class="entry-title">
										<a href="#">【抖音同款】UH防晒喷雾水光润珠隔离美白素颜防晒喷雾 150ml</a>
									</h5>
									<div class="entry-price">
										<strong class="price">¥138</strong>
									</div>
									<div class="entry-links clearfix">

										<a href="#" class="pull-right">+ 加入购物车</a>
									</div>
								</div>
							</div>

							<div class="product" data-product-id="8">
								<div class="entry-media">
									<img data-src="images/zhuye/basic/8.jpg" alt=""
										class="lazyOwl thumb" />
									<div class="hover">
										<a href="product.jsp" class="entry-url"></a>
										<ul class="icons unstyled">
											<li><a href="images/zhuye/basic/8c.jpg" class="circle"
												data-toggle="lightbox"><i class="iconfont-search"></i></a></li>
											<li><a href="#" class="circle add-to-cart"><i
													class="iconfont-shopping-cart"></i></a></li>
										</ul>
									</div>
								</div>
								<div class="entry-main">
									<h5 class="entry-title">
										<a href="#">M.A.C渐变人鱼姬 人鱼妖姬眼影粉#ROSE 2.5g</a>
									</h5>
									<div class="entry-price">
										<strong class="price">¥98</strong>
									</div>
									<div class="entry-links clearfix">

										<a href="#" class="pull-right">+ 加入购物车</a>
									</div>
								</div>
							</div>

						</div>

					</div>
					<!-- // END CAROUSEL -->

				</div>
			</div>
		</section>
		<!-- // FEATURED PRODUCTS --> <!-- NEW ARRIVAL PRODUCTS -->
		<section class="section new-arrivals visible-items-5">
			<div class="container">
				<div class="row">
					<header class="section-header clearfix col-sm-offset-3 col-sm-6">
						<h3 class="section-title">热门笔记</h3>

					</header>

					<div class="clearfix"></div>

					<!-- BEGIN CAROUSEL -->
					<div id="new-arrivals-products" class="add-cart"
						data-product=".product" data-thumbnail=".entry-media .thumb"
						data-title=".entry-title > a" data-url=".entry-title > a"
						data-price=".entry-price > .price">

						<div class="owl-controls clickable outside">
							<div class="owl-buttons">
								<div class="owl-prev">
									<i class="iconfont-angle-left"></i>
								</div>
								<div class="owl-next">
									<i class="iconfont-angle-right"></i>
								</div>
							</div>
						</div>

						<div class="owl-carousel owl-theme" data-visible-items="5"
							data-navigation="true" data-lazyload="true">
							<div class="product" data-product-id="9">
								<div class="entry-media">
									<img data-src="images/zhuye/basic/9.jpg" alt=""
										class="lazyOwl thumb" alt="" />

								</div>
								<div class="entry-main">
									<h5 class="entry-title">holika懒蛋蛋眼影</h5>
									<div class="entry-price">
										<a href="products.jsp" class="btn btn-primary uppercase">赞</a>
									</div>
								</div>
							</div>

							<div class="product" data-product-id="10">
								<div class="entry-media">
									<img data-src="images/zhuye/basic/10.jpg" alt=""
										class="lazyOwl thumb" />
									<div class="hover">
										<a href="product.jsp" class="entry-url"></a>
									</div>
								</div>
								<div class="entry-main">
									<h5 class="entry-title">
										<a href="#">大米面膜 日本COSME</a>
									</h5>
									<div class="entry-price">
										<a href="products.jsp" class="btn btn-primary uppercase">赞</a>
									</div>
								</div>
							</div>

							<div class="product" data-product-id="11">
								<div class="entry-media">
									<img data-src="images/zhuye/basic/11.jpg" alt=""
										class="lazyOwl thumb" />
									<div class="hover">
										<a href="product.jsp" class="entry-url"></a>

									</div>
								</div>
								<div class="entry-main">
									<h5 class="entry-title">
										<a href="#">sk2前男友面膜</a>
									</h5>
									<div class="entry-price">
										<a href="products.jsp" class="btn btn-primary uppercase">赞</a>
									</div>
								</div>
							</div>

							<div class="product" data-product-id="12">
								<div class="entry-media">
									<img data-src="images/zhuye/basic/12.jpg" alt=""
										class="lazyOwl thumb" />
									<div class="hover">
										<a href="product.jsp" class="entry-url"></a>
									</div>
								</div>
								<div class="entry-main">
									<h5 class="entry-title">
										<a href="#">日本milbon前男友发膜</a>
									</h5>
									<div class="entry-price">
										<a href="products.jsp" class="btn btn-primary uppercase">赞</a>
									</div>
								</div>
							</div>

							<div class="product" data-product-id="13">
								<div class="entry-media">
									<img data-src="images/zhuye/basic/13.jpg" alt=""
										class="lazyOwl thumb" />
									<div class="hover">
										<a href="product.jsp" class="entry-url"></a>
									</div>
								</div>
								<div class="entry-main">
									<h5 class="entry-title">
										<a href="#">ALBION/奥尔滨健康水</a>
									</h5>
									<div class="entry-price">
										<a href="products.jsp" class="btn btn-primary uppercase">赞</a>
									</div>
								</div>
							</div>

							<div class="product" data-product-id="14">
								<div class="entry-media">
									<img data-src="images/zhuye/basic/14.jpg" alt=""
										class="lazyOwl thumb" />
									<div class="hover">
										<a href="product.jsp" class="entry-url"></a>

									</div>
								</div>
								<div class="entry-main">
									<h5 class="entry-title">
										<a href="#">ysl黑管416</a>
									</h5>
									<div class="entry-price">
										<a href="products.jsp" class="btn btn-primary uppercase">赞</a>
									</div>
								</div>
							</div>

							<div class="product" data-product-id="15">
								<div class="entry-media">
									<img data-src="images/zhuye/basic/15.jpg" alt=""
										class="lazyOwl thumb" />
									<div class="hover">
										<a href="product.jsp" class="entry-url"></a>
									</div>
								</div>
								<div class="entry-main">
									<h5 class="entry-title">
										<a href="#">HEDONE金沙流光玖色眼影盘</a>
									</h5>
									<div class="entry-price">
										<a href="products.jsp" class="btn btn-primary uppercase">赞</a>
									</div>
								</div>
							</div>

							<div class="product" data-product-id="16">
								<div class="entry-media">
									<img data-src="images/zhuye/basic/16.jpg" alt=""
										class="lazyOwl thumb" />
									<div class="hover">
										<a href="product.jsp" class="entry-url"></a>
									</div>
								</div>
								<div class="entry-main">
									<h5 class="entry-title">
										<a href="#">NYX修容盘</a>
									</h5>
									<div class="entry-price">
										<a href="products.jsp" class="btn btn-primary uppercase">赞</a>
									</div>
								</div>
							</div>
						</div>

					</div>
					<!-- // END CAROUSEL -->

				</div>
			</div>
		</section>
		<!-- // NEW ARRIVAL PRODUCTS --> </main>
		<!-- // SITE MAIN CONTENT -->

		<!-- SITE FOOTER -->
		<footer class="page-footer">

			<!-- WIDGET AREA -->
			<div class="widgets">



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
												<div class="list-content">陕西省咸阳市杨凌区李台镇西北农林科技大学北校区西区信息学院机房二层中</div>
											</li>
											<li><span class="list-icon"><i
													class="round-icon iconfont-phone"></i></span>
												<div class="list-content">(+86)1000000</div></li>
											<li><span class="list-icon"><i
													class="round-icon iconfont-envelope-alt"></i></span>
												<div class="list-content">weizhuang@163.com</div></li>
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
							<div class="footer-links center-xs clearfix">
								<ul class="unstyled">
									<li><a href="#">Site Map</a></li>
									<li><a href="#">FAQ</a></li>
									<li><a href="#">Work for us</a></li>
									<li><a href="#">Contact Us</a></li>
								</ul>
							</div>
							<div class="space10"></div>
							<div class="copyright center-xs">
								<p>
									© 2013 More Templates <a href="http://www.cssmoban.com/"
										target="_blank" title="模板之家">微状科技</a> - Collect from <a
										href="http://www.cssmoban.com/" title="网页模板" target="_blank">微状科技有限公司</a>.
									All Rights Reserved.
								</p>
							</div>
						</div>

						<div class="space40 visible-xs"></div>

						<div class="col-xs-12 col-sm-6 center-xs">
							<div class="pull-right"></div>
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
	<!-- 压缩jquery文件 -->
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
	<script src="js/owl.carousel.js"></script>
	<!-- 轮播图插件 -->
	<script src="js/jquery.flexslider-min.js"></script>
	<!-- jquery滑动切换插件 -->
	<!-- // Particular Page Javascripts -->


</body>
</html>