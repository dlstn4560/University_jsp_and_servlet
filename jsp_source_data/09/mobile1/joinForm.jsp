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

	<!-- 1. 헤더 -->
	<header data-role="header" data-theme="b">
		<!-- 헤더 타이틀 -->
		<h1>회원등록</h1>
	</header> 

	<!-- 2. 본문 -->
	<section data-role="content"> 

		<form method=post action=join.jsp data-ajax="false">
		
			<fieldset data-role="fieldcontain">
			
			    <!-- 고객ID -->
				<label for="ID2">회원ID:</label>
				<input type="text" id="ID2" name="ID" size=10 maxlength=10 required="required"/>
				
			    <!-- 성명 -->
				<label for="name2">성명:</label>
				<input type="text" id="name2" name="name" size=10 maxlength=10 required="required"/>
				
			    <!-- 비밀번호 -->
				<label for="pswd2">비밀번호:</label>
				<input type="password" id="pswd2" name="pswd" size=10 maxlength=10 required="required"/>
				
                <!-- 성별 -->
				<fieldset data-role="controlgroup" data-type="horizontal">
					<legend>성별:</legend>
						<input type="radio" name="gender" id="gender-1" value="남"/>
						<label for="gender-1">남</label>
						<input type="radio" name="gender" id="gender-2" value="여"/>
						<label for="gender-2">여</label>
				</fieldset>
				
                <!-- 생일 -->
				<label for="birthday2">생일:</label>
				<input type="date" id="birthday2" name="birthday" required="required"/>


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