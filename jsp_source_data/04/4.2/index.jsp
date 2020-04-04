<!DOCTYPE HTML>
<!-- [1] 지시문(page 디렉티비) --> 
<%@ page contentType="text/html;charset=euc-kr"%>
<!-- [1] 지시문(page 디렉티비): Calendar 클래스가 정의된 패키지 -->
<%@ page import = "java.util.*"%> 
<html>
<head>
<title>JSP World</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../../css/style1.css" />
</head>
<body>

<section>

	<!-- 1. 헤더 -->
	<header  class="header1">
	    <center>
		<h1>웹 화면구성 기초</h1>
		</center>
	</header> 

	<!-- 2. 본문 -->
	<section> 
	    <br>
		<br>		
		<!-- [3] 스크립트릿: 시작 --> 
		<%
		    // [2] 주석문: 날짜 관련 today 객체 생성
			Date today = new Date();
		%>
		<!-- [3] 스크립트릿: 끝 --> 
		
		<!-- [4] 표현식을 이용한 출력 -->
		현재 날짜는 <%= today %>입니다.
		<br>
		<br>
		<br>
	</section> 

	<!-- 3. 푸터 -->
	<footer class="footer1">
	    <center>
        <!-- [1] 지시문(include 디렉티비) --> 
        <%@ include file="../../include/businessInfo.inc" %>
	    </center>
	</footer>

</section> 

</body>
</html>