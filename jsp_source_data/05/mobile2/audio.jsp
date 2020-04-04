<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=euc-kr"%>
<html>
<head>
<title>JSP World</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- jQuery/jQuery Mobile 라이브러리 사용 -->
<%@ include file="../../include/jQueryMobile.inc" %>

<script type="text/javascript">
$(function() {
	$('ul li a').click(function() {
	    // 클릭된 개체(this) 내의 각 엘리먼트를 찾아(find), 그 속성(attr) 또는 데이터(text) 인식
		var videoTitle = $(this).find('div').text();	

		// audio 엘리먼트 인식(배열로 반환) 
		var myAudio = $("#audio");
		// 오디오(첫 번째 매열값에 해당) 중지   
		myAudio.get(0).pause();
		// 오디오 소스 경로 설정 	
		myAudio.attr('src', "../../contents/audio/" + videoTitle);
		// 오디오(첫 번째 매열값에 해당) 실행
		myAudio.get(0).play();
		
	});
});

</script>

</head>
<body>

<section data-role="page">

	<!-- 1. 헤더 -->
	<header data-role="header" data-theme="b">
		<!-- 헤더 타이틀 -->
		<h1>오디오 목록</h1>
	</header> 

	<!-- 2. 본문 -->
	<section data-role="content"> 
	
		<%
		// 오디오 타이틀, 오디오 파일, 아티스트, 재생시간에 대한 배열 선언과 값 할당 
		String[] title     = {"학교종", "코끼리 아저씨", "산토끼"};
		String[] artist    = {"김메리", "강소현/박태현", "이일래"};
		String[] file_name = {"schoolBell.mp3", "elephant.mp3", "hare.mp3"};
		String[] time      = {"00:19", "00:16", "00:16"};
		%>
	
	    <!-- 목록 -->
		<ul data-role="listview" data-inset="true" data-theme="e"> 
	
			<!-- 목록 아이템 1 -->
			<li>
				<a href="#">			
					<!-- 오디오: 제목, 아티스트, 소스, 재생시간 -->
					<h3><%= title[0] %></h3>
					<p>
						<%= artist[0] %><br>
						<div style="display: none"><%= file_name[0] %></div>
					</p>
					<p class="ui-li-aside"><strong><%= time[0] %></strong>분</p>	
                </a>
			</li>				

			<!-- 목록 아이템 2 -->
			<li>
				<a href="#">			
					<!-- 오디오: 제목, 아티스트, 소스, 재생시간 -->
					<h3><%= title[1] %></h3>
					<p>
						<%= artist[1] %><br>
						<div style="display: none"><%= file_name[1] %></div>
					</p>
					<p class="ui-li-aside"><strong><%= time[1] %></strong>분</p>	
                </a>
			</li>				

			<!-- 목록 아이템 3 -->
			<li>
				<a href="#">			
					<!-- 오디오: 제목, 아티스트, 소스, 재생시간 -->
					<h3><%= title[2] %></h3>
					<p>
						<%= artist[2] %><br>
						<div style="display: none"><%= file_name[2] %></div>
					</p>
					<p class="ui-li-aside"><strong><%= time[2] %></strong>분</p>	
                </a>
			</li>				
			
		</ul>		
	
	    <!-- 오디오 재생 영역 --> 
		<center>
		<audio id="audio" controls></audio>
		</center>
		
	</section> 

	<!-- 3. 푸터 -->
	<footer data-role="footer" data-theme="a" data-position="fixed">
        <%@ include file="../../include/businessInfo.inc" %>
	</footer>

</section> 

</body>
</html>