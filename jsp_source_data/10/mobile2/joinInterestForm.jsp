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

		<form method="post" action="joinInterest.jsp" data-ajax="false">
		
			<fieldset data-role="fieldcontain">
			
			    <!-- ��ID -->
				<label for="ID2">ȸ��ID:</label>
				<input type="text" id="ID2" name="ID" size=10 maxlength=10 required="required"/>
	
			    <!-- ���� -->
				<label for="name2">����:</label>
				<input type="text" id="name2" name="name" size=10 maxlength=10 required="required"/>
	
                <!-- ���ɺо� -->				    
				<fieldset data-role="controlgroup">
				    <legend>���ɺо�:</legend>
                    <input type="checkbox" name="interest" id="checkbox-1" value="�濵/����" />
					<label for="checkbox-1">�濵/����</label>

					<input type="checkbox" name="interest" id="checkbox-2" value="����/�̼�" />
					<label for="checkbox-2">����/�̼�</label>
					
					<input type="checkbox" name="interest" id="checkbox-3" value="�ڱ���" />
					<label for="checkbox-3">�ڱ���</label>				
					
					<input type="checkbox" name="interest" id="checkbox-4" value="��ǻ��" />
					<label for="checkbox-4">��ǻ��</label>
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