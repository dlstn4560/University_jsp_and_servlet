<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=euc-kr"%>
<html>
<head>
<title>JSP World</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ include file="../../include/jQueryMobile.inc" %>

<script type="text/javascript">
// 웹문서 로딩이 완료된 후에 실행할 함수 정의 
$(function() {
    // HTML DOM Tree 구조에 따라 <div>, <div>, <div> 엘리먼트가 클릭되면 실행될 함수 정의
	$('div div div').click(function() {
	    // 클릭된 개체(this) 내의 'img' 엘리먼트 인식
		var img   = $(this).find('img');
		// 클릭 시마다 이미지가 사라자고 나타남을 반복함 
       	img.toggle();
	});
});
</script>

</head>
<body>

<section data-role="page">

	<!-- 1. 헤더 -->
	<header data-role="header" data-theme="b">
		<!-- 헤더 타이틀 -->
		<h1>사진 목록</h1>
	</header> 

	<!-- 2. 본문 -->
	<section data-role="content"> 
	
		<%
		// 이미지 배열
		String[][] image_name  = {{"coloseum.jpg", "eiffel_tower.jpg", "venus.jpg"}, {"david.jpg", "heracles.jpg", "zeus.jpg"}};
		%>

		<!----- 3열 크기의 그리드: 시작 ----->
        <div class="ui-grid-b">
		
		    <!----- 1행: 시작 -----> 
		    <!-- 1행 1열 -->
			<div class="ui-block-a">
			    <div class="ui-bar ui-bar-e" style="height:120px">
				    <img src="../../contents/image/<%= image_name[0][0] %>" width=100% height=100%>
			    </div>
			</div>
		    <!-- 1행 2열 -->
			<div class="ui-block-b">
			    <div class="ui-bar ui-bar-e" style="height:120px">
				    <img src="../../contents/image/<%= image_name[0][1] %>" width=100% height=100%>
			    </div>
			</div>
		    <!-- 1행 3열 -->
			<div class="ui-block-c">
			    <div class="ui-bar ui-bar-e" style="height:120px">
				    <img src="../../contents/image/<%= image_name[0][2] %>" width=100% height=100%>
			    </div>
			</div>
		    <!----- 1행: 끝 -----> 
			
		    <!----- 2행: 시작 -----> 
		    <!-- 2행 1열 -->
			<div class="ui-block-a">
			    <div class="ui-bar ui-bar-e" style="height:120px">
				    <img src="../../contents/image/<%= image_name[1][0] %>" width=100% height=100%>
			    </div>
			</div>
	        <!-- 2행 2열 -->
			<div class="ui-block-b">
			    <div class="ui-bar ui-bar-e" style="height:120px">
				    <img src="../../contents/image/<%= image_name[1][1] %>" width=100% height=100%>
			    </div>
			</div>
	        <!-- 2행 3열 -->
			<div class="ui-block-c">
			    <div class="ui-bar ui-bar-e" style="height:120px">
				    <img src="../../contents/image/<%= image_name[1][2] %>" width=100% height=100%>
			    </div>
			</div>
		    <!----- 2행: 끝 -----> 
			
		</div>
        <!----- 3열 크기의 그리드: 끝 ----->
		
	</section> 

	<!-- 3. 푸터 -->
	<footer data-role="footer" data-theme="a" data-position="fixed">
        <%@ include file="../../include/businessInfo.inc" %>
	</footer>

</section>
</body>
</html>