<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
	String path = request.getContextPath();
	// 获得项目完全路径（假设你的项目叫MyApp，那么获得到的地址就是http://localhost:8080/MyApp/）: 
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href=" <%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录界面</title>
<meta charset="UTF-8" />
<title>用户登录|微妆</title>
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
<link rel="stylesheet" href="css/owl.carousel.css">
<link rel="stylesheet" href="css/owl.theme.css">
<link href="css/flexslider.css" rel="stylesheet" />
<!-- // PARTICULAR PAGES CSS FILES -->
<link rel="stylesheet" href="css/responsive.css">
</head>
<body class="home">

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
							<i class="iconfont-headphones round-icon"></i> <strong>+86（100）0000</strong>
							<span>(周一 ~ 周五: 09.00 - 21.00)</span>
						</div>
						<!-- // CONTACT INFO -->
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
						<nav id="tiny-menu" class="clearfix">
						<ul class="user-menu">
							<li><a href="register.jsp">注册</a></li>
						</ul>
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
						<li><a href="index.jsp">首页</a></li>

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



		<div style="margin: 100px">




			<div style="width: 400px; float: right;">
				<h3>已注册用户：</h3>
				<h4>如果您已有微妆账户，请登录</h4>
				<form action="user/login.do" method="post">
					<div style="margin-bottom: 20px">
						<span>电子邮件：</span> <input type="text" name="email">
					</div>
					<div style="margin-bottom: 20px">
						<span>密&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp码：</span> <input
							type="password" name="password">
					</div>
					<input type="submit" value="登录" class="btn btn-primary uppercase">
				</form>
			</div>


			<div style="width: 400px; margin-left: 300px">
				<h3>新用户：</h3>
				<h2>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp通过创建一个账号，您将能够及时分享到身边人的美妆咨询，同时还能拥有更便捷、更安全的购物体验。</h2>
				<a class="acount-btn" href="register.html">加入美妆</a>
			</div>

		</div>

		<div style="width: 100%; position: absolute; bottom: 0px">
			<p
				style="font-size: 1em; color: #444444; text-align: center; margin: 5em 0 3em;">
				Copyright &copy; 2015.Company name All rights reserved.More
				Templates <a href="http://www.cssmoban.com/" target="_blank"
					title="微妆科技">微妆有限责任公司</a> - Collect from <a
					href="http://www.cssmoban.com/" title="网页模板" target="_blank">微妆科技</a>
			</p>
		</div>


	</div>



</body>
</html>