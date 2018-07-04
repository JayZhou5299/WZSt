<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	// 获得项目完全路径（假设你的项目叫MyApp，那么获得到的地址就是http://localhost:8080/MyApp/）: 
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC >
<html>
<head>
<base href=" <%=basePath%>">
<meta charset="UTF-8" />
<title>订单提交</title>
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
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/css.css" />
<!-- // Favorite Icons -->

<link href='http://fonts.useso.com/css?family=Open+Sans:300,400,600,700'
	rel='stylesheet' type='text/css'>

<!-- GENERAL CSS FILES -->
<link rel="stylesheet" href="css/minified.css">
<!-- // GENERAL CSS FILES -->
<script>
	window.jQuery
			|| document.write('<script src="js/jquery.min.js"><\/script>');
</script>
<script src="js/modernizr.min.js"></script>
<!-- PARTICULAR PAGES CSS FILES -->
<link rel="stylesheet" href="css/innerpage.css">
<!-- // PARTICULAR PAGES CSS FILES -->
<link rel="stylesheet" href="css/responsive.css">
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript">
	$(
			function() {
				$('.Caddress .add_mi').click(
						function() {
							$(this).css('background',
									'url("images/mail_1.jpg") no-repeat')
									.siblings('.add_mi').css('background',
											'url("images/mail.jpg") no-repeat')
						})
			})
