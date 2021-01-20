<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//session scope 에 "id" 라는 키값으로 저장된 문자열이 있는지 읽어와 본다.
	String id=(String)session.getAttribute("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/index.jsp</title>
<jsp:include page="include/resource.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/carousel.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/js/carousel.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>		
</head>
<body>
<jsp:include page="include/navbar.jsp"></jsp:include>
<style>
	.footer {
      width: 100%;
      height: 100px;
      padding: 38px 92.5px;
      display: flex;
      justify-content: space-between;
      align-items: center;
}
</style>
<div class="container">    
	<div id="carousel_section">
		<ul>
			<li> <img src="images/R0980693.png"> </li>
			<li> <img src="images/R0980826.png"> </li>
			<li> <img src="images/R0980828.png"> </li>
			<li> <img src="images/R0981189.png"> </li>
		</ul>
	</div>
	<div id="contents">
	<%if(id != null){ %>				
	<%} %>		
	<div style="position: relative; float:left; width: 50%; padding:5px;">
		<a href="about/about.jsp">		
			<img src="images/R0970900.png" border="0" width="100%" height="110%">
			<div style="left: 20px; width: 400px; bottom: 30px; 
				color: white; font-size: 2.5rem; font-weight: bold; position: absolute;">
				About,
			</div>
		</a>				
	</div>	
	<div style="position: relative; float:right; width: 50%; padding:5px;">
		<a href="cafe/list.jsp">		
			<img src="images/R0981269.png" border="0" width="100%" height="100%" >			
			<div style="left: 20px; width: 400px; bottom: 30px; 
				color: white; font-size: 2.5rem; font-weight: bold; position: absolute;">
				Docs,
			</div>
		</a>						
	</div>	
	<div style= "position: relative; float:left; width: 50%; padding:5px;">
		<a href="gallery/list.jsp">	
			<img src="images/R0981078.png" border="0" width="100%" height="100%">
			<div style="left: 20px; width: 400px; bottom: 30px; 
				color: white; font-size: 2.5rem; font-weight: bold; position: absolute;">
				Picture,
			</div>
		</a> 				
	</div>
	<div style= "position: relative; float:left; width: 50%; padding:5px;">
		<a href="contact/contact.jsp">	
			<img src="images/R0980656.png" border="0" width="100%" height="100%">
			<div style="left: 20px; width: 400px; bottom: 30px; 
				color: white; font-size: 2.5rem; font-weight: bold; position: absolute;">
				Contact,
			</div>
		</a> 				
	</div>			        	
</div>
<footer class="footer" style="text-align:center; border:10px;">
<p class="about">
<a href=".">Home</a>&nbsp|&nbsp
<a href=".">About</a>&nbsp|&nbsp
<a href="." rel="nofollow">Docs</a>&nbsp|&nbsp
<a href="." rel="nofollow">Picture</a>&nbsp|&nbsp
<a href="." rel="nofollow">Contact</a>
</p>
<p>Copyright 2021. Longfish All pictures cannot be copied without permission. </p>
</footer>
</body>
</html>



