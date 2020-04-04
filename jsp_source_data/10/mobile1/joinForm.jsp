<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=euc-kr"%>
<html>
<head>
<title>JSP World</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ include file="../../include/jQueryMobile.inc" %>

</head>
<body>

<section data-role="page" id="page1">

	<!-- 1. ��� -->
	<header data-role="header" data-theme="b">
		<!-- ��� Ÿ��Ʋ -->
		<h1>ȸ�����</h1>
	</header> 

	<!-- 2. ���� -->
	<section data-role="content"> 

		<form method=post action=join.jsp data-ajax="false">
		
			<fieldset data-role="fieldcontain">
			
			    <!-- ��ID -->
				<label for="ID2">ȸ��ID:</label>
				<input type="text" id="ID2" name="ID" size=10 maxlength=10 required="required"/>
				
			    <!-- ���� -->
				<label for="name2">����:</label>
				<input type="text" id="name2" name="name" size=10 maxlength=10 required="required"/>
				
			    <!-- ��й�ȣ -->
				<label for="pswd2">��й�ȣ:</label>
				<input type="password" id="pswd2" name="pswd" size=10 maxlength=10 required="required"/>
				
                <!-- ���� -->
				<fieldset data-role="controlgroup" data-type="horizontal">
					<legend>����:</legend>
						<input type="radio" name="gender" id="gender-1" value="��"/>
						<label for="gender-1">��</label>
						<input type="radio" name="gender" id="gender-2" value="��"/>
						<label for="gender-2">��</label>
				</fieldset>
				
                <!-- ���� -->
				<label for="birthday2">����:</label>
				<input type="date" id="birthday2" name="birthday" required="required"/>


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