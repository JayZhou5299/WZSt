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
						<div class="center-xs"></div>
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

		<!-- BREADCRUMB -->
		<div class="breadcrumb-container">
			<div class="container">
				<div class="relative">
					<ul class="bc push-up unstyled clearfix">
						<li><a href="index.jsp">主页</a></li>
						<li class="active">笔记</li>
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
						class="side-section bg-white"> <header
						class="side-section-header">
					<h3 class="side-section-title">发布笔记</h3>
					</header>
					<div class="side-section-content">
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
					<footer class="side-section-footer text-center hide">
					<button type="button" id="btn-filter-cat"
						class="btn btn-primary btn-round uppercase">Clear Filters</button>
					</footer> </section> <!-- // CATEGORIES --> <section class="side-section bg-white">
					</section> <!-- BEST SELLERS --> <section class="side-section bg-white">
					<header class="side-section-header">
					<h3 class="side-section-title">热销商品</h3>
					</header>
					<div class="side-section-content">
						<ul class="product-medialist li-m-t unstyled clearfix">
							<li>
								<div class="item clearfix">
									<a href="images/zhuye/basic/17.jpg" data-toggle="lightbox"
										class="entry-thumbnail"> <img
										src="images/zhuye/basic/17.jpg" alt="Inceptos orci hac libero" />
									</a>
									<h5 class="entry-title">
										<a href="product.html">SKII 小红瓶</a>
									</h5>
									<s class="entry-discount m-r-sm"><span class="text-sm">¥962</span></s>
									<span class="entry-price accent-color">¥990</span>
								</div>
							</li>
							<li>
								<div class="item clearfix">
									<a href="images/zhuye/basic/18.jpg" data-toggle="lightbox"
										class="entry-thumbnail"> <img
										src="images/zhuye/basic/18.jpg" alt="Inceptos orci hac libero" />
									</a>
									<h5 class="entry-title">
										<a href="product.html">安耐晒</a>
									</h5>
									<span class="entry-price">¥220</span>
								</div>
							</li>
						</ul>
					</div>
					</section> <!-- // BEST SELLERS --> <!-- PROMO -->
					<div class="promo inverse-background"
						style="background: url('images/demo/small.jpg') no-repeat; background-size: auto 100%;">
						<div class="inner text-center np">
							<div class="ribbon">
								<h6 class="nmb">新品到货</h6>
								<h5 class="text-semibold uppercase nmb">护 肤 秘 籍</h5>
								<div class="space10"></div>
								<a href="products.jsp" class="with-icon prepend-icon"><i
									class="iconfont-caret-right"></i><span>立即购买</span></a>
							</div>
						</div>
					</div>
					<!-- // PROMO --> </section> </aside>
					<!-- // SIDEBAR -->
					<section class="col-xs-12 col-sm-8 col-md-9"> <section
						class="products-wrapper"> <!-- DISPLAY MODE - NUMBER OF ITEMS TO BE DISPLAY - PAGINATION -->
					<header class="products-header">
					<div class="row">
						<div class="col-xs-12 col-sm-12 col-md-6 center-xs"></div>
						<div class="space30 visible-xs"></div>
						<!-- PAGINATION -->
						<div class="col-xs-12 col-sm-12 col-md-6 center-xs">
							<ul class="paginator li-m-r-l pull-right">
								<li><a class="round-icon" onclick="showLast()"
									data-toggle="tooltip" data-title="上一页"><i
										class="iconfont-angle-left"></i></a></li>
								<li><a class="round-icon" 
									onclick="showNext()" data-toggle="tooltip" data-title="下一页"><i
										class="iconfont-angle-right"></i></a></li>
							</ul>
						</div>
						<!-- // PAGINATION -->
					</div>
					</header> <!-- // DISPLAY MODE - NUMBER OF ITEMS TO BE DISPLAY - PAGINATION -->

					<!-- PRODUCT LAYOUT -->
					<div id="noteAjax" 
						class="products-layout list m-t-b add-cart showthis"
						data-product=".product" data-thumbnail=".entry-media .thumb"
						data-title=".entry-title > a" data-url=".entry-title > a"
						data-price=".entry-price > .price">

						
								<script type="text/javascript">
										
									/*
									 * 解决ajax返回的页面中含有javascript的办法：
									 * 把xmlHttp.responseText中的脚本都抽取出来，不管AJAX加载的HTML包含多少个脚本块，我们对找出来的脚本块都调用eval方法执行它即可
									 */
									 
											var pageChange="<%=session.getAttribute("newPage")%>";
											var page=window.parseInt(pageChange);
											 
											function showLast(){
												page-=1;
// 												alert(page);
												if(page!=0){
													$.ajax({
														type : "POST",
														async : true,  //同步请求
														url : "notes/shownewnotes.do",
														data : {"page":page},
														success:function(msg){
// 															alert(msg);
															//$("#productAjax").html(msg);//要刷新的div
				 										document.getElementById("noteAjax").innerHTML=msg;
				 										//window.location.reload();	
															//$(document).on("click","newinput",function(){$("#productAjax").html(msg);});
														},
														error: function() {
											               alert("失败，请稍后再试！");
											            }
													});	
												}else{
													alert("没有当前页面请点击下一页");
												}
												
											}
																					
											function showNext(){
											page+=1;
// 											alert(page);
											$.ajax({
												type : "POST",
												async : true,  //同步请求
												url : "notes/shownewnotes.do",
												data : {"page":page},
												success:function(msg){
													//alert(msg);
													//$("#productAjax").html(msg);//要刷新的div
		 										document.getElementById("noteAjax").innerHTML=msg;
		 										//window.location.reload();	
													//$(document).on("click","newinput",function(){$("#productAjax").html(msg);});
												},
												error: function() {
									               alert("失败，请稍后再试！");
									            }
											});	
										}				
									</script>


						<c:forEach items="${Notes}" var="note" varStatus="stat">
						<div class="product" data-product-id="${stat.count}">

							<div class="entry-media">
								<img data-src="${note.note_pic}" alt=""
									class="lazyLoad thumb" />
								<div class="hover">
									<a href="product.jsp" class="entry-url"></a>
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
									<a href="product.jsp">${note.note_name}</a>
								</h5>
								<div class="entry-description visible-list">
									<p>
									${note.note_des}
