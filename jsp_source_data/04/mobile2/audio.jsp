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
	    // 클릭된 개체(this) 내의 div 엘리먼트의 데이터(text) 추출
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
	
	    <!-- 목록 -->
		<ul data-role="listview" data-inset="true" data-theme="e"> 
	
			<!-- 목록 아이템 1 -->
			<li>
				<a href="#">			
					<!-- 오디오: 제목, 아티스트, 소스, 재생시간 -->
					<h3>학교종</h3>
					<p>
						김메리<br>
						<div style="display: none">schoolBell.mp3</div>
					</p>
					<p class="ui-li-aside"><strong>00:19</strong>분</p>	
                </a>
			</li>				

			<!-- 목록 아이템 2 -->
			<li>
				<a href="#">			
					<!-- 오디오: 제목, 아티스트, 소스, 재생시간 -->
					<h3>코끼리 아저씨</h3>
					<p>
						강소현/박태현<br>
						<div style="display: none">elephant.mp3</div>
					</p>
					<p class="ui-li-aside"><strong>00:16</strong>분</p>	
                </a>
			</li>				

			<!-- 목록 아이템 3 -->
			<li>
				<a href="#">			
					<!-- 오디오: 제목, 아티스트, 소스, 재생시간 -->
					<h3>산토끼</h3>
					<p>
						이일래<br>
						<div style="display: none">hare.mp3</div>
					</p>
					<p class="ui-li-aside"><strong>00:16</strong>분</p>	
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