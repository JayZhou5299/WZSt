<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	// 获得项目完全路径（假设你的项目叫MyApp，那么获得到的地址就是http://localhost:8080/MyApp/）: 
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" >
<html>
<head>
<base href=" <%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:forEach items="${noteList}" var="note">
	<div class="mix-item isotope-item"
		style="width: 292px; position: relative; left: 0px; top: 0px;">
		<div class="product" 
			style="visibility: visible; opacity: 1;">
			<div class="entry-media">
				<img alt="" class="lazyLoad thumb"
					src="${note.note_pic}">
				<div class="hover">
					<a href="product.jsp" class="entry-url"></a>
					<ul class="icons unstyled">
						<li><a href="images/women/accessories/582120-0029_1.jpg"
							class="circle" data-toggle="lightbox"><i
								class="iconfont-search"></i></a></li>
						<li><a href="#" class="circle add-to-cart"><i
								class="iconfont-shopping-cart"></i></a></li>
					</ul>
					<div class="rate-bar">
						<input type="range" value="4" step="0.5" id="backing2"
							style="display: none;">
						<div class="rateit" data-rateit-backingfld="#backing2"
							data-rateit-starwidth="12" data-rateit-starheight="12"
							data-rateit-resetable="false" data-rateit-ispreset="true"
							data-rateit-min="0" data-rateit-max="5">
							<button id="rateit-reset-3" class="rateit-reset"
								aria-label="reset rating" aria-controls="rateit-range-3"
								style="display: none;"></button>
							<div id="rateit-range-3" class="rateit-range" tabindex="0"
								role="slider" aria-label="rating" aria-owns="rateit-reset-3"
								aria-valuemin="0" aria-valuemax="5" aria-valuenow="4"
								aria-readonly="false" style="width: 60px; height: 12px;">
								<div class="rateit-selected rateit-preset"
									style="height: 12px; width: 48px;"></div>
								<div class="rateit-hover" style="height: 12px"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="entry-main">
				<h5 class="entry-title">
					<a href="product.jsp">${note.note_name}</a>
				</h5>
				<div class="entry-description visible-list">
					<p>${note.note_des}
<!-- 					日本COSME石泽研究所大米精华面膜，刷爆日代朋友圈的网红面膜，日本各大药妆店卖脱销断货的明星产品。这款面膜是日本原产🍚大米提取制成，一袋10枚，非独立包装。一包含165ML精华液，打开袋子会看到里有很多米汁颜色的精华液， -->
<!-- 						一股子米糟的味道。我是完全中了大米面膜的毒，一直以来都有囤货。面膜纸软软的很细腻，大小和脸型超服帖。精华液清爽，不黏腻，滋润度比较好，敷在脸上会感觉整张脸都喝饱了水。皮肤变得很松弛， -->
<!-- 						真的很舒服。 -->
<!-- 						这款面膜主要功效是，补水保湿、改善毛孔粗大、闭合性粉刺、黑头等问题。声明一下，任何产品都无法完美的改善毛孔问题，不可能敷一片全脸毛孔就瞬间没有了，任何产品都做不到。记住毛孔不可逆，只有补水充足才会让毛孔问题有改善。面膜含有酒精成分，敏感肌不建议使用。本人就是敏感肌肤，对自己汗液都会过敏红肿，但我使用这款面膜觉得还可以，补水效果很不错。面膜是免洗的，但尽量敷完用清水洗掉，再涂护肤品，以免出现毛孔堵塞等问题。沐沐去年11月去日本，找遍各大药妆店全部断货。生活在日本的朋友都要在网上预定购买，所以提醒大家，这款面膜一定要找靠谱的人代购，不要网购， -->
<!-- 						假货真的太多了！平价又好用的日常面膜，🌟推荐推荐～！ -->
						</p>
				</div>
				<div class="entry-price">
					<a href="products.jsp" class="btn btn-primary uppercase">赞</a>
				</div>
				<div class="entry-links clearfix"></div>
			</div>
		</div>
	</div>
	</c:forEach>
</body>
</html>