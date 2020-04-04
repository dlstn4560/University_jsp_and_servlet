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
    // HTML DOM Tree 구조에 따라 <ul>, <li>, <a> 엘리먼트가 클릭되면 실행될 함수 정의
	$('div div div').click(function() {
	    // 클릭된 개체(this) 내의 각 엘리먼트를 찾아(find), 그 속성(attr) 또는 데이터(text) 인식
		var img   = $(this).find('img');
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
		// 이미지 배열과 그리드 열 위치 배열
		String[][] image_name  = {{"coloseum.jpg", "eiffel_tower.jpg", "venus.jpg"}, {"david.jpg", "heracles.jpg", "zeus.jpg"}};
		String[] grid_type = {"ui-block-a", "ui-block-b", "ui-block-c"}; 						  
		%>

		<!-- 3열 크기의 그리드 -->
        <div class="ui-grid-b">
		
		    <%
			// 1~2행 반복 
			for (int i=0; i<2; i++) {
			    // 1~3열 반복 
			    for (int j=0; j<3; j++) { 
			    %>
			
				<!-- (i+1)행 (j+1)열 -->
				<div class="<%= grid_type[j] %>">
					<div class="ui-bar ui-bar-e" style="height:120px">
						<img src="../../contents/image/<%= image_name[i][j] %>" width=100% height=100%>
					</div>
				</div>
			
			    <%
				} // for j
			} // for i
			%>
			
		</div><!-- /grid-c -->

	</section> 

	<!-- 3. 푸터 -->
	<footer data-role="footer" data-theme="a" data-position="fixed">
        <%@ include file="../../include/businessInfo.inc" %>
	</footer>

</section>
</body>
</html>