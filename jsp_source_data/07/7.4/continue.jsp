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

	<!-- 1. 헤더 -->
	<header class="header1">
		<h1>조건문/반복문</h1>
	</header> 

	<!-- 2. 본문 -->
	<section> 
	    <br>
		<br>
		<%
		int sum = 0;
		for(int i=1; i<=10; i++) {
            if (i%2 == 0) 
                continue; 	
				
		    sum += i;
		} 
		%>
		1부터 10까지의 홀수 합은 <%= sum %>입니다. 
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