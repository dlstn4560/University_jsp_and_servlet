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

		<form method="post" action="joinImage.jsp" enctype="multipart/form-data" data-ajax="false">
		
			<fieldset data-role="fieldcontain">
			
			    <!-- ȸ��ID -->
				<label for="ID">ȸ��ID:</label>
				<input type="text" id="ID" name="ID" size=10 maxlength=10 required="required"/>
				
			    <!-- ���� -->
				<label for="name">����:</label>
				<input type="text" id="name" name="name" size=10 maxlength=10 required="required"/>

                <!-- ���� -->				    
				<fieldset data-role="controlgroup">
				    <legend for="my_image">����:</legend>
                    <input type="file" name="my_image" id="my_image" />
				</fieldset>					
	
			</fieldset>
			
			<p align="center">
			<button type="submit" data-role="button" data-inline="true">���</button>
			</p>
		</form>
		
	</section>

	<!-- 3. Ǫ�� -->
	<footer data-role="footer" data-theme="a" data-position="fixed">
		<%@ include file="../../include/businessInfo.inc" %>
	</footer>

</section>
</body>
</html>