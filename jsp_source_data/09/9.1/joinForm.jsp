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
		<form method="post" action="join.jsp">
		
			<fieldset>
			<legend>ȸ������</legend>
			
			<ul class="tableForm">
			
			    <!-- ��ID -->
				<li>
				<label for="ID2">ȸ��ID:</label>
				<input type="text" id="ID2" name="ID" size=10 maxlength=10 required="required"/>
				</li>
				
			    <!-- ���� -->
				<li>
				<label for="name2">����:</label>
				<input type="text" id="name2" name="name" size=10 maxlength=10 required="required"/>
				</li>
				
			    <!-- ��й�ȣ -->
				<li>
				<label for="pswd2">��й�ȣ:</label>
				<input type="password" id="pswd2" name="pswd" size=10 maxlength=10 required="required"/>
				</li>
				
                <!-- ���� -->
				<li>
				<label for="gender2_1">����:</label>
				<input type="radio" id="gender2_1" name="gender" value="��"/>��
				<input type="radio" id="gender2_2" name="gender" value="��"/>��
				</li>
				
                <!-- ���� -->
				<li>
				<label for="birthday2">����:</label>
				<input type="date" id="birthday2" name="birthday" />
				</li>
				
			</ul>

			<p align="center">
			<input type="submit" value="���">
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