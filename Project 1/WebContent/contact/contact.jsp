<%@page import="java.net.URLEncoder"%>
<%@page import="test.cafe.dao.CafeDao"%>
<%@page import="test.cafe.dto.CafeDto"%>
<%@page import="java.util.List"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About,</title>
<jsp:include page="../include/resource.jsp"></jsp:include>
<jsp:include page="../include/navbar.jsp">
<jsp:param value="cafe" name="thisPage"/></jsp:include>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/about.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/about.css">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&display=swap" rel="stylesheet">
<style>
	.img1{opacity: 0.4;}
</style>
</head>
<body>
<div class="container">
	<div class="hidden-lg" style= "position: relative; width:100%;  padding:5px;">
		<img class="img1" src="../images/IMG_2514.png" border="0" width="100%" height="100%">
		<div style="left: 70px; width: 100%; top: 50px; font-family: 'Nanum Gothic', sans-serif;		
			font-weight: bold; position: absolute;">
			<p class="text" style="color:black;">
			Contact page
			</p>			
		</div>			
	</div>
</div>
</body>
</html>







