<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=euc-kr"%>
<html>
<head>
<title>JSP World</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ include file="../../include/jQueryMobile.inc" %>

<script type="text/javascript">
$(function() {
	$('ul li a').click(function() {
	    /// page1 ///
	    // 클릭된 개체(this) 내의 각 엘리먼트를 찾아(find), 그 속성(attr) 또는 데이터(text) 인식
		var videoTitle = $(this).find('h3').text();	
		var videoSrc   = $(this).find('div').text();	
		var videoDesc  = $(this).find('p.description').text();	

		/// page2 ///
		// video 제목과 설명 출력 
		$("#p2_title").html(videoTitle);	
		$("#p2_desc").html(videoDesc);
		
		// 비디오 소스 변경과 실행 	
		var video = $("#p2_video");
		video.attr('src', "../../contents/video/" + videoSrc);
		video.get(0).play();
	});
	
	$('#page2').click(function() {
		// 기존 실행 중인 비디오 중지
		$("#p2_video").get(0).pause();
	});
});

</script>

</head>
<body>

<section data-role="page" id="page1">

	<!-- 1. 헤더 -->
	<header data-role="header" data-theme="b">
		<!-- 헤더 타이틀 -->
		<h1>비디오 목록</h1>
	</header> 

	<!-- 2. 본문 -->
	<section data-role="content"> 
	
		<%
		// 비디오 배열 
		String[] thumnail = {"fountain_night.png", "creek_rock.png", "waterfall_street.png"};
		String[] title = {"음악 분수대의 야경", "계곡", "청계천폭포"};
		String[] description = {"서울, 예술의 전당", "경기도 양평, 용문산", "서울, 청계천"};
		String[] file_name = {"fountain_night.mp4", "creek_rock.mp4", "waterfall_street.mp4"};
		String[] time = {"00:05", "00:03", "00:03"};
		%>

	    <!-- 목록 -->
		<ul data-role="listview" data-inset="true" data-theme="e"> 

		    <%
			for (int i=0; i<title.length; i++) { 
			%>
				<!-- 목록 아이템 -->
				<li>
					<a href="#page2" data-rel="dialog" data-transition="pop">
						<!-- 비디오: 썸네일이미지, 제목, 설명, 재생시간 -->
						<img src="../../contents/video/image/<%= thumnail[i] %>" width=100% height=100%>
						<h3><%= title[i] %></h3>
						<p class="description">
							<%= description[i] %>
							<div style="display: none"><%= file_name[i] %></div>
						</p>
						<p class="ui-li-aside"><strong><%= time[i] %>분</strong></p>
					</a>
				</li>				
		    <%
			}  
			%>
			
		</ul>	

	</section> 

	<!-- 3. 푸터 -->
	<footer data-role="footer" data-theme="a" data-position="fixed">
        <%@ include file="../../include/businessInfo.inc" %>
	</footer>

</section>

<section data-role="page" id="page2">

	<!-- 1. 헤더 -->
	<header data-role="header" data-theme="b">
		<!-- 헤더 타이틀 -->
		<h1 id="p2_title"></h1>
	</header> 

	<!-- 2. 본문 -->
	<section data-role="content"> 

		<video id="p2_video" width="100%" preload="false" controls="controls">
		</video>
		
		<p id="p2_desc"></p> 
		
	</section> 
	
	<!-- 3. 푸터 -->
	<footer data-role="footer" data-theme="a" data-position="fixed">
        <%@ include file="../../include/businessInfo.inc" %>
	</footer>

</section> 

</body>
</html>