</script>


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
								（100）0000</strong> <span>(Mon- Fri: 09.00 - 21.00)${listc[1].city_name}</span>
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
										<span>你的购物车目前为空</span> <small><a href="cart.jsp">(See
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
		<!-- // HEADER TOP --> <!-- MAIN HEADER -->
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
								<li><h4>${User.user_name}  欢迎您</h4></li>
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
						<img src="img/logo.png"
							alt="GFashion - Responsive e-commerce HTML Template" /> </a>
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
		<!-- // MAIN HEADER --> </header>
		<!-- // SITE HEADER -->

		<!-- SITE MAIN CONTENT -->
		<main id="main-content" role="main">

		<div class="container">
			<div class="row">

				<div class="m-t-b clearfix">
					<!-- SIDEBAR -->

					<!-- // SIDEBAR -->

					<section class="col-xs-12 col-sm-8 col-md-9">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#checkout-collapse"
									href="#checkout-collapse3"> <span class="step">01</span>
									配送地址
								</a>
							</h4>
						</div>
						<div id="checkout-collapse3" class="panel-collapse collapse">

							<div class="radio">
								<form>
									&nbsp;&nbsp; &nbsp;&nbsp;默认收货地址
									<div class="Cadress">
										<div class="add_mi">
											<input type="radio" value="新增收货地址1" name="address" />
											<p style="border-bottom: 1px dashed #ccc; line-height: 28px;">浙江杭州(爸爸收)</p>
											<p>萧山 北干 明怡花苑53幢3单元 13735683918</p>
										</div>

										<br>
										<br>
										<br> &nbsp;&nbsp;&nbsp;&nbsp; <input type="radio"
											value="新增收货地址" name="address" />新增收货地址<br>

									</div>

								</form>



								<div class="panel-body">
									<form class="form-horizontal" role="form" action="">
										<div class="row">
											<div class="col-xs-12 col-sm-12 col-md-6">
												<div class="form-group stylish-input">
													<label for="inputFirstname"
														class="col-sm-4 col-lg-4 control-label required">姓名</label>
													<div class="col-sm-8 col-lg-8">
														<input type="text" class="form-control"
															id="inputFirstname" />
													</div>
												</div>
												<div class="form-group stylish-input">
													<label for="inputPhone"
														class="col-sm-4 col-lg-4 control-label required">电话号码</label>
													<div class="col-sm-8 col-lg-8">
														<input type="text" class="form-control" id="inputPhone" />
													</div>
												</div>
												<div class="form-group stylish-input">
													<label for="inputPostcode"
														class="col-sm-4 col-lg-4 control-label required">邮编</label>
													<div class="col-sm-8 col-lg-8">
														<input type="text" class="form-control" id="inputPostcode" />
													</div>
													
												</div>
											</div>
											<div class="col-xs-12 col-sm-12 col-md-6">

												<div class="form-group stylish-input">
													<label for="inputCity"
														class="col-sm-4 col-lg-4 control-label required">省份</label>
													<div class="col-sm-8 col-lg-8">
														<select class="form-control" id="province">
															<option>选择省份</option>
															<c:forEach items="${listp}" var="listp">
																<option>${listp.province_name}</option>
															</c:forEach>
														</select>
													</div>
												</div>
												<div class="form-group stylish-input">
													<label for="inputCountry"
														class="col-sm-4 col-lg-4 control-label required">城市</label>
													<div class="col-sm-8 col-lg-8">
														<select class="form-control" id="city">
															<option>选择城市</option>
<%-- 															<c:forEach items="${listc}" var="listc"> --%>
<%-- 																<option>${listc.city_name }</option> --%>
<%-- 															</c:forEach> --%>
														</select>
													</div>
												</div>
												<div class="form-group stylish-input">
													<label for="inputState"
														class="col-sm-4 col-lg-4 control-label required">地区</label>
													<div class="col-sm-8 col-lg-8">
														<select class="form-control" id="area">
															<option>选择地区</option>
<%-- 															<c:forEach items="${lista}" var="lista"> --%>
<%-- 																<option>${lista.area_name }</option> --%>
<%-- 															</c:forEach> --%>
														</select>
													</div>
												</div>
												<div class="form-group stylish-input">
													<label for="inputAddress1"
														class="col-sm-4 col-lg-4 control-label required">详细地址</label>
													<div class="col-sm-8 col-lg-8">
														<input type="text" class="form-control" id="inputAddress" />
													</div>
												</div>
													
													<script type="text/javascript">
														$("#province").change(function(){
															var province = $("#province option:selected").val(); //省名
														      
															$.ajax({
																url:"coscities/listc.do",
																type:"post",
																data:{"province":province},
 																dataType:"json",
																success:function (msg) { 
																	//alert(msg);
																	//var s=JSON.parse(msg);
																	var str="<option>"+"选择城市"+"</option>";
												                    for(var i in msg){
												                    	 //alert(i);
												                            str=str+"<option>"+msg[i].city_name+"</option>";
												                         //alert(str); 
												                         $("#city").html(str);
												                    }
																}, 
												                error:function(){alert("wrong!");},
												
															});
														})
														
														
														$("#city").change(function(){
															var city = $("#city option:selected").val(); //城市名
														$.ajax({
															url:"cosareas/lista.do",
															type:"post",
															data:{"city":city},
																dataType:"json",
															success:function (data) { 
																//alert(msg);
																//var s=JSON.parse(msg);
																var str="<option>"+"选择地区"+"</option>";
											                    for(var i in data){
											                    	 //alert(i);
											                            str=str+"<option>"+data[i].area_name+"</option>";
											                         //alert(str); 
											                         $("#area").html(str);
											                    }
															}, 
											                error:function(){alert("wrong!");},
											
														});
													})
													
													</script>
													
											</div>
										</div>
								</div>
								<div class="space20 clearfix"></div>
								<button class="btn btn-primary">继续</button>
								</form>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#checkout-collapse"
									href="#checkout-collapse6"> <span class="step">02</span>
									订单详情
								</a>
							</h4>
						</div>
						<div id="checkout-collapse6" class="panel-collapse collapse">
							<div class="panel-body">
								<div class="row">
									<div class="col-xs-12 col-sm-6 pull-right center-sm">
										<table class="shop-summary">
											<tr>
												<th>商品总价:</th>
												<td>$1170.00</td>
											</tr>
											<tr>
												<th>积分抵扣 (-2.00)</th>
												<td>$2.00</td>
											</tr>
											<tr class="total">
												<th>总价:</th>
												<td>$1168.00</td>
											</tr>
											<tr>
												<th><a href="order_suc.jsp"
													class="btn btn-default btn-round uppercase">结 算</a></th>
												<td><a href="products.jsp"
													class="btn btn-primary btn-round uppercase">继续购物</a></td>
											</tr>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				</section>

			</div>

		</div>
	</div>

	</main>
	<!-- // SITE MAIN CONTENT -->

	<!-- SITE FOOTER -->
	<footer class="page-footer"> <!-- WIDGET AREA -->
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
