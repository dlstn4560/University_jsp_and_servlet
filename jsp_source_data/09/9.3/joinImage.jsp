<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=euc-kr"%>

<%@ page import = "com.oreilly.servlet.MultipartRequest" %>
<%@ page import = "com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import = "java.util.*" %>
<%@ page import = "java.io.*" %>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>JSP World</title>
<link rel="stylesheet" href="../../css/style2.css" />
</head>
</head>
<body>

<section>

	<!-- 1. ��� -->
	<header class="header1">
		<!-- ��� Ÿ��Ʋ -->
		<h1>ȸ�����</h1>
	</header> 

	<!-- 2. ���� -->
	<section>

	    <%
		try {
		%>
	
			<!-- �������� ���� �� �Է� �Ű������� ���� -->
			<%
			// �ѱ� ó��
			String encoding    = "euc-kr";
			// Upload ������ �ִ� ũ��(10 MBytes) 
			int sizeLimit = 10 * 1024 * 1024; 
			// Upload ������ ����Ǵ� ����(���� ���丮�κ����� ���) 
			String relativeDirectory = "contents/member_uploaded";
			ServletContext context = getServletContext();
			// Upload ������ ����Ǵ� ������(����ηκ��� �ν�)
			String realDirectory = context.getRealPath(relativeDirectory);
			// Upload ������ ������
			// �̹����� �ߺ� ��, ���� ��
			// MultipartRequest multi = new MultipartRequest(request, realDirectory, sizeLimit, encoding);
			// �̹����� �ߺ� ��, �ٸ� �̸����� ����  
			MultipartRequest multi = new MultipartRequest(request, realDirectory, sizeLimit, encoding, new DefaultFileRenamePolicy());
			
			///// �������� ���޵� �Է����� ����
			// ID, name ����
			String ID              = multi.getParameter("ID");
			String name            = multi.getParameter("name");
			// ���ϸ� ����
			String my_image = multi.getOriginalFileName("my_image");			
			%>
			
			<br>
			<!-- ȸ������ ��� --> 
			ID: <%= ID %><br>
			����: <%= name %><br><br>
			
	        <!-- ����� �̹����� ��� --> 
			<img width="30%" src="../../contents/member_uploaded/<%= my_image %>">
			
			<p align="center">
			<button onclick="javascript: history.go(-1);">����</button>
			</p>
			
		<%		
		}catch(IOException ioe){
			out.println(ioe);
		}catch(Exception ex){
			out.println(ex);
		}
		%>		
		
	</section>

	<!-- 3. Ǫ�� -->
	<footer class="footer1">
		<%@ include file="../../include/businessInfo.inc" %>
	</footer>

</section>

</body>
</html>