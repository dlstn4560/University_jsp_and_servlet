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

	<!-- 1. 헤더 -->
	<header class="header1">
		<!-- 헤더 타이틀 -->
		<h1>회원등록</h1>
	</header> 

	<!-- 2. 본문 -->
	<section>

	    <%
		try {
		%>
	
			<!-- 전역변수 선언 및 입력 매개변수값 추출 -->
			<%
			// 한글 처리
			String encoding    = "euc-kr";
			// Upload 파일의 최대 크기(10 MBytes) 
			int sizeLimit = 10 * 1024 * 1024; 
			// Upload 파일이 저장되는 폴더(가상 디렉토리로부터의 경로) 
			String relativeDirectory = "contents/member_uploaded";
			ServletContext context = getServletContext();
			// Upload 파일이 저장되는 절대경로(상대경로로부터 인식)
			String realDirectory = context.getRealPath(relativeDirectory);
			// Upload 파일을 저장함
			// 이미지명 중복 시, 덮어 씀
			// MultipartRequest multi = new MultipartRequest(request, realDirectory, sizeLimit, encoding);
			// 이미지명 중복 시, 다른 이름으로 저장  
			MultipartRequest multi = new MultipartRequest(request, realDirectory, sizeLimit, encoding, new DefaultFileRenamePolicy());
			
			///// 폼문에서 전달된 입력정보 추출
			// ID, name 추출
			String ID              = multi.getParameter("ID");
			String name            = multi.getParameter("name");
			// 파일명 추출
			String my_image = multi.getOriginalFileName("my_image");			
			%>
			
			<br>
			<!-- 회원정보 출력 --> 
			ID: <%= ID %><br>
			성명: <%= name %><br><br>
			
	        <!-- 저장된 이미지의 출력 --> 
			<img width="30%" src="../../contents/member_uploaded/<%= my_image %>">
			
			<p align="center">
			<button onclick="javascript: history.go(-1);">이전</button>
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
	<footer class="footer1">
		<%@ include file="../../include/businessInfo.inc" %>
	</footer>

</section>

</body>
</html>