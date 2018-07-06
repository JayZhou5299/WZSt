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
<style>
.entry_
{
	float:left;
}
</style>
<base href=" <%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>

<%-- 	<c:forEach items="${NotesDetail}" var="note"> --%>
		<div class="product " style="visibility: visible; opacity: 1;">
			<div class="entry-media">
				<img width="200px" height="273px" alt="" class="lazyLoad thumb" 
				src="<%=basePath%>${NotesDetail.note_pic}">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="button" name="${NotesDetail.note_id}" onclick="deleteNote(this)" class="btn btn-default btn-xs"
				value="删除此条">
			</div>
			<div class="entry-main">
				<div class="entry-describe">
					<p>${NotesDetail.note_des}</p>
				</div>

			</div>
		</div>
		
		
		
<%-- 	</c:forEach> --%>

</body>
</html>