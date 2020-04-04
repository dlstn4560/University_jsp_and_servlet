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
		<h1>변수/연산자/클래스</h1>
	</header> 

	<!-- 2. 본문 -->
	<section> 
	    <br>
		<br>
		<%
		// (1) 정수형 변수(sum, res) 선언
		int sum, res;
		// (2) sum 변수값 할당
		sum = 120;
		// (3) b 변수값 할당 
		res = 5 + sum++;
		%>
		<!-- (4) 변수값 출력 -->
		sum 값은 <%= sum %>입니다.<br>
		res 값은 <%= res %>입니다.<br>
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