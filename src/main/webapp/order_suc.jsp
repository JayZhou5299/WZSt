<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
	String path = request.getContextPath();
	// 获得项目完全路径（假设你的项目叫MyApp，那么获得到的地址就是http://localhost:8080/MyApp/）: 
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC>
<html>
<head>
<base href=" <%=basePath%>">
<meta charset="UTF-8" />
<title>订单成功</title>
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
<!-- // PARTICULAR PAGES CSS FILES -->
<link rel="stylesheet" href="css/responsive.css">
<style type="text/css">
.tit {
	font-family: "微软雅黑";
	color: white;
	font-size:
}

#text {
	/*text-align: center;*/
	color: #CC0033;
	font-family: "方正姚体";
	font-size: 1.5em;
}

.top {
	width: 1000px;
	border: none;
	margin: 0px;
	padding: none;
	overflow: hidden;
	zoom: 1;
	height: 100px;
	margin-left: 40%;
}

.center {
	margin-top: 20px;
	width: 1000px;
	border: none;
	margin: none;
	padding: none;
	height: 120px;
	margin-left: 40%;
}

.bottom {
	border: none;
	margin: none;
	padding: none;
	height: 60px;
	margin-left: 40%;
}

#cart {
	position: relative;
	float: right;
}
</style>
</head>
<body>

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
									（100）0000</strong> <span>(Mon- Fri: 09.00 - 21.00)</span>
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
												<label for="input-search" class="placeholder"></label> <input
													type="text" name="q" id="input-search"
													class="round-input full-width" required />
											</div>
										</form>
									</div> <!-- // SEARCH BOX -->
								</li>
								<li data-toggle="sub-header" data-target="#sub-social">
									<!-- // SOCIAL ICONS -->
								</li>
								<li data-toggle="sub-header" data-target="#sub-cart">
									<!-- SHOPPING CART --> <a href="javascript:void(0);"
									id="total-cart"> <i
										class="iconfont-shopping-cart round-icon"></i>
								</a>

									<div id="sub-cart" class="sub-header">
										<div class="cart-header">
											<span>你的购物车目前为空</span> <small><a href="cart.html">(See
													All)</a></small>
										</div>
										<ul class="cart-items product-medialist unstyled clearfix"></ul>
										<div class="cart-footer">
											<div class="cart-total clearfix">
												<span class="pull-left uppercase">总价</span> <span
													class="pull-right total">$ 0</span>
											</div>
											<div class="text-right">
												<a href="cart.html"
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
			<!-- // HEADER TOP -->
			<!-- MAIN HEADER -->
			<div class="main-header-wrapper">
				<div class="container">
					<div class="main-header">
						<!-- CURRENCY / LANGUAGE / USER MENU -->
						<div class="actions">
							<div class="clearfix"></div>
							<!-- USER RELATED MENU -->
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
										<li><a href="register.jsp">注册</a></li>
									</ul>
								</c:if>
							</nav>
							<!-- // USER RELATED MENU -->
						</div>
						<!-- // CURRENCY / LANGUAGE / USER MENU -->
						<!-- SITE LOGO -->
						<div class="logo-wrapper">
							<a href="index-2.html" class="logo"
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
								<li><a href="products.jsp">商城</a></li>
								<li><a href="note.jsp">笔记</a></li>
								<li><a href="userInfo.jsp">我的</a></li>
							</ul>

						</nav>
						<!-- // SITE NAVIGATION MENU -->
					</div>
				</div>
			</div>
			<!-- // MAIN HEADER -->
		</header>
		<!-- // SITE HEADER -->

		<!-- SITE MAIN CONTENT -->
		<main id="main-content" role="main">

		<div class="container">
			<div class="row">

				<div class="m-t-b clearfix">
					<!-- SIDEBAR -->

					<!-- // SIDEBAR -->

					<div class="clearfix"></div>
				</div>
			</div>
		</div>

		<div class="clearfix"></div>
		<!---->
	</div>

	<div class="clearfix"></div>
	<!---->
	<!---->
	<div class="back"></div>
	<!---->
	<div class="container">
		<form target="_blank" action="user/zhifu.do" id="pay-form" method="post">
			<input type="hidden" name = "price"  value="${CosOrder.order_price}">
			<div class="box_4">
				<div class="top">
					<p id="text">您的订单已提交成功！</p>
				</div>
				<div class="center">

					<p id="text">订单号：${CosOrder.order_deliv}</p>
					<p id="text">
						订单金额：<span class="pay-total">${CosOrder.order_price}</span>
					</p>
					<p id="text">
						积分抵扣：<span class="pay-total">${CosOrder.order_cut}</span>
					</p>
					<p id="text">
						应付金额：<span class="pay-total">${CosOrder.order_price - CosOrder.order_cut}</span>
					</p>
					<p id="text">
						账户余额：<span class="pay-total">${balance}</span>
					</p>
					<p id="text">
						配送：潘骏杰<span class="line">/</span><span class="line">/</span>江苏,无锡市,北塘区
						民丰西苑82号202室<span class="line"></span>
					</p>
				</div>

				<br>
				<br>
				<br>
				<br>
				<br>
				<br>

				
				
				


				<div class="bottom">
					<br> <a href="" class="btn btn-primary btn-round uppercase">支付</a>&nbsp;&nbsp;&nbsp;
					<a href="Order.jsp" class="btn btn-default btn-round uppercase">返回</a><br>
				</div>
				<div class="clearfix"></div>
			</div>
		</form>
	</div>
	</main>
	<!-- // SITE MAIN CONTENT -->

	<!-- SITE FOOTER -->
	<footer class="page-footer">

		<!-- WIDGET AREA -->
		<div class="widgets">

			<!-- FIRST ROW -->
			<div class="section">
				<div class="container">
					<div class="row">

						<div class="space40 visible-sm clearfix"></div>

					</div>
				</div>
			</div>
			<!-- // FIRST ROW -->

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
											<div class="list-content">陕西省杨凌区西北农林科技大学北校区信息工程学院</div></li>
										<li><span class="list-icon"><i
												class="round-icon iconfont-phone"></i></span>
											<div class="list-content">+86 （100）0000</div></li>
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

						<div class="col-xs-12 col-sm-12 col-md-3"></div>

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
						<div class="space10"></div>
						<div class="copyright center-xs">
							<p>
								© 2013 More Templates <a href="home.html" target="_blank"
									title="微妆科技">微妆科技</a> - Collect from <a href="home.html"
									title="微妆科技有限公司" target="_blank">微妆科技有限公司</a>. All Rights
								Reserved.
							</p>
						</div>
					</div>

					<div class="space40 visible-xs"></div>
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
	<!-- // Particular Page Javascripts -->

</body>
</html>




