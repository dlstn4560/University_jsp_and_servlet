<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=euc-kr"%>
<html>
<head>
<title>JSP World</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../../css/style1.css" />
</head>
<body>

<!-- 세션정보 추출 -->
<%
String ID   = (String)session.getAttribute("ID");
String name = (String)session.getAttribute("name");
%>

<section>

	<!-- 1. 헤더 -->
	<header class="header1">
		<h1>JSP 내장객체</h1>
		
		<!-- 홈 -->
		<a href="index.jsp"><font color="yellow">Home</font></a>
		&nbsp&nbsp  
        
		<%
		// 세션이 설정되어 있지 않은 상태  
		if (ID == null) {
		%>	
			<a href="sessionStart.jsp"><font color="yellow">Login</font></a>	
		<%
		// 세션이 설정되어 있는 상태
		} else { 
		%>
			<a href="sessionStop.jsp"><font color="yellow"><%= ID %>님, Logout</font></a>	
		<%
		} // if
		%>		
	</header> 

	<!-- 2. 본문 -->
	<section> 
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
	<footer class="footer1">
	    <center>
        <%@ include file="../../include/businessInfo.inc" %>
	    </center>
	</footer>

</section> 

</body>
</html>