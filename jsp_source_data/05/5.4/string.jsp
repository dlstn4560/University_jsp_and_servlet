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
		// (1) String 객체 s 선언
		String s;
		// (2) 객체에 값 할당
		s = "홍길동";
		%>
		<!-- (3) s 객체 값 출력 -->
		성명은 '<%= s %>'입니다.<br>
		<!-- (4) s 객체 값의 문자열 길이 출력 -->
		성명의 길이는 총 <%= s.length() %> 자입니다.<br>
		<!-- (5) '길' 자의 문자열 위치 출력 -->
		'길'은 <%= s.indexOf("길") %>번 째 위치에 있습니다.<br>
		<!-- (6) 이름 출력 -->
		이름은 '<%= s.substring(1, 3) %>'입니다.<br>
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