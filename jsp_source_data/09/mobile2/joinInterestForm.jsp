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

		<form method="post" action="joinInterest.jsp" data-ajax="false">
		
			<fieldset data-role="fieldcontain">
			
			    <!-- 고객ID -->
				<label for="ID2">회원ID:</label>
				<input type="text" id="ID2" name="ID" size=10 maxlength=10 required="required"/>
	
			    <!-- 성명 -->
				<label for="name2">성명:</label>
				<input type="text" id="name2" name="name" size=10 maxlength=10 required="required"/>
	
                <!-- 관심분야 -->				    
				<fieldset data-role="controlgroup">
				    <legend>관심분야:</legend>
                    <input type="checkbox" name="interest" id="checkbox-1" value="경영/경제" />
					<label for="checkbox-1">경영/경제</label>

					<input type="checkbox" name="interest" id="checkbox-2" value="음악/미술" />
					<label for="checkbox-2">음악/미술</label>
					
					<input type="checkbox" name="interest" id="checkbox-3" value="자기계발" />
					<label for="checkbox-3">자기계발</label>				
					
					<input type="checkbox" name="interest" id="checkbox-4" value="컴퓨터" />
					<label for="checkbox-4">컴퓨터</label>
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