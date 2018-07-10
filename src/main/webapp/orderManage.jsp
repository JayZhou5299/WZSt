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
<title>订单管理</title>
<style>
	.showthis{
		overflow:scroll !important;
		overflow-x:visible !important;
		overflow-y:visible !important;
		height:auto !important;
	}
	th
	{
	height:50px;
	line-height:50px;
	 padding:20px;
	 font-size:15px;
	 color:black;
	 font-family:"宋体";
	 font-weight:bold;
	}
	td
  {
  padding:20px;
  }
</style>
</head>

					<div style="overflow-y:auto;width:700px;height:500px;margin-left:50px;">		
					<table id="a" style="border='0';  width:700px;height:200px">
					<tr>
					<th>订单Id</th>
					<th>订单价格</th>
					<th>折扣</th>
					<th>订单状态</th>
					<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
					</tr>
					 <c:forEach items="${Order}" var="order" >
<!-- 					 <input type="hidden"> -->
					 <tr>
					 <td>${order.order_id}</td>
					 <td>${order.order_price}</td>
					 <td>${order.order_cut}</td>
					 <td id="order_state">${order.order_state}</td>
					 <td>
					 <input  type="button" onclick="dealOrder(this)" name="${order.order_id}" value="处理">
					 </td>
					 </tr>
						  </c:forEach>
					</table>
					</div>	

</body>
</html>