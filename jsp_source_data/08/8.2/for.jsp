<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=euc-kr"%>
<html>
<head>
<title>JSP World</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../../css/style1.css" />
</head>
<body>

<section>

	<!-- 1. «Ï¥ı -->
	<header class="header1">
		<h1>JSP ≥ª¿Â∞¥√º</h1>
	</header> 

	<!-- 2. ∫ªπÆ -->
	<section> 
	    <br>
		<br>
		<%
		int i=2;
		int k;
		for (int j=1; j<=9; j++) { 
			k = i * j;
			out.print(i + " X " + j + " = " + k + "<br>");
		} 
		%>
		<br>
		<br>
		<br>
	</section> 

	<!-- 3. «™≈Õ -->
	<footer class="footer1">
	    <center>
        <%@ include file="../../include/businessInfo.inc" %>
	    </center>
	</footer>

</section> 

</body>
</html>