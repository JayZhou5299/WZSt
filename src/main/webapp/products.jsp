<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	// 获得项目完全路径（假设你的项目叫MyApp，那么获得到的地址就是http://localhost:8080/MyApp/）: 
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<%
	int newPage = 1;
	session.setAttribute("newPage", newPage);
%>
<!DOCTYPE html PUBLIC >
<html>
<head>
<base href=" <%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品界面</title>
<meta charset="UTF-8" />
<title>wz</title>
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

<script src="js/jquery.min.js"></script>

<script>window.jQuery || document.write('<script src="js/jquery.min.js"><\/script>');</script>
<script src="js/modernizr.min.js"></script>
<!-- PARTICULAR PAGES CSS FILES -->
<link rel="stylesheet" href="css/jquery.nouislider.css">
<link rel="stylesheet" href="css/isotope.css">
<link rel="stylesheet" href="css/innerpage.css">
<!-- // PARTICULAR PAGES CSS FILES -->
<link rel="stylesheet" href="css/responsive.css">
<style>
.showthis {
	overflow: scroll !important;
	overflow-x: visible !important;
	overflow-y: visible !important;
	height: auto !important;
}
</style>
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

<!-- 								<li><a href="cart/listUserCart.do" id="total-cart"> <i -->
<!-- 										class="iconfont-shopping-cart round-icon"></i> -->
<!-- 								</a></li> -->

									<li data-toggle="sub-header" data-target="#sub-cart">
									购物车 
									<a href="javascript:void(0);"
									id="total-cart"> 
										<li><a href="cart/listUserCart.do" id="total-cart"> 
 										<i class="iconfont-shopping-cart round-icon"></i></a>
								    </a>
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
							<a href="index.jsp" class="logo" title="wz"> <img
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
			<!-- // MAIN HEADER -->
		</header>
		<!-- // SITE HEADER -->

		<!-- BREADCRUMB -->
		<div class="breadcrumb-container">
			<div class="container">
				<div class="relative">
					<ul class="bc push-up unstyled clearfix">
						<li><a href="index.jsp">主页</a></li>
						<li class="active">商品</li>
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
									<h3 class="side-section-title">种类</h3>
								</header>
								<div class="side-section-content">
									<ul id="parent" class="vmenu unstyled">
										<li><input type="text" id="check-men"
											class="prettyCheckable" data-label="护肤"
											data-labelPosition="right" value="护肤" />
											<ul>
												<li>面膜</li>
												<li>化妆水</li>
												<li>洁面</li>
												<li>精华</li>
												<li>乳液</li>
												<li>面霜</li>
												<li>眼霜</li>
											</ul></li>

										<li><input type="text" id="check-women"
											class="prettyCheckable" data-label="彩妆"
											data-labelPosition="right" value="彩妆" />
											<ul id="parent">
												<li>卸妆</li>
												<li>防晒</li>
												<li>防晒霜</li>
												<li>粉饼</li>
												<li>眼影</li>
												<li>睫毛膏</li>
												<li>唇彩</li>
											</ul></li>


										<li><input type="text" id="check-beauty"
											class="prettyCheckable" data-label="香氛"
											data-labelPosition="right" value="香氛" />
											<ul id="parent">
												<li>女士香水</li>
												<li>男士香水</li>
												<li>中性香水</li>
											</ul></li>

										<li><input type="text" id="check-best"
											class="prettyCheckable" data-label="个人护理"
											data-labelPosition="right" value="个人护理" />
											<ul id="parent">
												<li>洗发</li>
												<li>护发</li>
												<li>沐浴</li>
												<li>发膜</li>
											</ul></li>

										<li><input type="text" id="check-new"
											class="prettyCheckable" data-label="男士专区"
											data-labelPosition="right" value="男士专区" />
											<ul id="parent">
												<li>洁面</li>
												<li>爽肤水</li>
												<li>乳液</li>
												<li>隔离</li>
												<li>精华</li>
											</ul></li>
									</ul>
								</div>

								<script>
									window.onload = function(){
										var lis = document.getElementById("parent").getElementsByTagName("li");
										
										for(i=0;i<lis.length;i++){
											lis[i].onclick = function(){
												//alert(this.innerHTML);
												var name=this.innerHTML;
												$.ajax({
		 											type : "POST",
		 											url : "goods/listSome.do",
		 											data : {"name":name},
		 											dataType:"html",
		 											success:function(msg){
		 											//alert(msg);
		 	 										document.getElementById("productAjax").innerHTML=msg;
		 											},
		 											error: function() {
		 								               alert("失败，请稍后再试！");
		 								            }
		 										});	
											}
										}
									}
									    
								
								</script>

								<footer class="side-section-footer text-center hide">
									<button type="button" id="btn-filter-cat"
										class="btn btn-primary btn-round uppercase">清空选择</button>
								</footer>
							</section>
							<!-- // CATEGORIES -->



							<!-- BEST SELLERS -->
							<section class="side-section bg-white">
								<header class="side-section-header">
									<h3 class="side-section-title">zui热销</h3>
								</header>
								<div class="side-section-content">
									<ul class="product-medialist li-m-t unstyled clearfix">
										<li>
											<div class="item clearfix">
												<a href="images/zhuye/basic/timg.jpg" data-toggle="lightbox"
													class="entry-thumbnail"> <img
													src="images/zhuye/basic/timg.jpg"
													alt="Inceptos orci hac libero" />
												</a>
												<h5 class="entry-title">
													<a href="">叶子面膜</a>
												</h5>
												<s class="entry-discount m-r-sm"><span class="text-sm">150</span></s>
												<span class="entry-price accent-color">119</span>
											</div>
										</li>
										<li>
											<div class="item clearfix">
												<a href="images/zhuye/basic/timg1.jpg"
													data-toggle="lightbox" class="entry-thumbnail"> <img
													src="images/zhuye/basic/timg1.jpg"
													alt="Inceptos orci hac libero" />
												</a>
												<h5 class="entry-title">
													<a href="">桃花面膜</a>
												</h5>
												<span class="entry-price">130</span>
											</div>
										</li>
									</ul>
								</div>
							</section>
							<!-- // BEST SELLERS -->

							<!-- PROMO -->
							<div class="promo inverse-background"
								style="background: url('images/demo/small.jpg') no-repeat; background-size: auto 100%;">
								<div class="inner text-center np">
									<div class="ribbon">
										<h6 class="nmb">新品到货</h6>

										<div class="space10"></div>
										<a href="products.jsp" class="with-icon prepend-icon"><i
											class="iconfont-caret-right"></i><span>立 即 购 买</span></a>
									</div>
								</div>
							</div>
							<!-- // PROMO -->

						</section>
					</aside>
					<!-- // SIDEBAR -->
					<section class="col-xs-12 col-sm-8 col-md-9">

						<section class="products-wrapper">
							<!-- DISPLAY MODE - NUMBER OF ITEMS TO BE DISPLAY - PAGINATION -->
							<header class="products-header">
								<div class="row">
									<div class="col-xs-12 col-sm-12 col-md-6 center-xs">
										<!-- DISPLAY MODE -->
										<ul class="unstyled inline-li li-m-r-l-sm pull-left">
											<li><a class="round-icon active" href="#"
												data-toggle="tooltip" data-layout="grid" data-title="列表模式展示"><i
													class="iconfont-th"></i></a></li>
											<li><a class="round-icon " href="#"
												data-toggle="tooltip" data-layout="list" data-title="图标模式展示"><i
													class="iconfont-list"></i></a></li>
										</ul>
										<!-- // DISPLAY MODE -->

									</div>
									<div class="space30 visible-xs"></div>
									<!-- PAGINATION -->
									<div class="col-xs-12 col-sm-12 col-md-6 center-xs">
										<ul class="paginator li-m-r-l pull-right">
											<li><a class="round-icon" onclick="showLast()"
												data-toggle="tooltip" data-title="上一页"><i
													class="iconfont-angle-left"></i></a></li>
											<li><a id="next" class="round-icon" onclick="showNext()"
												data-toggle="tooltip" data-title="下一页"><i
													class="iconfont-angle-right"></i></a></li>
										</ul>
									</div>
									<!-- // PAGINATION -->
								</div>
							</header>
							<!-- // DISPLAY MODE - NUMBER OF ITEMS TO BE DISPLAY - PAGINATION -->

							<!-- PRODUCT LAYOUT -->
							<div id="productAjax"
								class="products-layout grid m-t-b add-cart showthis"
								data-product=".product" data-thumbnail=".entry-media .thumb"
								data-title=".entry-title > a" data-url=".entry-title > a"
								data-price=".entry-price > .price">

								<script type="text/javascript">
										
									/*
									 * 解决ajax返回的页面中含有javascript的办法：
									 * 把xmlHttp.responseText中的脚本都抽取出来，不管AJAX加载的HTML包含多少个脚本块，我们对找出来的脚本块都调用eval方法执行它即可
									 */
									 
									var pageChange="<%=session.getAttribute("newPage")%>";
									var page = window.parseInt(pageChange);

									if (page > 0) {
										function showLast() {
											page -= 1;
											// 											alert(page);
											if (page != 0) {
												$.ajax({
															type : "POST",
															async : true, //同步请求
															url : "goods/shownewproducts.do",
															data : {
																"page" : page
															},
															success : function(
																	msg) {
																//alert(msg);
																//$("#productAjax").html(msg);//要刷新的div
																document
																		.getElementById("productAjax").innerHTML = msg;
																//window.location.reload();	
																//$(document).on("click","newinput",function(){$("#productAjax").html(msg);});
															},
															error : function() {
																alert("失败，请稍后再试！");
															}
														});
											} else {
												alert("没有当前页面请点击下一页");
											}
										}
									}

									function showNext() {
										page += 1;
										// 										alert(page);
										$.ajax({
													type : "POST",
													async : true, //同步请求
													url : "goods/shownewproducts.do",
													data : {
														"page" : page
													},
													success : function(msg) {
														//alert(msg);
														//$("#productAjax").html(msg);//要刷新的div
														document
																.getElementById("productAjax").innerHTML = msg;
														//window.location.reload();	
														//$(document).on("click","newinput",function(){$("#productAjax").html(msg);});
													},
													error : function() {
														alert("失败，请稍后再试！");
													}
												});
									}
								</script>

								<c:forEach items="${products}" var="pro">

									<div class="mix-item isotope-item "
										style="width: 292px; position: relative; float: left !important; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px);">


										<div class="product " data-product-id="${pro.goods_id}"
											style="visibility: visible; opacity: 1;">


											<div class="entry-media">
												<img alt="" class="lazyLoad thumb" src="${pro.goods_pic}">
												<div class="hover">
													<form action="cart/add.do" method="post">
														<input type="hidden" name="goods_name" value="${pro.goods_name}"> 
														<input type="hidden" name="goods_pic" value="${pro.goods_pic}"> 
														<input type="hidden" name="goods_price" value="${pro.goods_price}"> 
														<input type="hidden" name="goods_id" value="${pro.goods_id}"> 
														<a href="" class="entry-url"></a>
														<ul class="icons unstyled">
															<li>
																<div class="circle ribbon ribbon-sale">Sale</div>
															</li>
															<li><a href="images/cz/9c.jpg" class="circle"
																data-toggle="lightbox"><i class="iconfont-search"></i></a></li>
															<li><button type="submit" class="circle">
																	<i class="iconfont-shopping-cart"></i>
																</button></li>
														</ul>

<!-- 															<li><a href="#" class="circle add-to-cart"><i -->
<!-- 																	class="iconfont-shopping-cart"></i></a></li> -->



													</form>
												</div>
											</div>

											<div class="entry-main">
												<h5 class="entry-title">
													<a href="">${pro.goods_name}</a>
												</h5>
												<div class="entry-description visible-list">
													<p>${goods_unit}</p>
												</div>
												<div class="entry-price">
													<strong>${pro.goods_price}元</strong> <a href="#"
														class="btn btn-round btn-default add-to-cart visible-list">Add
														to Cart</a>
												</div>
											</div>
										</div>
									</div>

								</c:forEach>


							</div>
							<!-- // PRODUCT LAYOUT -->
						</section>

					</section>
				</div>

			</div>
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
												<p>Subscribe to be the first to know about Sales,
													Events, and Exclusive Offers!</p>
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
	<script src="js/jquery.nouislider.js"></script>
	<script src="js/jquery.isotope.min.js"></script>
	<script src="js/products.js"></script>
	<!-- // Particular Page Javascripts -->
</body>
</html>