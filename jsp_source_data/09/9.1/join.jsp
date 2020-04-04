<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=euc-kr"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>JSP World</title>
<link rel="stylesheet" href="../../css/style2.css" />
</head>
</head>
<body>

<!-- 전역변수 선언 및 입력 매개변수값 추출 -->
<%
// 입력정보 한글 처리
request.setCharacterEncoding("euc-kr");
// 회원 관련 입력정보 추출
String ID       = request.getParameter("ID");
String name     = request.getParameter("name");
String pswd     = request.getParameter("pswd");
String gender   = request.getParameter("gender");
String birthday = request.getParameter("birthday");
%>

<section>

	<!-- 1. 헤더 -->
	<header class="header1">
		<!-- 헤더 타이틀 -->
		<h1>회원등록</h1>
	</header> 

	<!-- 2. 본문 -->
	<section>
	    <br>
		<br>
		<!-- 회원정보 출력 --> 
		ID: <%= ID %><br>
		성명: <%= name %><br>
		비밀번호: <%= pswd %><br>
		성별: <%= gender %><br>
		생일: <%= birthday %><br>
		
		<p align="center">
		<button onclick="javascript: history.go(-1);">이전</button>
		</p>
	</section>

	<!-- 3. 푸터 -->
	<footer class="footer1">
		<%@ include file="../../include/businessInfo.inc" %>
	</footer>

</section>

</body>
</html>