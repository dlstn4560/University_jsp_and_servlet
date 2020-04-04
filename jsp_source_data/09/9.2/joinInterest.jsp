<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=euc-kr"%>
<%@ page import="java.sql.*" %>
<html>
<head>
<meta charset="utf-8">
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
String ID                = request.getParameter("ID");
String name              = request.getParameter("name");
String[] interest = request.getParameterValues("interest");
%>

<section>

	<!-- 1. 헤더 -->
	<header class="header1">
		<!-- 헤더 타이틀 -->
		<h1>회원등록</h1>
	</header> 

	<!-- 2. 본문 -->
	<section>
		<!-- 회원정보 출력 -->
	    <br>
		<br>
		<!-- 회원정보 출력 --> 
		ID: <%= ID %><br>
		성명: <%= name %><br>
		관심분야:
		<%
		for(int i=0; i<interest.length; i++) {
		%>
			<%= interest[i] %> 
		<%
		}
		%>
        <br>
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