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
		String ID         = request.getParameter("ID");
		String name       = request.getParameter("name");
		String[] interest = request.getParameterValues("interest");
		%>
		
		<!-- ȸ������ ��� -->
		<h1><%= name %>(<%= ID %>)</h1>
		���ɺо�: 
		<%
		for(int i=0; i<interest.length; i++) {
		%>
			<%= interest[i] %>
		<%
		}
		%>

		<p align="center">
		<a href="joinInterestForm.jsp" data-role="button" data-inline="true" data-ajax="false">����</a>
		</p>
		
	</section>

	<!-- 3. Ǫ�� -->
	<footer data-role="footer" data-theme="a" data-position="fixed">
		<%@ include file="../../include/businessInfo.inc" %>
	</footer>

</section>
</body>
</html>