<!-- 									偏光粉紫的少女桃花妆 性价比十足的眼上粉银河。积极响应局长号召，画个国民少女桃花妆 -->
<!-- 										(*≧▽≦)大家对桃花妆的印象大多数粉色红色玫红色～今天想试试不一样的紫色！！用的完美日记四色眼影04紫薰迷雾一开始看图片我是被右下角那块偏光紫迷昏倒。到手迫不及待摸了一把！左上那块太美了！！！图片上看我就以为是普通的白色提亮色，实际上是一块特别美的白粉紫偏光！闪片很密集！白色紫色粉色，好多细小闪片凑一起特别灵！！百分百的眼上银河，而且特细腻，扒的也很牢不乱飞！太惨了(;´༎ຶД༎ຶ`)官方居然没有突出他(;´༎ຶД༎ຶ`)整体粉质都不错，最最最喜欢那小块了！很百搭，我配了其他的眼影盘都很好看！好希望出个单色啊啊啊！！局长说随便哪里画个小花就阔以，我就画了眼睛下面，无奈手残，这大概是全网最蠢的小桃花了吧（本来还以为自己画完会像林诗音呢） -->
										</p>
								</div>
								<div class="entry-price">
								<form action="notes/addhot.do" method="post">
									<input type="hidden" value = "${note.note_id}" name = "note_id">
									<button type="submit" class="btn btn-primary uppercase">赞</button>
								</form>
									
								</div>
								<div class="entry-links clearfix"></div>
							</div>
						</div>
						
						</c:forEach>
							

					
						
						</div>
						<!-- // PRODUCT LAYOUT -->
					</section> </section>
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