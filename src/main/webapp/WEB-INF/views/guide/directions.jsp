<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<head>
<script type = "text/javascript" src="//code.jquery.com//jquery-3.4.1.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8377b1d42a803276019edfc19f1f425e&libraries=services"></script>

<script type="text/javascript">
	$(document).ready(function(){
		//더보기 또는 접기 버튼 클릭하면 
		$('.fas.fa-bars').click(function(){
			$('#divAllmenu').slideToggle();
		})
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(36.6351057,127.45956790000002),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);
		var geocoder = new kakao.maps.services.Geocoder();

		var callback = function(result, status) {
		    if (status === kakao.maps.services.Status.OK) {
		        console.log(result);
		    }
		};
		

		geocoder.addressSearch('충청북도 청주시 서원구 사직대로 109', function(result, status) {

		    // 정상적으로 검색이 완료됐으면 
		     if (status === kakao.maps.services.Status.OK) {

		        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

		        // 결과값으로 받은 위치를 마커로 표시합니다
		        var marker = new kakao.maps.Marker({
		            map: map,
		            position: coords
		        });

		        
		        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
		        map.setCenter(coords);
		    } 
		});    
	})
	
	
		
</script>
 <style type="text/css">
 	body{
 		margin: 0;
 		padding: 0;
 	}
 	#gnavigation{
 		position: relative;
 		width: 100%;
 		padding: 0; 
 		text-align: center;
 		box-sizing: boder-box;
 		font-size: 1.25em;
 		font-weight: bold; 
  	}
  	ul{
  		display: block;
  		margin-block-start: 1em;
  		margin-block-end: 1em;
  		margin-inline-start: 0px;
  		margin-inline-end: 0px;
  		padding-inline-start: 40px;
  		list-style: none;
  	}
  	#gnavigation li{
  		padding-left: 40px; 
  		display: inline-block;
  		
  	}
  	.allmenu {
	    float: right;
	    font-size: 40px;
	}
	* button {
	    position: relative;
	    display: inline-block;
	    margin: 0;
	    padding: 0;
	    background: none;
	    border: 0;
	    cursor: pointer;
	    text-decoration: none;
	    overflow: visible;
	    font-family: Malgun Gothic, '맑은 고딕', Dotum, '돋움', Gulim, '굴림', Tahoma, Verdana, AppleGothic, UnDotum, sans-serif;
	    white-space: nowrap;
	}
	.hidden {
	    display: block;
	    width: 100%;
	    height: 1px;
	    margin-top: -1px;
	    color: transparent;
	    font-size: .5rem;
	    overflow: hidden;
	}
	.menu-list i{
  	 	margin-top: 15px;
  	 	height: 40px;
  	 	width: 40px;
	}
  	 .allmenu_wrap {
	    display: none;
	    position: absolute;	    
	    left: 0;
	    width: 100%;
	    background: #484848;
	    border-top: solid 1px #898989;
	    z-index: 100;
	}
	 .allmenu_wrap > ul {
	    text-align: center;
	    font-size: 1.071em;
	    overflow: hidden;
	}   
    .allmenu_wrap > ul > li {
  
	    position: relative;
	    width: auto;
	    padding: 40px 5px;
	}
	.allmenu_wrap > ul > li {
	    display: table-cell;
	    position: relative;
	    width: auto;
	    padding: 40px 5px;
	}
	.allmenu_wrap > ul > li > a {
	    color: #b8a48b;
	    font-weight: bold;
	}
	ul{
	    margin: 0;
	    padding: 0;
	    list-style: none;
        margin-block-start: 0px;
    	margin-block-end: 0px;
	}
	#gnavigation_all .submenu{
		padding-left: 70px;   
	}
	#divAllmenu{
		display: none;
	}
	#body {
	    position: relative;
	    width: 1200px;
	    margin: 0 auto 60px;
	}
	#body .stitle {
	    padding: 26px 0 2px;
	    border-top: solid 3px #555;
	    color: #333;
	    letter-spacing: -0.05em;
	    text-align: center;
	    font-size: 2.8em;
	    overflow: hidden;
	}
	#body > .page_info {
	    padding-bottom: 38px;
	    border-bottom: solid 1px #ddd;
	    text-align: center;
	    letter-spacing: -0.1em;
	}
	#content {
	    position: relative;
	    width: 1120px;
	    margin: 0 auto;
	    padding: 32px 39px 40px;
	    border: 1px solid #ddd;
	    border-top: none;
	    overflow: hidden;
	}
	#divUcont_cont {
	    overflow: hidden;
	}
	.content_firstInfo {
	    margin-bottom: 18px;
	    letter-spacing: -0.1em;
	    font-weight: bold;
	    text-align: left;   
	}
	.point01, .point01_bold {
	    color: #da3d00;
	}
	.os_mac.root_daum_roughmap, .os_mac.root_daum_roughmap button, .os_mac.root_daum_roughmap input, .os_mac.root_daum_roughmap select, .os_mac.root_daum_roughmap td, .os_mac.root_daum_roughmap textarea, .os_mac.root_daum_roughmap th {
	    font-family: AppleSDGothicNeo-Regular,dotum,sans-serif;
	    letter-spacing: 0;
	}
	.root_daum_roughmap_landing {
	    overflow: hidden;
	    margin: 0;
	    background: transparent;
	}
	.root_daum_roughmap {
	    text-align: left;
	}
	.root_daum_roughmap button, .root_daum_roughmap div, .root_daum_roughmap form, .root_daum_roughmap h1, .root_daum_roughmap h2, .root_daum_roughmap h3, .root_daum_roughmap h4, .root_daum_roughmap h5, .root_daum_roughmap h6, .root_daum_roughmap input, .root_daum_roughmap legend, .root_daum_roughmap textarea, .root_daum_roughmap ul, .root_daum_roughmap ul li {
    	margin: 0;
	    padding: 0;
	    line-height: normal;
	    background: transparent;
	}
	div {
	    display: block;
	}
	.os_mac.root_daum_roughmap, .os_mac.root_daum_roughmap button, .os_mac.root_daum_roughmap input, .os_mac.root_daum_roughmap select, .os_mac.root_daum_roughmap td, .os_mac.root_daum_roughmap textarea, .os_mac.root_daum_roughmap th {
	    font-family: AppleSDGothicNeo-Regular,dotum,sans-serif;
	    letter-spacing: 0;
	}
	.root_daum_roughmap .map {
	    position: relative;
	    width: 100%;
	    height: 100%;
	}
	.root_daum_roughmap button, .root_daum_roughmap div, .root_daum_roughmap form, .root_daum_roughmap h1, .root_daum_roughmap h2, .root_daum_roughmap h3, .root_daum_roughmap h4, .root_daum_roughmap h5, .root_daum_roughmap h6, .root_daum_roughmap input, .root_daum_roughmap legend, .root_daum_roughmap textarea, .root_daum_roughmap ul, .root_daum_roughmap ul li {
	    margin: 0;
	    padding: 0;
	    line-height: normal;
	    background: transparent;
	}
	.root_daum_roughmap div,{
		margin: 0;
	    padding: 0;
	    line-height: normal;
	    background: transparent;
	}
	#map{
		width: 1000px;
		height: 600px;
	}
	h2 {
	    font-size: 1.357em;
	    letter-spacing: -0.1em;
	    text-align: left;
	}
	.depth2_title, .depth2_title02 {
	    margin-bottom: 13px;
	    color: #333;
	    margin-top: 30px;
	}
	.notable_list {
	    border-top: solid 2px #adadad;
	    margin-block-start: 1em;
	    margin-block-end: 1em;
	    margin-inline-start: 0px;
	    margin-inline-end: 0px;
	    padding-inline-start: 40px;
	    margin: 0;
   		padding: 0;
    	list-style: none;
	}
	.notable_list > li {
	    padding: 8px 15px;
	    border-bottom: solid 1px #ddd;
	    color: #464646;
	    overflow: hidden;
	}
	.notable_list > li > strong:first-child {
	    float: left;
	    display: inline-block;
	    width: 155px;
	    margin-right: 15px;
	    color: #333;
	    font-weight: bold;
	}
	.notable_list > li > span.float_left {
	    float: none;
	    display: block;
	    position: relative;
	    overflow: hidden;
	    text-align: left;
	}
	.depth2_title02 {
	    margin-top: 30px;
	}
	.lstyle_box, .lstyle_dot, .lstyle_normal {
	    margin-left: 2px;
	}
	.lstyle_box, .lstyle_dot, .lstyle_normal {
	    text-align: left;
	}
 </style>
 </head>
