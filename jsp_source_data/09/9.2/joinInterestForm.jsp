<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=euc-kr"%>
<html>
<head>
<meta charset="utf-8">
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
		<form method="post" action="joinInterest.jsp">
		
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
				
                <!-- ���ɺо� -->				    
	            <li>
				<label for="interest2_1">���ɺо�:</label>
				<input type="checkbox" id="interest2_1" name="interest" value="�濵/����" />�濵/����<br>
				<input type="checkbox" id="interest2_2" name="interest" value="����/�̼�" />����/�̼�<br>				
				<input type="checkbox" id="interest2_3" name="interest" value="�ڱ���" />	�ڱ���<br>				
				<input type="checkbox" id="interest2_4" name="interest" value="��ǻ��" />��ǻ��
	            </li>
				
	        </ul>
				
			<p align="center">
			<button type=submit>���</button>
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