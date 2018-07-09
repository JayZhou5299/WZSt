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
	
	<div class="main" >
	
		<c:forEach items="${goodsList}" var="goods">
			<div id="${goods.goods_id}" class="sub1"
				style="overflow-y:auto; overflow-x:auto;width: 300px; height: 400px; float: left;">
				<ul >
					<li>商品名称:  ${goods.goods_name}</li>
					<br>
					<li>商品类别:  ${goods.goods_class}</li>
					<br>
					<li>商品图片:  ${goods.goods_pic}</li>
					<br>
					<li>商品价格:  ${goods.goods_price}</li>
					<br>
					<li>商品发布时间:  ${goods.create_time}</li>
					<br>
					<li>商品单位:  ${goods.goods_unit}</li>
					<br>
					<li>商品热度:  ${goods.goods_hot}</li>
					<br>
					<li>商品库存:  ${goods.goods_num}</li>
					<br>
					</ul>
						
						<input type="button" value="修改" 
						id="changeGoods" name="${goods.goods_id}" onclick="changeGoods(this)">
						<input type="button" value="删除" 
						id="deleteGoods" name="${goods.goods_id}" onclick="deleteGoods(this)">	
			</div>
		</c:forEach>
		<ul class="main-menu hidden-sm hidden-xs" >
			<li><a onclick="addGoods()">添加商品</a></li>
			<li><a onclick="showNext()">下一批</a></li>
		</ul>
		

	</div>
						
</body>
</html>