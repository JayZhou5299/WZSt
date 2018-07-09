<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户个人主页</title>
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
<!-- PARTICULAR PAGES CSS FILES -->
<link rel="stylesheet" href="css/jquery.nouislider.css">
<link rel="stylesheet" href="css/owl.carousel.css">
<link rel="stylesheet" href="css/owl.theme.css">
<link rel="stylesheet" href="css/innerpage.css">
<!-- // PARTICULAR PAGES CSS FILES -->
<link rel="stylesheet" href="css/responsive.css">
</head>
<body class="product-single">

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
							<li><a href="cart.jsp" id="total-cart"> <i
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
		<!-- // HEADER TOP --> <!-- MAIN HEADER -->
		<div class="main-header-wrapper">
			<div class="container">
				<div class="main-header">
					<!-- CURRENCY / LANGUAGE / USER MENU -->
					<div class="actions">
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
		<!-- // SITE HEADER -->
		<div class="product">
			<div class="container">
				<div class="container">

					<div class="col-md-4 footer-top">
						<h3>个人信息</h3>
						<div class="indo">
							<ul class="social-footer ">
								<li><span>姓名:${User.user_name}</span></li>
								<br />
								<li><span>性别:${User.user_sex}</span></li>
								<br />
								<li><span>电话:${User.user_tel}</span></li>
								<br />
								<li><a href="mailto:info@example.com">邮箱地址:${User.user_email}</a></li>
								<br />
								<li><span>账户余额:${User.user_balance}</span></li>
								<br />
								<li><span>所剩积分:${User.user_integ}</span></li>
								<br />
								<li><span>默认收货地址:${Defaultaddress}</span></li>
								<br />
							</ul>
							<a href="updateuser.jsp"><button type="button" class="btn btn-default btn-xs">修改信息</button></a>
						</div>
					</div>
					<div class="col-md-4 footer-middle">
						<h3>
							已发布的笔记&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<button type="button" class="btn btn-default btn-xs">更多>></button>
							<!-- <a href="#" class="btn btn-default btn-lg disabled" role="button">更多>></a>-->

						</h3>
						<div class="product-go">
							<div class="grid-product">
								<h6>
									<a href="#">goodsName</a>
								</h6>
								<div class="rating">
									<span>☆</span> <span>☆</span> <span>☆</span> <span>☆</span> <span>☆</span>
								</div>
								<span class=" price-in"><small>￥#</small>￥# </span>
							</div>
							<div class="fashion">
								<a href="#"><img class="img-responsive " src="images/f1.jpg"
									alt="">
									<p>TOP</p></a>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="product-go">
							<div class="grid-product">
								<h6>
									<a href="#">goodsName</a>
								</h6>
								<div class="rating">
									<span>☆</span> <span>☆</span> <span>☆</span> <span>☆</span> <span>☆</span>
								</div>
								<span class=" price-in"><small>￥#</small> ￥#</span>
							</div>
							<div class="fashion">
								<a href="#"><img class="img-responsive " src="images/f2.jpg"
									alt="">
									<p class="new1">NEW</p></a>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="product-go">
							<div class="grid-product">
								<h6>
									<a href="#">goodsName</a>
								</h6>
								<div class="rating">
									<span>☆</span> <span>☆</span> <span>☆</span> <span>☆</span> <span>☆</span>
								</div>
								<span class=" price-in"><small>￥#</small> ￥#</span>
							</div>
							<div class="fashion">
								<a href="#"><img class="img-responsive " src="images/f3.jpg"
									alt="">
									<p class="new1">NEW</p></a>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
					<div class="col-md-4 footer-bottom">
						<h3>编辑笔记</h3>
						
						<form action="notes/add.do" method="post"  enctype="multipart/form-data">
							<div class="form-group">
								<label for="exampleInputEmail1">笔记名称</label> <input type="text"
									class="form-control" name="note_name" placeholder="Notes Name">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">笔记描述</label>
								<textarea name="note_des" class="form-control" rows="3"
									placeholder="Notes Description"></textarea>
							</div>
							<div class="form-group">
								<label for="exampleInputFile">上传图片</label> <input type="file"
									name="note_pic">
									
								<p class="help-block">上传所发布的笔记图片</p>
							</div>
							<div class="checkbox">
								<br>
								<button type="submit" class="btn btn-default btn-xs">发布笔记</button>
							</div>
						</form>
					</div>
					<div class="clearfix"></div>
				</div>

			</div>

			<!---->

		</div>
		<!-- // SITE MAIN CONTENT -->

		<!-- SITE FOOTER -->
		<footer class="page-footer"> <!-- WIDGET AREA -->
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
										<div class="list-content">(+86) 1000000</div></li>
									<li><span class="list-icon"><i
											class="round-icon iconfont-envelope-alt"></i></span>
										<div class="list-content">weizhuanh@163.com</div></li>
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
							</ul>
						</div>
						<div class="space10"></div>
						<div class="copyright center-xs">
							<p>
								© 2018 More Templates <a
									href="localhost:8007/WZ_Store/index.jsp" target="_blank"
									title="微妆科技">微妆科技</a> - Collect from <a
									href="localhost:8007/WZ_Store/index.jsp" title="微妆科技"
									target="_blank">微妆科技有限公司</a>. All Rights Reserved.
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
	<script src="js/owl.carousel.js"></script>
	<script src="js/products.js"></script>
	<!-- // Particular Page Javascripts -->

	<!-- Disqus -->
	<script type="text/javascript">
		/* * * CONFIGURATION VARIABLES: EDIT BEFORE PASTING INTO YOUR WEBPAGE * * */
		var disqus_shortname = 'gfashion'; // required: replace example with your forum shortname

		/* * * DON'T EDIT BELOW THIS LINE * * */
		(function() {
			var dsq = document.createElement('script');
			dsq.async = true;
			dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
			(document.getElementsByTagName('head')[0] || document
					.getElementsByTagName('body')[0]).appendChild(dsq);
		})();
	</script>
	<!-- // Disqus -->

</body>
</html>