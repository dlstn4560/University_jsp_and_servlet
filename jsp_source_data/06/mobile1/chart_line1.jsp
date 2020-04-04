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
<!-- ī�װ��� �ڹٽ�ũ��Ʈ ���̺귯�� -->
<script type="text/javascript" src="../../jqplot/plugins/jqplot.categoryAxisRenderer.min.js"></script>
<!-- x, y�� �� --> 
<script type="text/javascript" src="../../jqplot/plugins/jqplot.canvasTextRenderer.min.js"></script>
<script type="text/javascript" src="../../jqplot/plugins/jqplot.canvasAxisLabelRenderer.min.js"></script>
<!----- jqPlot ���̺귯�� ���: �� ----->

<script type="text/javascript">
$(document).ready(function(){
	// x���� �� 
    var x = ['5', '6', '7', '8'];
    // x�࿡ �����ϴ� y��(������ �ø���) 
    var s1 = [200, 600, 700, 1000];
     
    // id�� chart1�� ������ y������ ��Ʈ�� ���
    var plot1 = $.jqplot('chart1', [s1], {
        // x, y�� ����	
        axes: {
			// x��
            xaxis: {
			    // x�࿡ ������ �ø�� �ϳ��� ī�װ����� ���� 
                renderer: $.jqplot.CategoryAxisRenderer,
				// x�� ����
                ticks: x, 				
				// x�� �� ���
                label:'��'
            },
			// y��
            yaxis: {
				// y�� �� ���
                label:'����(õ��)',
				// y�� ���⿡ ���� �� ��� 
                labelRenderer: $.jqplot.CanvasAxisLabelRenderer				
            }
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