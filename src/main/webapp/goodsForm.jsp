<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品信息管理</title>
</head>
<body>

	<div id="hiddenDiv">
		<form action="update.do" method="post" name="updateGoods"
			id="updateGoods">
			<ul>
				<input name="goods_id" type="hidden" value="${oneGoods.goods_id}">
				<br>
				<li>商品名称: <input name="goods_name" type="text"
					value="${oneGoods.goods_name}"></li>
				<br>
				<li>商品类别: <input name="goods_class" type="text"
					value="${oneGoods.goods_class}"></li>
				<br>
				<li>商品图片: <input name="goods_pic" type="text"
					value="${oneGoods.goods_pic}"></li>
				<br>
				<li>商品价格: <input name="goods_price" type="text"
					value="${oneGoods.goods_price}"></li>
				<br>
				<li>商品单位: <input name="goods_unit" type="text"
					value="${oneGoods.goods_unit}"></li>
				<br>
				<li>商品库存: <input name="goods_num" type="text"
					value="${oneGoods.goods_num}"></li>
				<br>
				<li>商品描述: <input name="goods_detail" type="text"
					value="${oneGoods.goods_detail}"></li>
				<br>
			</ul>
			<button type="button" onclick="closeHere()">启动</button>
			<div style="display: none;">
				<input type="submit" value="提交" id="changeGoods" name="changeGoods">
			</div>
			<script>
				function closeHere() {
					document.updateGoods.changeGoods.click();
					alert("提交成功！");
					window.opener = "";
					window.close();
				}
			</script>
		</form>

	</div>

</body>
</html>