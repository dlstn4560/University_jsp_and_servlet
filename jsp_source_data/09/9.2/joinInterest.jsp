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

<!-- �������� ���� �� �Է� �Ű������� ���� -->
<%
// �Է����� �ѱ� ó��
request.setCharacterEncoding("euc-kr");
// ȸ�� ���� �Է����� ����
String ID                = request.getParameter("ID");
String name              = request.getParameter("name");
String[] interest = request.getParameterValues("interest");
%>

<section>

	<!-- 1. ��� -->
	<header class="header1">
		<!-- ��� Ÿ��Ʋ -->
		<h1>ȸ�����</h1>
	</header> 

	<!-- 2. ���� -->
	<section>
		<!-- ȸ������ ��� -->
	    <br>
		<br>
		<!-- ȸ������ ��� --> 
		ID: <%= ID %><br>
		����: <%= name %><br>
		���ɺо�:
		<%
		for(int i=0; i<interest.length; i++) {
		%>
			<%= interest[i] %> 
		<%
		}
		%>
        <br>
		<p align="center">
		<button onclick="javascript: history.go(-1);">����</button>
		</p>
	</section>

	<!-- 3. Ǫ�� -->
	<footer class="footer1">
		<%@ include file="../../include/businessInfo.inc" %>
	</footer>

</section>

</body>
</html>