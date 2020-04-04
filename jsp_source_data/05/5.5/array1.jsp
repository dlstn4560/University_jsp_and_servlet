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
		// (1) 정수형 배열(arr) 선언
		int[] arr = new int[3];
		// (2) 배열값 할당 
		arr[0] = 10;
		arr[1] = 20;
		arr[2] = 30;
	    %>
		<!-- (3) 배열값 출력 --> 
		배열 1번째 값: <%= arr[0] %><br>
		배열 2번째 값: <%= arr[1] %><br>
		배열 3번째 값: <%= arr[2] %><br>
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