<body>
	<div>
		<div class="logowrap">
			<nav class="mune-list">
				<ul id="gnavigation">          
					<li> <a href="<%=request.getContextPath()%>/">국립고구려박물관</a></li>    
					<li> <a href="<%=request.getContextPath()%>/guide/gu">안내</a></li>
					<li> <a href="<%=request.getContextPath()%>/exhibition/special">전시</a></li>
					<li> <a href="<%=request.getContextPath()%>/relic/search">유물/학술</a></li>
					<li> <a href="<%=request.getContextPath()%>/board/list">게시판</a></li>
					<li> <a href="<%=request.getContextPath()%>/education/look">교육</a></li>
					<li> 
					<i class="fas fa-bars"></i>
					<span class="hidden">전체메뉴보기</span>
					</li>  
				</ul>
			</nav>
		</div>
	</div>
	<article id="divAllmenu" class="allmenu_wrap" >
		<ul id="gnavigation_all" class="container">
			<li id="allmenuli" style="display: none;"></li>
			<li id="liAllLnb1" class="submenu">
				<a href="<%=request.getContextPath()%>/guide/gu">안내</a>
				<ul class="depth2" id="ulAllSubmeuLv2_1">
					<li>
						<a href="<%=request.getContextPath()%>/guide/gu">관람시유의사항</a>
					</li>
					<li>
						<a href="<%=request.getContextPath()%>/guide/gigi">관람안내</a>
					</li>
					<li>
						<a href="<%=request.getContextPath()%>/guide/reservation">단체관람예약</a>
					</li>
					<li>
						<a href="<%=request.getContextPath()%>/guide/description">전시해설안내</a>
					</li>
					<li>
						<a href="<%=request.getContextPath()%>/guide/facility">시설안내</a>
					</li>
					<li>
						<a href="<%=request.getContextPath()%>/guide/introduction">박물관소개</a>
					</li>
					<li>
						<a href="<%=request.getContextPath()%>/guide/directions">오시는길</a>
					</li>
					<li>
						<a href="<%=request.getContextPath()%>/guide/leng">예약정보조회</a>
					</li>
				</ul>
			</li>
			<li id="liAllLnb2" class="submenu">
				<a href="<%=request.getContextPath()%>/exhibition/special">전시</a>
				<ul class="depth2" id="ulAllSubmeuLv2_2">
				<li>
					<a href="<%=request.getContextPath()%>/exhibition/special">특별전시</a>
				</li>
				<li>
					<a href="<%=request.getContextPath()%>/exhibition/permanent">상설전시</a>
				</ul>	
			</li>
			<li id="liAllLnb3" class="submenu">
				<a href="<%=request.getContextPath()%>/relic/search">유물/학술</a>
				<ul class="depth2" id="ulAllSubmeuLv2_3">
				<li>
					<a href="<%=request.getContextPath()%>/relic/search">소장품검색</a>
				</li>
				<li>
					<a href="<%=request.getContextPath()%>/relic/published">발간자료</a>
				</li>
				<li>
					<a href="<%=request.getContextPath()%>/academic/science">보존과학</a>
				</li>
				</ul>	
			</li>
			<li id="liAllLnb4" class="submenu">
				<a href="<%=request.getContextPath()%>/board/list">게시판</a>
				<ul class="depth2" id="ulAllSubmeuLv2_4">
				<li>
					<a href="<%=request.getContextPath()%>/board/list">공지사항/게시판</a>
				</li>
				</ul>
			</li>
			<li id="liAllLnb5" class="submenu">
				<a href="<%=request.getContextPath()%>/education/look">교육</a>
				<ul class="depth2" id="ulAllSubmeuLv2_5">
				<li>
					<a href="<%=request.getContextPath()%>/education/look">교육동영상</a>
				</li>
				</ul>
				
			</li>
		</ul>
	</article>
	
	<section id="body">
		<h1 class="stitle">오시는길</h1>
		<p class="page_info">국립고구려박물관 찾아오시는 방법을 알려드립니다.</p>
		<form name="reqForm" method="post">
			<article id="content">
				<div id="divUcont_cont" class="display_none" style="display: block;">
					<p class="content_firstInfo" style="opacity: 1;">국립고구려박물관을 방문하실려면 [지도보기]를 통해 각 지역에서 오시는 길을 확인할 수 있습니다.
					<br>
					<span class="point01">
						빠른길 찾기 서비스를 이용하시면(자가용 및 대중교통) 보다 편리하게 찾아오실 수 있습니다.
					</span>
					</p>
					<div id="daumRoughmapContainer1446773101134" class="root_daum_roughmaproot_daum_roughmap_landing os_mac" style="opacity: 1;" width: 1018px;>
						&nbsp;
						<div class="wrap_map" style="height: 615px; width: 1040px;">
						<div id="map" ></div>
						</div>
						<h2 class="depth2_title02" style="opacity: 1;">국립 고구려박물관</h2>
						<ul class="notable_list" style="opacity: 1;">
							<li>
								<strong>주소</strong>
								<span class="float_left"> 충북 청주시 서원구 사직대로 109 </span>
							</li>
							
							<li>
								<strong>문의전화</strong>
								<span class="float_left">기획운영과 043-225-2111, 학예연구실 010-9288-6212  </span>
							</li>
							
							<li>
								<strong>팩스번호</strong>
								<span class="float_left">기획운영과 043-225-2111, 학예연구실 010-9288-6212 </span>
							</li>
						</ul>
						<h2 class="depth2_title02" style="opacity: 1;">주차안내</h2>
						<ul class="lstyle_box" style="opacity: 1;">
							<li>박물관 주차장은 관람시간 내 무료로 주차할 수 있습니다.</li>
							<li>주차장 : 소형 84대, 대형 27대</li>
						</ul>
					</div>
				</div>
			</article>
		</form>
	</section>
</body>
</html>