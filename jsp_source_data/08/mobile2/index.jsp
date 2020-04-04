<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=euc-kr"%>
<html>
<head>
<title>JSP World</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ include file="../../include/jQueryMobile.inc" %>

</head>
<body>

<!-- 세션정보 추출 -->
<%
String ID   = (String)session.getAttribute("ID");
String name = (String)session.getAttribute("name");
%>

<section data-role="page">

	<!-- 1. 헤더 -->
	<header data-role="header" data-theme="b">
		<!-- 헤더 타이틀 -->
		<h1>홈</h1>
		
		<!-- 홈 -->
		<a href="index.jsp" data-icon="home" data-iconpos="notext" rel="external">Home</a>

		<%
		// 로그아웃 상태이면 
		if (ID == null) {
		%>	
			<a href="loginForm.jsp" data-role="button" data-theme="d" data-icon="arrow-r" data-inline="true" data-ajax="false" class="ui-btn-right">Login</a>	
		<%
		// 로그인 상태이면
		} else { 
		%>
			<a href="logout.jsp" data-role="button" data-theme="d" data-icon="arrow-r" data-inline="true" data-ajax="false" class="ui-btn-right"><%= ID %>님, Logout</a>	
		<%
		} 
		%>		
	</header> 

	<!-- 2. 본문 -->
	<section data-role="content"> 
	    <br>
		<br>
		<%
		// 세션이 설정되어 있지 않은 상태  
		if (ID == null) {
		%>	
            홈...
		<%
		// 세션이 설정되어 있는 상태
		} else { 
		%>
            세션이 설정되었습니다!
		<%
		} // if
		%>				
		<br>
		<br>
		<br>
	</section> 

	<!-- 3. 푸터 -->
	<footer data-role="footer" data-theme="a" data-position="fixed">
        <%@ include file="../../include/businessInfo.inc" %>
	</footer>

</section> 

</body>
</html>