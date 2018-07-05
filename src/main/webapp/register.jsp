<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册界面</title>
<meta charset="UTF-8" />
<title>账户注册|微妆</title>
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
						<!-- USER RELATED MENU -->
						<nav id="tiny-menu" class="clearfix">
						<ul class="user-menu">
							<li><a href="login.jsp">登录</a></li>
						</ul>
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
						<li><a href="index.jsp">首页</a></li>

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
		<div
			style=" text-align:left;width: 700px; height: 500px; margin-left: auto; margin-right: auto; margin-top: 100px">
			<h3 style="text-align: left">个人信息</h3>
			<form action="user/registe.do" method="post" name="f1">
		  <div style="margin-bottom:10px">
			<span style="margin-right:14px">用户名:</span>
			<input type="text" style="width:60%" name="user_name"> 
		  </div>
		  <br>
		  	<div style="margin-bottom:10px">
		  	<span style="margin-right:14px">性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别:</span>
					<label>
				    <input type="radio" name="user_sex"  id="optionsRadios1" value="男">
				    男
				  </label>
				  &nbsp;&nbsp;&nbsp;&nbsp;
				  <label>
				    <input type="radio" name="user_sex"  id="optionsRadios2" value="女">
				    女
				  </label>
				  </div>
		  	<br>	  	
		 
		  <br/>
		  
		        <div style="margin-bottom: 10px">
					<span style="margin-right: 10px">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码:</span>
					<input type="password" placeholder="密码8到16位，数字与字母组合"
						style="width: 60%" name="user_pwd" id="pwd" onkeyup="check_password()">
					<span id="tishi_pw"></span>
				</div>
				<div style="margin-bottom: 10px">
					<span>确认密码:</span> <input type="password" style="width: 60%"
						 id="pwd1" onkeyup="validate()">&nbsp;&nbsp;<span
						id="tishi"></span>
				</div>
				<div style="margin-bottom: 10px">
					<span>联系电话:</span> <input type="text" style="width: 60%"
						name="user_tel" id="tel" onkeyup="check_tel()"> <span
						id="tishi_tel"></span>
				</div>
				<div style="margin-bottom: 10px">
					<span>电子邮箱:</span> <input type="text" style="width: 60%"
						name="user_email" onkeyup="check_email()" id="email"> <span
						id="tishi_email"></span>
				</div>
				<div style="margin-bottom:10px">
			 		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			 		<input onkeyup="checkCode()" type="text" id="registerCode" name="email" placeholder="填写验证码"/><span id="tishi_code"></span> 
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="获取验证码"  onclick="getPhone()">
				</div>	
		
		<br/>
		  <input type="submit" value="注册" class="btn btn-primary uppercase" disabled="disabled">
	    </form>
	    
<!-- 	    <button  onclick="getPhone()">获取验证码</button> -->
		</div>

	    <script>
	        var getCode="";
	        
			function getPhone(){
				var tel=document.getElementById("tel").value;
				//alert(tel);
				$.ajax({
					url:"user/yanzhengma.do",
					type:"post",
					async:false,
					data:{"tel":tel},
					dataType:"text",
					success:function (data) {
						getCode=data;
						//alert(data);
					}, 
	                error:function(){
	                	alert("wrong!");
	                },
				});
			}
			
			function checkCode(){
				var code = document.getElementById("registerCode").value;
				//var getCode=getPhone();
				//alert(getCode);
				if((getCode == code)&&(code!="")){
		          	$("#tishi_code").html("验证码正确");
		          	$("#tishi_code").css("color","green");	
		        	$(".btn").attr("disabled",false); 
		        }
		        else {
		        	  $("#tishi_code").html("验证码错误请重新输入");
		              $("#tishi_code").css("color","red");  
		        	  $(".btn").attr("disabled",true); 
		        }
			}
		


     
			
			 
		      function validate(){
		    	  var pwd = $("#pwd").val();
		    	  var pwd1 = $("#pwd1").val();
		        
//		   	  瀵规瘮涓ゆ杈撳叆鐨勫瘑鐮?
		        if(pwd == pwd1){
		        	$("#tishi").html("两次密码都相同");
		        	$("#tishi").css("color","green");
		        }
		        else {
		        	$("#tishi").html("两次密码不相同");
		        	$("#tishi").css("color","red");
		        }
		      }
		      
		      function check_email() {
		          var zhi = document.getElementById("email").value;
		      var reg =/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/;
		          var re = new RegExp(reg);
		          if (re.test(zhi)) {
		        	  $("#tishi_email").html("邮箱格式正确");
		            	$("#tishi_email").css("color","green");
		              return true;
		          }
		          else {
		        		$("#tishi_email").html("邮箱格式错误");
		              	$("#tishi_email").css("color","red");
		              return false;
		          }
		      }
		      
		      function check_tel() {
		          var zhi = document.getElementById("tel").value;
		           var reg = "^1[3|4|5|8][0-9]\\d{8}$"
		          var re = new RegExp(reg);
		          if (re.test(zhi)) {
		        	  $("#tishi_tel").html("电话格式正确");
		              $("#tishi_tel").css("color","green");
		            	
		              return true;
		          }
		          else {
		        		$("#tishi_tel").html("电话格式错误");
		              	$("#tishi_tel").css("color","red");
		              	
		              return false;
		          }
		      }
		      
		      function check_password(){
		      var pwdReg = /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{8,16}$/;//8鍒?6浣嶆暟瀛椾笌瀛楁瘝缁勫悎
		  
		          var value = $('#pwd').val();
		          if(!pwdReg.test(value)){
		        	  $("#tishi_pw").html("密码不符合要求");
		          	  $("#tishi_pw").css("color","red");
		          }else{
		        	  $("#tishi_pw").html("密码符合要求");        	  
		              $("#tishi_pw").css("color","green");
		          }
		      }					
      </script>
		
	
		<div class="footer-sub">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 col-sm-6">
						<div class="footer-links center-xs clearfix">
							
						</div>
						<div class="space10"></div>
						<div class="copyright center-xs">
							<p>© 2018 More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">weizhaung </a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">weizhaung</a>. All Rights Reserved.</p>
						</div>
					</div>
					

			</div>
		</div>
		





</body>
</html>