<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=euc-kr"%>
<html>
<head>
<title>JSP World</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ include file="../../include/jQueryMobile.inc" %>

<script type="text/javascript">
// ������ �ε��� �Ϸ�� �Ŀ� ������ �Լ� ���� 
$(function() {
    // HTML DOM Tree ������ ���� <div>, <div>, <div> ������Ʈ�� Ŭ���Ǹ� ����� �Լ� ����
	$('div div div').click(function() {
	    // Ŭ���� ��ü(this) ���� 'img' ������Ʈ �ν�
		var img   = $(this).find('img');
		// Ŭ�� �ø��� �̹����� ����ڰ� ��Ÿ���� �ݺ��� 
       	img.toggle();
	});
});
</script>

</head>
<body>

<section data-role="page">

	<!-- 1. ��� -->
	<header data-role="header" data-theme="b">
		<!-- ��� Ÿ��Ʋ -->
		<h1>���� ���</h1>
	</header> 

	<!-- 2. ���� -->
	<section data-role="content"> 
	
		<%
		// �̹��� �迭
		String[][] image_name  = {{"coloseum.jpg", "eiffel_tower.jpg", "venus.jpg"}, {"david.jpg", "heracles.jpg", "zeus.jpg"}};
		%>

		<!----- 3�� ũ���� �׸���: ���� ----->
        <div class="ui-grid-b">
		
		    <!----- 1��: ���� -----> 
		    <!-- 1�� 1�� -->
			<div class="ui-block-a">
			    <div class="ui-bar ui-bar-e" style="height:120px">
				    <img src="../../contents/image/<%= image_name[0][0] %>" width=100% height=100%>
			    </div>
			</div>
		    <!-- 1�� 2�� -->
			<div class="ui-block-b">
			    <div class="ui-bar ui-bar-e" style="height:120px">
				    <img src="../../contents/image/<%= image_name[0][1] %>" width=100% height=100%>
			    </div>
			</div>
		    <!-- 1�� 3�� -->
			<div class="ui-block-c">
			    <div class="ui-bar ui-bar-e" style="height:120px">
				    <img src="../../contents/image/<%= image_name[0][2] %>" width=100% height=100%>
			    </div>
			</div>
		    <!----- 1��: �� -----> 
			
		    <!----- 2��: ���� -----> 
		    <!-- 2�� 1�� -->
			<div class="ui-block-a">
			    <div class="ui-bar ui-bar-e" style="height:120px">
				    <img src="../../contents/image/<%= image_name[1][0] %>" width=100% height=100%>
			    </div>
			</div>
	        <!-- 2�� 2�� -->
			<div class="ui-block-b">
			    <div class="ui-bar ui-bar-e" style="height:120px">
				    <img src="../../contents/image/<%= image_name[1][1] %>" width=100% height=100%>
			    </div>
			</div>
	        <!-- 2�� 3�� -->
			<div class="ui-block-c">
			    <div class="ui-bar ui-bar-e" style="height:120px">
				    <img src="../../contents/image/<%= image_name[1][2] %>" width=100% height=100%>
			    </div>
			</div>
		    <!----- 2��: �� -----> 
			
		</div>
        <!----- 3�� ũ���� �׸���: �� ----->
		
	</section> 

	<!-- 3. Ǫ�� -->
	<footer data-role="footer" data-theme="a" data-position="fixed">
        <%@ include file="../../include/businessInfo.inc" %>
	</footer>

</section>
</body>
</html>