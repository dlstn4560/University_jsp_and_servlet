<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=euc-kr"%>
<html>
<head>
<title>JSP World</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ include file="../../include/jQueryMobile.inc" %>

</head>
<body>

<section data-role="page">

	<!-- 1. 헤더 -->
	<header data-role="header" data-theme="b">
		<!-- 헤더 타이틀 -->
		<h1>회원등록</h1>
	</header> 

	<!-- 2. 본문 -->
	<section data-role="content"> 

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
		
		<!-- 회원정보 출력 -->
		<h1><%= name %>(<%= ID %>)</h1>
		비밀번호: <%= pswd %><br>
		성별: <%= gender %><br>
		생일: <%= birthday %><br>
		
		<p align="center">
		<a href="joinForm.jsp" data-role="button" data-inline="true" data-ajax="false">이전</a>
		</p>

	</section>

	<!-- 3. 푸터 -->
	<footer data-role="footer" data-theme="a" data-position="fixed">
		<%@ include file="../../include/businessInfo.inc" %>
	</footer>

</section>
</body>
</html>