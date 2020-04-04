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
    // HTML DOM Tree ������ ���� <ul>, <li>, <a> ������Ʈ�� Ŭ���Ǹ� ����� �Լ� ����
	$('div div div').click(function() {
	    // Ŭ���� ��ü(this) ���� �� ������Ʈ�� ã��(find), �� �Ӽ�(attr) �Ǵ� ������(text) �ν�
		var img   = $(this).find('img');
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
		// �̹��� �迭�� �׸��� �� ��ġ �迭
		String[][] image_name  = {{"coloseum.jpg", "eiffel_tower.jpg", "venus.jpg"}, {"david.jpg", "heracles.jpg", "zeus.jpg"}};
		String[] grid_type = {"ui-block-a", "ui-block-b", "ui-block-c"}; 						  
		%>

		<!-- 3�� ũ���� �׸��� -->
        <div class="ui-grid-b">
		
		    <%
			// 1~2�� �ݺ� 
			for (int i=0; i<2; i++) {
			    // 1~3�� �ݺ� 
			    for (int j=0; j<3; j++) { 
			    %>
			
				<!-- (i+1)�� (j+1)�� -->
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

	<!-- 3. Ǫ�� -->
	<footer data-role="footer" data-theme="a" data-position="fixed">
        <%@ include file="../../include/businessInfo.inc" %>
	</footer>

</section>
</body>
</html>