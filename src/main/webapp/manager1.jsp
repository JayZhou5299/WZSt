<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	// 获得项目完全路径（假设你的项目叫MyApp，那么获得到的地址就是http://localhost:8080/MyApp/）: 
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC>
<html class="noIE" lang="en-US">
<head>
<base href=" <%=basePath%>">
<meta charset="UTF-8" />
<title>微妆笔记</title>
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
<link rel="stylesheet" href="css/jquery.nouislider.css">
<link rel="stylesheet" href="css/isotope.css">
<link rel="stylesheet" href="css/innerpage.css">
<!-- // PARTICULAR PAGES CSS FILES -->
<link rel="stylesheet" href="css/responsive.css">
<title>笔记展示</title>
</head>
<body class="products-view">

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
									(100) 1000</strong> <span>(周一- 周五: 09.00 - 21.00)</span>
							</div>
							<!-- // CONTACT INFO -->
						</div>

					</div>
				</div>
			</div>
			<!-- // HEADER TOP -->
			<!-- MAIN HEADER -->
			<div class="main-header-wrapper">
				<div class="container">
					<div class="main-header">
						<!-- CURRENCY / LANGUAGE / USER MENU -->
						<div class="actions">
							<div class="center-xs"></div>
							<div class="clearfix"></div>
							<!-- USER RELATED MENU -->

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
								<li><a href="manager_login.jsp">管理员登录</a></li>
								<li><a href="manager1.jsp">总经理</a></li>
								<li><a href="manager2.jsp">笔记经理</a></li>
								<li><a href="manager3.jsp">商品经理</a></li>
							</ul>



						</nav>
						<!-- // SITE NAVIGATION MENU -->
					</div>
				</div>
			</div>
			<!-- // MAIN HEADER -->
		</header>
		<!-- // SITE HEADER -->

		<!-- BREADCRUMB -->
		<div class="breadcrumb-container">
			<div class="container">
				<div class="relative">
					<ul class="bc push-up unstyled clearfix">
						<li><a href="index.jsp">管理员登录</a></li>
						<li class="active">总经理</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- // BREADCRUMB -->

		<!-- SITE MAIN CONTENT -->
		<main id="main-content" role="main">
		<div class="container">
			<div class="row">

				<div class="m-t-b clearfix">
					<!-- SIDEBAR -->
					<aside class="col-xs-12 col-sm-4 col-md-3">
						<section class="sidebar push-up">

							<!-- CATEGORIES -->
							<section class="side-section bg-white">
								<header class="side-section-header">
									<h3 class="side-section-title">总经理</h3>
								</header>
								<div class="side-section-content">
									<h3></h3>
									<form action="manager/exit.do" method="post">
										<div class="form-group">
											<label for="exampleInputEmail1">
												<h4>尊敬的：<br/>
												&nbsp;&nbsp;&nbsp;
												${sessionScope.manager.man_name}
												&nbsp;&nbsp;&nbsp;
												${manager.man_range}<br/>
												您好!
												</h4>
											</label>
										</div>
										<div class="form-group">
											<label for="exampleInputPassword1">
												<h4>您的登录名为:<br/>
												&nbsp;&nbsp;&nbsp;${manager.man_loginname}</h4>
											</label>
										</div>
										<div class="form-group">
											<label for="exampleInputPassword1">
												<h4>您的ID为:<br/>
												&nbsp;&nbsp;&nbsp;${sessionScope.manager.man_id}</h4>
											</label>
										</div>
									
										<div class="checkbox">
											<button type="submit" class="btn btn-default btn-xs">退出</button>
										</div>

									</form>
								</div>
								<footer class="side-section-footer text-center hide">
									<button type="button" id="btn-filter-cat"
										class="btn btn-primary btn-round uppercase">Clear
										Filters</button>
								</footer>
							</section>
							<!-- // CATEGORIES -->
							<section class="side-section bg-white"></section>
					</aside>

					<div style="overflow-y:auto; overflow-x:auto;width: 800px; height: 800px; margin-left: 350px;">

						<div style="overflow:auto; width: 400px; height: 800px; float: left">
							<form action="#" method="get">
								<header class="side-section-header">
									<h3 class="side-section-title">笔记经理</h3>
								</header>

								<div class="form-group">
									<table border="1">
										<tr colspan="3">
											<td>姓名
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
												
											<td>用户id
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
											<td>登录名</td>
										</tr>
										<c:forEach items="${NotesManager}" var="notes">
											<tr>
												<td>${notes.man_name}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
												<td>${notes.man_id}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
												<td>${notes.man_loginname}</td>
											</tr>
										</c:forEach>

									</table>
								
								</div>

								<div class="checkbox">
									<br>
									<button type="button" class="btn btn-default btn-xs">添加</button>
								</div>

							</form>
						</div>




						<div
							style="overflow-y:auto; overflow-x:auto;width: 400px; height: 800px; margin-left: 400px; position: relative">
							<header class="side-section-header">
								<h3 class="side-section-title">商品经理</h3>
							</header>

							<div class="form-group">
								<table border="1">
									<tr colspan="3">
										<td>姓名
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
												
										<td>用户id
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
										<td>登录名</td>
									</tr>
									<c:forEach items="${GoodsManager}" var="goods">
										<tr>
											<td>${goods.man_name}</td>
											<td>${goods.man_id}</td>
											<td>${goods.man_loginname}</td>
										</tr>
									</c:forEach>

								</table>
								<div class="checkbox">
									<br>
									<button type="button" class="btn btn-default btn-xs">添加</button>
								</div>
							</div>
						</div>

					</div>


				</div>
			</div>
		</div>
		</main>
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
												<div class="list-content">陕西省咸阳市杨凌区李台镇西北农林科技大学北校区西区信息学院机房二层中
												</div></li>
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
							<div class="footer-links center-xs clearfix"></div>
							<div class="space10">

								<div class="copyright center-xs">
									<p>
										© 2013 More Templates <a href="http://www.cssmoban.com/"
											target="_blank" title="模板之家">微状科技</a> - Collect from <a
											href="http://www.cssmoban.com/" title="网页模板" target="_blank">微状科技有限公司</a>.
										All Rights Reserved.
									</p>
								</div>
							</div>

							<div class="copyright center-xs"></div>
						</div>

						<div class="space40 visible-xs"></div>

						<div class="col-xs-12 col-sm-6 center-xs">
							<div class="pull-right">
								<div class="vmid"></div>
							</div>
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
	<script src="js/jquery.nouislider.js"></script>
	<script src="js/jquery.isotope.min.js"></script>
	<script src="js/products.js"></script>

</body>
</html>