<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<head>
<script type = "text/javascript" src="//code.jquery.com//jquery-3.4.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		//더보기 또는 접기 버튼 클릭하면 
		$('.fas.fa-bars').click(function(){
			$('#divAllmenu').slideToggle();
		})
		$('#ml_ul>li>button').click(function(){
			var p =$(this).parents('li'); 
			p.find('.cts39_ml_cont img').slideToggle();
			toggleDisplay(p.find('.cts39_curtain'));
			toggleFontSize(p.find('.cts39_ml_cont'));
			$('.pos_none').removeClass('pos_none');
		})
		$('.pos_r button').click(function(){
			toggleDisplay($(this).parents('li').find('.cts39_curtain'));
			$(this).prev().slideToggle();
			toggleFontSize($(this).parents('li').find('.cts39_ml_cont'));			
		})
		
	})
	function toggleDisplay(obj){
		obj.toggleClass('display-block');
	}
	function toggleFontSize(obj){
		obj.toggleClass('font-14');
	}
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
	#container #colgroup .sub_title {
	    margin-bottom: 21px;
	    padding-top: 38px;
	    
	}
	.sub_title h1 {
	    color: #000;
	    font-size: 36px;
	    font-weight: 600;
	    text-align: right;  
	}
	.box, #contents .box2, #contents .box4, #contents .box5 .box5_wrap {
	    padding: 5%;
	}
	.p {
	    margin: 0;
	    padding: 0;
	    border: 0 none;
	    line-height: 1.5em;
	    text-align: left;
	}
	img {
	    width: 100%;
	    max-width: 100%;  
	}
	.cts39 .cts39_map_list {
	    border-right: 1px solid #e0e0e0;
	    border-bottom: 1px solid #e0e0e0;
	    border-left: 1px solid #e0e0e0;
	}
	.cts39 .cts39_map_list ul {
	    padding: 25px 20px 15px 20px;
	}
	.clearfix {
	    display: block;
	}
	.cts39 .cts39_map_list ul li {
	    
	}
	#ml_ul li{
		display:inline-block;
		float: left;
	    width: 48%;
	    margin-bottom: 10px;
	    padding-right: 2%;
	}
	#container #contents input[type=button], #container #contents input[type=submit], #container #contents input[type=reset], #container #contents input[type=text], #container #contents select, #container #contents button, #container #contents textarea {
    font-family: "NanumG", "돋움", Dotum, "굴림", Gulim, sans-serif;
	}
	.cts39 .cts39_map_list ul li.ml1 > button {
	    background-image: url(/resources/img/robi.jpg);
	    text-align: left;
	}
	cts39 .cts39_map_list ul li .cts39_ml_cont {
	    display: none;
	}
	   
	.cts39_ml_cont {
	    display: none;
	    position: fixed;
	    z-index: 999;
	    margin-right: 160px;
	    background-color: #fff;
	    box-shadow: 9px 9px 0 rgba(0, 0, 0, 0.5);
	    left:39.5469px; 
	    display: block; 
	    opacity: 1; 
	    top: 126px;
	    font-size: 0;
	}
	div {
	    display: block;
	}
	
	.cts39_ml_cont .pos_r button {
	    display: inline-block;
	    position: absolute;
	    top: 0;
	    right: -76px;
	    width: 55px;
	    height: 56px;
	    
	}
	.cts39_curtain{
		display: none;
	    position: fixed;
	    top: 0;
	    left: 0;
	    z-index: 998;
	    width: 100%;
	    height: 100%;
	    background: url(https://cheongju.museum.go.kr/www/images/contents/cts39_curtain.png) repeat left top;
	}
	.display-block{
		display: block !important;
	}
	.ml1, .ml2, .ml3, .ml4, .ml5{
		
	}
	.cts39 .cts39_map_list ul li {
	    float: left;
	    width: 48%;
	    margin-bottom: 10px;
	    padding-right: 2%;
	}
	.cts39 .cts39_map_list ul li > button {
	    display: inline-block;
	    padding-left: 30px;
	    color: #222;
	    font-size: 15px;
	    line-height: 22px;
	    background-position: left top;
	    background-repeat: no-repeat;
	    text-align: left;
	}
	li {
	    text-align: -webkit-match-parent;
	    list-style: none;
	}
	img, fieldset, input {
	    border: 0 none;
	}
	span {
		margin: 0;
	    padding: 0;
	    border: 0 none;
	    line-height: 1.5em;
	}
	button {
	    border: 0 none;
	    background: none;
	    margin: 0;
	    padding: 0;
	}
	.cts39 .cts39_map_list ul li {
	    width: 339px;
	    margin-bottom: 10px;
	    padding-right: 2%;
	    display: inline-block;
	    float: left; 
	}
	.font-14{
		font-size: 14px;
	}
	.closeimg{
		display: none;
	}
	.pos_none{
		display:none;
	}
 </style>
 </head>          
<body>
	<div>
		<div class="logowrap">
			<nav class="mune-list">
				<ul id="gnavigation">
					<li> <a href="<%=request.getContextPath()%>/main/home">국립고구려박물관</a></li>    
					<li> <a href="<%=request.getContextPath()%>/guide/gu">안내</a></li>
					<li> <a href="<%=request.getContextPath()%>/exhibition/special">전시</a></li>
					<li>유물/학술</li>
					<li> <a href="<%=request.getContextPath()%>/board/list">게시판</a></li>
					<li>교육</li>
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
				</ul>
			</li>
			<li id="liAllLnb2" class="submenu">
				<a>전시</a>
				<ul class="depth2" id="ulAllSubmeuLv2_2">
				<li>
					<a href="<%=request.getContextPath()%>/exhibition/special">특별전시</a>
				</li>
				<li>
					<a href="<%=request.getContextPath()%>/exhibition/permanent">상설전시</a>
				</ul>	
			</li>
			<li id="liAllLnb3" class="submenu">
				<a>유물/학술</a>
				<ul class="depth2" id="ulAllSubmeuLv2_3">
				<li>
					<a>소장품검색</a>
				</li>
				<li>
					<a>발간자료</a>
				</li>
				<li>
					<a>학술자료</a>
				</li>
				<li>
					<a>전시도록</a>
				</li>
				<li>
					<a>발굴보고서</a>
				</li>
				<li>
					<a>보존과학</a>
				</li>
				</ul>	
			</li>
			<li id="liAllLnb4" class="submenu">
				<a>게시판</a>
				<ul class="depth2" id="ulAllSubmeuLv2_4">
				<li>
					<a href="<%=request.getContextPath()%>/board/list">공지사항/게시판</a>
				</li>
				</ul>
			</li>
			<li id="liAllLnb5" class="submenu">
				<a>교육</a>
				<ul class="depth2" id="ulAllSubmeuLv2_5">
				<li>
					<a>교육프로그램</a>
				</li>
				<li>
					<a>교육자료</a>
				</li>
				</ul>
			</li>
		</ul>
	</article>
	<div class="sub_title">
		<h1>상설전시</h1>        
	</div>
	<div class="box">
		<p style="text-align: left;">
			충청북도는 바다에 접하지 않은 내륙지역으로 남한강과 금강이 흘러갑니다. 또 한반도의 중심지로서 다양한 길과 고개가 연결되는 문화교차로의 역할을 하던 곳입니다. 이런 특징을 바탕으로 아득한 선사시대를 거쳐 삼국시대부터 교통과 전략의 요충지로서 복합적인 문화가 형성되었습니다. 통일신라시대에는 서원경과 중원경, 그리고 고려시대와 조선시대에는 청주와 충주를 중심으로 독특한 지역문화를 꽃피웠습니다. 국립청주박물관은 이러한 충북지역의 문화적 특징을 역사적 흐름 속의 문화재를 통해 보여주고자 합니다.
		</p>
		<br>
		<p style="text-align: left;">
			‘선사문화실’은 큰 강가와 동굴에 의지해 살았던 구석기인들의 흔적과 내륙지역의 신석기문화와 청동기문화 등 선사시대 문화의 흐름을 살펴볼 수 있도록 최근의 고고학적 자료를 추가하여 구성하였습니다.
		</p>
		<br>
		<p style="text-align: left;">
			‘고대문화실’은 금강과 남한강유역을 중심으로 독특한 문화를 꽃피운 마한 사람들의 다양한 삶의 모습이 드러나도록 꾸몄습니다. 아울러 백제ㆍ고구려ㆍ신라가 차례로 남긴 문화의 같은 듯 다른 세 가지 빛깔을 드러내고, 통일신라시대 서원경과 중원경 등 중심도시의 지역문화도 함께 보여주고자 하였습니다.
		<br>
		</p>
		<p style="text-align: left;">
			‘고려문화실’은 불교문화 공간과 생활문화 공간으로 나누어 구성하였습니다. 불교문화 공간에서는 충북지역의 여러 사찰에서 출토된 문화재를 통해 이 지역의 불교문화를 살펴볼 수 있습니다. 특히 청주 사뇌사와 흥덕사 등에서 출토된 다양한 금속공예품을 전시함으로써 고려시대 금속문화를 잘 이해할 수 있도록 구성하였습니다.        
		</p>
		<p style="text-align: left;">
			생활문화 공간에서는 고려시대 무덤에서 출토된 문화재를 통해 당시 사람들의 삶의 모습을 엿볼 수 있습니다. 아울러 고대부터 철을 생산하던 이 지역의 독특한 문화적 특성도 살펴볼 수 있도록 하였습니다.
		</p>
		<br>
		<p style="text-align: left;">
			‘조선문화실’은 충청북도 사람들의 생활문화와 유교문화를 살펴볼 수 있도록 꾸몄습니다. 생활문화 공간에는 당시 사람들이 사용한 분청사기나 백자 등 도자기류와 최근 발굴한 무덤에서 출토된 각종 부장품들이 전시되어 있습니다. 이를 통해 당시 사람들의 삶과 내세에 대한 인식을 살펴볼 수 있습니다.
		</p>
		<p style="text-align: left;">  
			유교문화 공간은 충절과 학문의 고장인 충청북도 지역을 기반으로 활동한 유학자 및 관료들을 중심으로 구성하였습니다. 이들이 남긴 글과 유품, 초상화 등을 통해 조선시대 사상과 학문의 흐름을 엿볼 수 있습니다.
		</p>
	</div>
	<div class="cts39_scale" style="display: block;">
		<img alt="내부시설 배치도" src="<%=request.getContextPath()%>/resources/img/mu.jpg">
	</div>
	<div class="cts39_map_list">
		<ul class="clearfix" id="ml_ul">
			<li class="ml1">
				<button type="button">1.로비</button>
				<div class="cts39_curtain"></div>
				<div class="cts39_ml_cont" >
					<div class="pos_r pos_none">
						<img id="ab" alt="로비사진" src="<%=request.getContextPath()%>/resources/img/robi.jpg" style="display: none;">
						<button id="bb" type="button" title="레이어닫기">
							<img  alt="X" src="<%=request.getContextPath()%>/resources/img/close.png" class="closeimg">
						</button>
							<span>로비</span>    
					</div>
				</div>
			</li>
			<li class="ml2">
				<button type="button">2.선사문화실</button>
				<div class="cts39_curtain"></div>
				<div class="cts39_ml_cont" >
					<div class="pos_r pos_none">
						<img id="ac" alt="선사문화실 사진" src="<%=request.getContextPath()%>/resources/img/mon.jpg" style="display: none;">
						<button id="cc" type="button" title="레이어닫기">
							<img id="b" alt="X" src="<%=request.getContextPath()%>/resources/img/close.png" style="display: none;">
						</button>
							<span>선사문화실</span>    
					</div>
				</div>
			</li>
			<li class="ml3">
				<button type="button">3.고구려/고대문화실</button>
				<div class="cts39_curtain"></div>
				<div class="cts39_ml_cont" >
					<div class="pos_r pos_none">
						<img id="ad" alt="고구려/고대문화실 사진" src="<%=request.getContextPath()%>/resources/img/gudai.jpg" style="display: none;">
						<button id="dd" type="button" title="레이어닫기">
							<img id="c" alt="X" src="<%=request.getContextPath()%>/resources/img/close.png" style="display: none;">
						</button>
							<span>고구려/고대문화실</span>    
					</div>
				</div>
			</li>
			<li class="ml4">
				<button type="button">4.고려문화실</button>
				<div class="cts39_curtain"></div>
				<div class="cts39_ml_cont">
					<div class="pos_r pos_none">
						<img id="ae" alt="고려문화실 사진" src="<%=request.getContextPath()%>/resources/img/zh.jpg" style="display: none;">
						<button id="ee" type="button" title="레이어닫기">
							<img id="d" alt="X" src="<%=request.getContextPath()%>/resources/img/close.png" style="display: none;">
						</button>
							<span>고려문화실</span>    
					</div>
				</div>
			</li>
			<li class="ml5">
				<button type="button">5.조선문화실</button>
				<div class="cts39_curtain"></div>
				<div class="cts39_ml_cont" >
					<div class="pos_r pos_none">
						<img id="af" alt="조선문화실 사진" src="<%=request.getContextPath()%>/resources/img/gen.jpg" style="display: none;">
						<button id="ff" type="button" title="레이어닫기">
							<img id="e" alt="X" src="<%=request.getContextPath()%>/resources/img/close.png" style="display: none;">
						</button>
						   <span>조선문화실</span>    
					</div>
				</div>
			</li>
		</ul>
	</div>
</body>		
		
 
  