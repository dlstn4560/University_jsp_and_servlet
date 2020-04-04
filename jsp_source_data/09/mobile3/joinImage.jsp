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

	<!-- 1. 헤더 -->
	<header data-role="header" data-theme="b">
		<!-- 헤더 타이틀 -->
		<h1>회원등록</h1>
	</header> 

	<!-- 2. 본문 -->
	<section data-role="content"> 

	    <%
		try {
		%>
	
			<!-- 전역변수 선언 및 입력 매개변수값 추출 -->
			<%
			// 한글 처리
			String encoding    = "euc-kr";
			// Upload 파일의 최대 크기(10 MBytes) 
			int sizeLimit = 10 * 1024 * 1024; 
			// Upload 파일이 저장되는 폴더(현재 폴더로부터의 상대경로) 
			String relativeDirectory = "contents/member_uploaded";
			ServletContext context = getServletContext();
			// Upload 파일이 저장되는 절대경로(상대경로로부터 인식)
			String realDirectory = context.getRealPath(relativeDirectory);
			// Upload 파일을 저장함
			// 이미지명 중복 시, 다른 이름으로 저장  
			// MultipartRequest multi = new MultipartRequest(request, realDirectory, sizeLimit, encoding, new DefaultFileRenamePolicy());
			// 이미지명 중복 시, 덮어 씀
			MultipartRequest multi = new MultipartRequest(request, realDirectory, sizeLimit, encoding);

			///// 폼문에서 전달된 입력정보 추출
			// ID, name 추출
			String ID              = multi.getParameter("ID");
			String name            = multi.getParameter("name");
			// 파일명 추출
			String my_image = multi.getOriginalFileName("my_image");			
			%>
	   
	        <!-- 저장된 이미지의 출력 --> 
			<center>
			<img width="60%" src="../../contents/member_uploaded/<%= my_image %>"  alt="사진">
    		<h1><%= name %>(<%= ID %>)</h1>
			</center>
			
			<p align="center">
			<a href="joinImageForm.jsp" data-role="button" data-inline="true" data-ajax="false">이전</a>
			</p>

		<%		
		}catch(IOException ioe){
			out.println(ioe);
		}catch(Exception ex){
			out.println(ex);
		}
		%>		
		
	</section>

	<!-- 3. 푸터 -->
	<footer data-role="footer" data-theme="a" data-position="fixed">
		<%@ include file="../../include/businessInfo.inc" %>
	</footer>

</section>
</body>
</html>