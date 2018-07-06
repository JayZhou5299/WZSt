<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	int newPage=1;
	session.setAttribute("newPage", newPage);

%>
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
<style>
	.showthis{
		overflow:scroll !important;
		overflow-x:visible !important;
		overflow-y:visible !important;
		height:auto !important;
	}
</style>
</head>
<body class="products-view">

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
							<li data-toggle="sub-header" data-target="#sub-social">
								<!-- SOCIAL ICONS -->


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
										<span>你的购物车目前为空.</span> <small><a href="cart.html">(查看全部)</a></small>
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
		<!-- // HEADER TOP --> <!-- MAIN HEADER -->
		<div class="main-header-wrapper">
			<div class="container">
				<div class="main-header">
					<!-- CURRENCY / LANGUAGE / USER MENU -->
					<div class="actions">
						<div class="center-xs"></div>
					</div>
					<!-- SITE LOGO -->
					<div class="logo-wrapper">
						<a href="index.jsp" class="logo"
							title="GFashion - Responsive e-commerce HTML Template"> <img
							src="img/logo.png"
							alt="GFashion - Responsive e-commerce HTML Template" />
						</a>
					</div>
				</div>
			</div>
		</div>
		<!-- // MAIN HEADER --> </header>
		<!-- // SITE HEADER -->

		<!-- BREADCRUMB -->
		<div class="breadcrumb-container">
			<div class="container">
				<div class="relative">
					<ul class="bc push-up unstyled clearfix">
						<li><a href="index.jsp">主页</a></li>
						<li class="active">笔记经理</li>
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
					<aside class="col-xs-12 col-sm-4 col-md-3"> <section
						class="sidebar push-up"> <!-- CATEGORIES --> <section
						class="side-section bg-white"> 
						
						<header
						class="side-section-header">
					<h3 class="side-section-title">笔记经理</h3>
					</header>
					
					<div class="side-section-content">
						<h3></h3>
						<form action="#" method="get">
						
						<div class="form-group">
    						<label for="exampleInputEmail1"><h4>尊敬的${sessionScope.manager.man_name} ${sessionScope.manager.man_range}</br>您好</h4></label>		
  						</div>
  						
  						<div class="form-group">
    						<label for="exampleInputPassword1"><h4>您的登录名为</br>${sessionScope.manager.man_loginname}</h4></label>
  						</div>
  						
  						<div class="form-group">
    						<label for="exampleInputPassword1"><h4>您的id为</br>${sessionScope.manager.man_id}</h4></label>
  						</div>
  						
  						
  						<div class="checkbox">
  							<br>
  							<button type="submit" class="btn btn-default btn-xs">退出</button>
  						</div>
							 
					</form>
					</div>
					<footer class="side-section-footer text-center hide">
					<button type="button" id="btn-filter-cat"
						class="btn btn-primary btn-round uppercase">Clear Filters</button>
					</footer> </section> <!-- // CATEGORIES --> <section class="side-section bg-white">
					</section> <!-- BEST SELLERS --> <section class="side-section bg-white">
					 </aside>
					<div style="width:1000px;height:800px;margin-left:320px;">
				
				    <div style="overflow-y:auto; overflow-x:auto; width:400px;height:580px;float:left">
						  
						  <c:forEach items="${Notes}" var="note" >
						  <input type="hidden" value="${note.note_id}" id="idHere">
						  <ul style="position: relative;border-bottom:1px dotted black;height：30px">	
						  <li>发布者Id：${note.user_id}</li>
						  <li>笔记名称：${note.note_name}
							
						  <input style="position: absolute; left:270px; top: 15px;" type="button" 
						  onclick="getNote(this)" name="${note.note_id}" value="查看">
						  </li>
						  <li>笔记热度：${note.note_hot}</li>
						  <br/>
						  </ul>
						  <br/>
                          </c:forEach>	  
				    </div>
				    
				    
				    
				    
				    
				    
						<script>

						
						
						
							function getNote(btn){
								var noteId = $(btn).attr("name");
								$.ajax({
									url:"notes/noteDetail.do",
									type:"post",
									async:false,
									data:{"noteId":noteId},
									dataType:"text",
									success:function (data) {
										document.getElementById("noteDetail").innerHTML=data;
									}, 
					                error:function(){
					                	alert("wrong!");
					                },
								});
							}
						</script>
						
					<div id="noteDetail" style="overflow-y:auto; overflow-x:auto;width:500px;height:580px;margin-left:425px;position:relative">	
					</div>

						<script>
							function deleteNote(btn) {
								var noteId = $(btn).attr("name");
								//alert(noteId);
								$.ajax({
									url:"notes/delete.do",
									type:"post",
									async:false,
									data:{"noteId":noteId},
									dataType:"html",
									success:function (data) {
										document.innerHTML=data;
										alert("已成功删除此条！！！");
										url:"notes/NotesInfo.do"
									}, 
					                error:function(){
					                	alert("wrong!");
					                },
								});
							}	
			
						</script>
					</div>
				</div>

			</div>
		</div>
		</main>
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