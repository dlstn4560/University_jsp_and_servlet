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

		<form method="post" action="joinImage.jsp" enctype="multipart/form-data" data-ajax="false">
		
			<fieldset data-role="fieldcontain">
			
			    <!-- 회원ID -->
				<label for="ID">회원ID:</label>
				<input type="text" id="ID" name="ID" size=10 maxlength=10 required="required"/>
				
			    <!-- 성명 -->
				<label for="name">성명:</label>
				<input type="text" id="name" name="name" size=10 maxlength=10 required="required"/>

                <!-- 사진 -->				    
				<fieldset data-role="controlgroup">
				    <legend for="my_image">사진:</legend>
                    <input type="file" name="my_image" id="my_image" />
				</fieldset>					
	
			</fieldset>
			
			<p align="center">
			<button type="submit" data-role="button" data-inline="true">등록</button>
			</p>
		</form>
		
	</section>

	<!-- 3. 푸터 -->
	<footer data-role="footer" data-theme="a" data-position="fixed">
		<%@ include file="../../include/businessInfo.inc" %>
	</footer>

</section>
</body>
</html>