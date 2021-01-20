<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--  
	jsp 페이지 안에서의 주석 입니다. 
	여기 작성한 내용은 jsp 페이지가 해석하지 않습니다.
	클라이언트 웹브라우저에 출력되지 않습니다.
--%>
<%--
	특정 jsp 페이지에 포함 시킬 내용을 jsp 페이지에 작성할수 있습니다.
 --%>
 
 <%
 	// "thisPage" 라는 파라미터 명으로 전달된 문자열 읽어오기 
 	String thisPage=request.getParameter("thisPage");
 	//NullPointerException 방지 (500번 버스 안타기)
 	if(thisPage==null){
 		thisPage="";
 	}
 %>
 <nav class="navbar navbar-dark bg-light navbar-expand-md fixed-top">
	<div class="container">
	  	<a style="color:black; font-weight:bold;" class="navbar-brand" href="${pageContext.request.contextPath }/">
	  		<img style="width:30px; height:30px" src="${pageContext.request.contextPath }/images/fish-solid.svg"/> Longfish
	  	</a>
		<button class="navbar-toggler" data-toggle="collapse" data-target="#topNav">
			<span>
				<img style="width:35px; height:30px" src="${pageContext.request.contextPath }/images/cat.png"/> 
			</span>
		</button>
		<div class="collapse navbar-collapse" id="topNav">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item <%=thisPage.equals("about") ? "active" : "" %>">
					<a style="color:gray; font-weight:bold;" class="nav-link" href="${pageContext.request.contextPath }/about/about.jsp">About</a>
				</li>
				<li class="nav-item <%=thisPage.equals("docs") ? "active" : "" %>">
					<a style="color:gray; font-weight:bold;" class="nav-link" href="${pageContext.request.contextPath }/cafe/list.jsp">Docs</a>
				</li>
				<li class="nav-item <%=thisPage.equals("picture") ? "active" : "" %>">
					<a style="color:gray; font-weight:bold;" class="nav-link" href="${pageContext.request.contextPath }/gallery/list.jsp">Picture</a>
				</li>
				<li class="nav-item <%=thisPage.equals("contact") ? "active" : "" %>">
					<a style="color:gray; font-weight:bold;" class="nav-link" href="${pageContext.request.contextPath }/contact/contact.jsp">Contact</a>
				</li>
			</ul>
			<%
				//로그인된 아이디가 있는지 읽어와 본다.
				String id=(String)session.getAttribute("id");
			%>
			<%if(id==null){ %>
				<a class="btn btn-dark btn-sm" 
				href="${pageContext.request.contextPath }/users/loginform.jsp">Sign In</a>
				<a class="btn btn-secondary btn-sm ml-1" 
				href="${pageContext.request.contextPath }/users/signup_form.jsp">Sign Up</a>
			<%}else{ %>
				<span class="navbar-text">
					<a style="color:black; font-weight:bold; " href="${pageContext.request.contextPath }/users/private/info.jsp"><%=id %></a>
					<a class="btn btn-secondary btn-sm" href="${pageContext.request.contextPath }/users/logout.jsp">Logout</a>
				</span>
			<%} %>	
		</div>
	</div>
</nav>





