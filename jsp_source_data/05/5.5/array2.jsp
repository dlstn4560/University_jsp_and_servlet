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
		// (1) 정수형 2차원 배열(arr) 선언
		int[][] arr = new int[2][3];
		// (2) 배열값 할당 
		arr[0][0] = 11;
		arr[0][1] = 12;
		arr[0][2] = 13;
		arr[1][0] = 21;
		arr[1][1] = 22;
		arr[1][2] = 23;
	    %>
		<!-- (3) 배열값 출력 --> 
		배열 1행 1열 값: <%= arr[0][0] %><br>
		배열 1행 2열 값: <%= arr[0][1] %><br>
		배열 1행 3열 값: <%= arr[0][2] %><br>
		배열 2행 1열 값: <%= arr[1][0] %><br>
		배열 2행 2열 값: <%= arr[1][1] %><br>
		배열 2행 3열 값: <%= arr[1][2] %><br>
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