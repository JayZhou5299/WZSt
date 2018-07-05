<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<title>Insert title here</title>
<style>
</style>
</head>
<body>
<%-- 			<c:forEach  var="i" begin="1" end="9" > --%>
			<c:forEach items="${proList}" var="pro" >
			
		<div class="mix-item isotope-item "
			style="width: 292px; position:relative;
	float:left !important; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px);">
			
			
			<div class="product " data-product-id="1"
				style="visibility: visible; opacity: 1;">
				
				<div class="entry-media">
					<img alt="" class="lazyLoad thumb"
						src="${pro.goods_pic}">
					<div class="hover">
						<a href="" class="entry-url"></a>
						<ul class="icons unstyled">
							<li>
								<div class="circle ribbon ribbon-sale">Sale</div>
							</li>
							<li><a href="images/cz/9c.jpg" class="circle"
								data-toggle="lightbox"><i class="iconfont-search"></i></a></li>
							<li><a href="#" class="circle add-to-cart"><i
									class="iconfont-shopping-cart"></i></a></li>
						</ul>
						
					</div>
				</div>
				<div class="entry-main">
					<h5 class="entry-title">
						<a href="">${pro.goods_name }</a>
					</h5>
					<div class="entry-description visible-list">
						<p>${goods_unit }</p>
					</div>
					<div class="entry-price">
						 <strong
							class="accent-color price">${pro.goods_price}元</strong> <a href="#"
							class="btn btn-round btn-default add-to-cart visible-list">Add
							to Cart</a>
					</div>

				</div>
			</div>
			</div>
			</c:forEach>
<%-- 			</c:forEach> --%>
</body>
</html>