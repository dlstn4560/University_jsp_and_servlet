<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=euc-kr"%>
<html>
<head>
<title>JSP World</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- jQuery/jQuery Mobile ���̺귯�� ��� -->
<%@ include file="../../include/jQueryMobile.inc" %>

<!----- jqPlot ���̺귯�� ���: ���� ----->
<!-- CSS �⺻ ���̺귯�� -->
<link class="include" rel="stylesheet" type="text/css" href="../../jqplot/jquery.jqplot.min.css" />
<!-- �ڹٽ�ũ��Ʈ �⺻ ���̺귯�� -->
<script type="text/javascript" src="../../jqplot/jquery.jqplot.min.js"></script>
<script type="text/javascript" src="../../jqplot/examples/syntaxhighlighter/scripts/shCore.min.js"></script>
<script type="text/javascript" src="../../jqplot/examples/syntaxhighlighter/scripts/shBrushJScript.min.js"></script>
<script type="text/javascript" src="../../jqplot/examples/syntaxhighlighter/scripts/shBrushXml.min.js"></script>
<!-- ���� ��Ʈ �ڹٽ�ũ��Ʈ ���̺귯�� -->
<script type="text/javascript" src="../../jqplot/plugins/jqplot.pieRenderer.min.js"></script>
<script type="text/javascript" src="../../jqplot/plugins/jqplot.donutRenderer.min.js"></script>
<!----- jqPlot ���̺귯�� ���: �� ----->

<script type="text/javascript">
$(document).ready(function(){
    // ������ �ø��� 
    var s1 = [["5��", 200], ["6��", 600], ["7��", 700], ["8��", 1000]];
     
    // id�� chart1�� ������ ������ �ø�� ��Ʈ�� ���
    var plot1 = $.jqplot('chart1', [s1], {
        seriesDefaults:{
		    // ���� ��Ʈ�� �׸��� 
            renderer:$.jqplot.PieRenderer,
			rendererOptions: {
			    // ���� �κп� ������ �� ���(����Ʈ�� %������ ��ȯ�Ͽ� ������)
			    showDataLabels: true
			}
        },	
		// ���� 
        legend: {
		    // ���� ���
		    show:true, 
			// ���� ��ġ: ���� ������
			location: 'e'
		}
    });
});
</script>

</head>
<body>

<!-- ������ ���� ���� -->
<section data-role="page">

	<!-- 1. ��� -->
	<header data-role="header" data-theme="b">
		<!-- ��� Ÿ��Ʋ -->
		<h1>���� ���� ����</h1>
	</header> 

	<!-- 2. ���� -->
	<section data-role="content"> 
        <!-- ��Ʈ ���� -->	
        <div id="chart1" style="width:100%; height:400px;"></div>
	</section> 

	<!-- 3. Ǫ�� -->
	<footer data-role="footer" data-theme="a" data-position="fixed">
	    <!-- Ǫ�� ����: ȸ������ -->
        <h3>(��)JSP World ���� ������ �Ｚ�� 1234</h3>
	</footer>

</section> 

</body>
</html>