<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=euc-kr"%>
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
        <br>
		<form method="post" action="joinImage.jsp" enctype="multipart/form-data">
		
			<fieldset>
			<legend>ȸ������</legend>
			
			<ul class="tableForm">
			
			    <!-- ȸ��ID -->
				<li>
				<label for="ID2">ȸ��ID:</label>
				<input type="text" id="ID2" name="ID" size=10 maxlength=10 required="required"/>
				</li>
				
			    <!-- ���� -->
				<li>
				<label for="name2">����:</label>
				<input type="text" id="name2" name="name" size=10 maxlength=10 required="required"/>
				</li>
				
                <!-- ���� -->				    
				<li>
				<label for="my_image2">����:</label>
				<input type="file" id="my_image2" name="my_image" />
				</li>
				
			</ul>
			
			<p align="center">
			<button type="submit" data-role="button" data-inline="true">���</button>
			</p>
			
			</fieldset>
			
		</form>
        <br>		
	</section>

	<!-- 3. Ǫ�� -->
	<footer class="footer1">
		<%@ include file="../../include/businessInfo.inc" %>
	</footer>

</section>

</body>
</html>