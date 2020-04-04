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
	<!-- 1. 헤더 -->
	<header class="header1">
		<!-- 헤더 타이틀 -->
		<h1>JSP 내장객체</h1>
	</header> 

	<!-- 2. 본문 -->
	<section>
        <br>
		<form method="post" action="login.jsp">
		
			<fieldset>
			<legend>회원정보</legend>
			
			<ul class="tableForm">
			
			    <!-- 고객ID -->
				<li>
				<label for="ID2">회원ID:</label>
				<input type="text" id="ID2" name="ID" size=10 maxlength=10 required="required"/>
				</li>

			    <!-- 비밀번호 -->
				<li>
				<label for="pswd2">비밀번호:</label>
				<input type="password" id="pswd2" name="pswd" size=10 maxlength=10 required="required"/>
				</li>
				
			</ul>

			<p align="center">
			<input type="submit" value="로그인">
			</p>
			
			</fieldset>
			
		</form>
		<br>	
	</section>

	<!-- 3. 푸터 -->
	<footer class="footer1">
		<%@ include file="../../include/businessInfo.inc" %>
	</footer>

</section>
</body>
</html>