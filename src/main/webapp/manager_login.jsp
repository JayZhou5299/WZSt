<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<title>管理员登录界面</title>
<meta charset="UTF-8" />
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
					</div>
					<div class="logo-wrapper">
						 <img
							src="img/logo.png"
							alt="微妆" />
						</a>
					</div>
				</div>
			</div>
		</div>
 </header>
			<div style="text-align:center;width:100%;">
				<br><br><br><br><h1>管  理  员  登  录</h1><br><br>
				<form action="manager/login.do">
					<div style="margin-bottom: 40px">
						<span>登录名：</span>
						<input type="text" name="man_loginname" style="width:400px">
					</div>
					<div style="margin-bottom: 40px">
						<span>密&nbsp&nbsp&nbsp&nbsp码：</span>
						 <input type="password" name="man_pwd" style="width:400px">
					</div>
					<div style="margin-bottom:40px">
					<label>
				    <input type="radio" name="range"  value="总经理">
				    总经理
				  </label>
				  &nbsp;&nbsp;&nbsp;&nbsp;
				  <label>
				    <input type="radio" name="range"  value="商品经理">
				    商品经理
				  </label>
				   &nbsp;&nbsp;&nbsp;&nbsp;
				  <label>
				    <input type="radio" name="range"  value="笔记经理">
				    笔记经理
				  </label>
				  </div>
					<input type="submit" value="登录" class="btn btn-primary uppercase">
				</form>
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
</body>
</html>