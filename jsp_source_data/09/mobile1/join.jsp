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

	<!-- 1. ��� -->
	<header data-role="header" data-theme="b">
		<!-- ��� Ÿ��Ʋ -->
		<h1>ȸ�����</h1>
	</header> 

	<!-- 2. ���� -->
	<section data-role="content"> 

		<!-- �������� ���� �� �Է� �Ű������� ���� -->
		<%
		// �Է����� �ѱ� ó��
		request.setCharacterEncoding("euc-kr");
		// ȸ�� ���� �Է����� ����
		String ID       = request.getParameter("ID");
		String name     = request.getParameter("name");
		String pswd     = request.getParameter("pswd");
		String gender   = request.getParameter("gender");
		String birthday = request.getParameter("birthday");
		%>
		
		<!-- ȸ������ ��� -->
		<h1><%= name %>(<%= ID %>)</h1>
		��й�ȣ: <%= pswd %><br>
		����: <%= gender %><br>
		����: <%= birthday %><br>
		
		<p align="center">
		<a href="joinForm.jsp" data-role="button" data-inline="true" data-ajax="false">����</a>
		</p>

	</section>

	<!-- 3. Ǫ�� -->
	<footer data-role="footer" data-theme="a" data-position="fixed">
		<%@ include file="../../include/businessInfo.inc" %>
	</footer>

</section>
</body>
</html>