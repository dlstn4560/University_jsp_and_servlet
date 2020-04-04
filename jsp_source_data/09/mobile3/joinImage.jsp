<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=euc-kr"%>
<%@ page import = "com.oreilly.servlet.MultipartRequest" %>
<%@ page import = "com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import = "java.util.*" %>
<%@ page import = "java.io.*" %>

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

	    <%
		try {
		%>
	
			<!-- �������� ���� �� �Է� �Ű������� ���� -->
			<%
			// �ѱ� ó��
			String encoding    = "euc-kr";
			// Upload ������ �ִ� ũ��(10 MBytes) 
			int sizeLimit = 10 * 1024 * 1024; 
			// Upload ������ ����Ǵ� ����(���� �����κ����� �����) 
			String relativeDirectory = "contents/member_uploaded";
			ServletContext context = getServletContext();
			// Upload ������ ����Ǵ� ������(����ηκ��� �ν�)
			String realDirectory = context.getRealPath(relativeDirectory);
			// Upload ������ ������
			// �̹����� �ߺ� ��, �ٸ� �̸����� ����  
			// MultipartRequest multi = new MultipartRequest(request, realDirectory, sizeLimit, encoding, new DefaultFileRenamePolicy());
			// �̹����� �ߺ� ��, ���� ��
			MultipartRequest multi = new MultipartRequest(request, realDirectory, sizeLimit, encoding);

			///// �������� ���޵� �Է����� ����
			// ID, name ����
			String ID              = multi.getParameter("ID");
			String name            = multi.getParameter("name");
			// ���ϸ� ����
			String my_image = multi.getOriginalFileName("my_image");			
			%>
	   
	        <!-- ����� �̹����� ��� --> 
			<center>
			<img width="60%" src="../../contents/member_uploaded/<%= my_image %>"  alt="����">
    		<h1><%= name %>(<%= ID %>)</h1>
			</center>
			
			<p align="center">
			<a href="joinImageForm.jsp" data-role="button" data-inline="true" data-ajax="false">����</a>
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
	<footer data-role="footer" data-theme="a" data-position="fixed">
		<%@ include file="../../include/businessInfo.inc" %>
	</footer>

</section>
</body>
</html>