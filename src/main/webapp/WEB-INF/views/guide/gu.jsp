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
	})
</script>
<style type="text/css">
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
	
	body {
	    margin: 0;
	    padding: 0;
	    color: #636363;
	    font-size: 87.5%;
	    line-height: 1.6;
	    font-family: Malgun Gothic, '맑은 고딕', Dotum, '돋움', Gulim, '굴림', Tahoma, Verdana, AppleGothic, UnDotum, sans-serif;
	}
	 .stitle{
		padding: 26px 0 2px;
	    border-top: solid 3px #555;
	    color: #333;
	    letter-spacing: -0.05em;
	    text-align: center;
	    font-size: 2.8em;
	    overflow: hidden;
	    
	}
	.page{
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
	 #divcont{
	 	overflow: hidden;
	 }
	 .contentf{
	     font-weight: bold;  
	     margin-top: 1px;
    	 padding-left: 18px;
    	 text-align: left;      
	 }
	 p{
	 	display: block;
	    margin-block-start: 1em;
	    margin-block-end: 1em;
	    margin-inline-start: 0px;
	    margin-inline-end: 0px;
	 }
	 .point01, .point01_bold {
		color: #da3d00;
		text-align: left;
	 }
	 h2 {
	    font-size: 1.357em;
	    letter-spacing: -0.1em;
	    text-align: left;
	 }  
	 .depth2_title, .depth2_title02 {
	    margin-top: 1px;     
        padding-left: 18px;
	    color: #333;
	    text-align: left;
	 }
	 ul, ol, li, dl, dt, dd, p, h1, h2, h3, h4, h5, h6 {
	    margin: 0;
	    padding: 0;
	    list-style: none;
	 }
	 .lstyle_box, .lstyle_dot, .lstyle_normal {
    	margin-left: 2px;
	 }
	 p.lstyle_box, .lstyle_box > li {
	    margin-top: 1px;
	    padding-left: 18px;
	    background: url(../../../images/custom/kor/common/arrow_box.gif) no-repeat 0 7px;
	    text-align: left;
	 }
	 li {
	    display: list-item;
	    text-align: -webkit-match-parent;
	    text-align: left;
	 }
	 .iframe {
	    width: 100%;
	    margin-top: 20px;
	    padding: 35px;
	    border: solid 3px #dfdfdf;
	    box-sizing: border-box;
	    text-align: center;
	 }
	 .iframe iframe {
	    width: 100%;
	    margin: auto;
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
					<li><a href="<%=request.getContextPath()%>/relic/search">유물/학술</a></li>
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
	<div>
		<h1 class="stitle">관람시 유의사항</h1>
		<h6 class="page">쾌적한 관람을 위해 관람시 유의사항을 알려드립니다.</h6>  
	</div>
	<article id="content">
		<div id="divcont" class="display_none" style="display:block;">
			<p class="contentf">
				국립고구박물관은 우리 조상들의 얼과 땀이 고스란히 깃들어 있는 소중한 문화유산들이 보관, 전시되고 있는 시민들을 위한 공간입니다.
				<br>
				찾아주신 시민 모두가 편안하고 안락한 가운데 이용할 수 있도록 관람시 다음 사항을 지켜주시기 바랍니다.
				<strong class="point01">관람시 다음 사항을 지켜주시길 바랍니다.</strong>
			</p>
				<br>
				<h1 class="depth2_title" style="opacity:1;" >박물관 관람시 유의사항</h2>
				<br>
			<ul class="lstyle_box margin_info" style="opacity:1;">
				<li>조용한 분위기를 지켜 질서 있게 관람해 주십시오</li>
				<li>전시실 내에서 흡연, 음주 또는 음료, 과자 등 음식물을 드실 수 없습니다.</li>
				<li>관리자의 허가 없이 플래시 등 조명이나 삼각대 등을 사용하여 사진을 찍을 수 없습니다.</li>
				<li>허가되지 않은 전시품은 만질 수 없습니다.</li>
				<li>박물관 내로 애완동물을 데리고 들어올 수 없습니다.</li>
				<li>휴대폰은 무음 또는 진동으로 전환해 주십시오.</li>
				<li>관람자가 전시품 및 박물관 시설물을 파괴하거나 훼손하였을 때에는 이에 상응하는 손해 배상을 하셔야합니다. </li>
			</ul>
			<h2 class="depth2_title" style="opacity: 1;">박물관 관람예절 동영상</h2>
			<div class="iframe" style="opacity: 1;">
				<iframe width="516" height="315" title="박물관 관람예절 동영상" src="https://www.youtube.com/embed/HvBP0vVFk48?rel=0" frameborder="0" scrolling="auto" allowfullscreen allow="autoplay; encrypted-media">
				</iframe>
				
			</div>
		</div>
	
	</article>  
	 

</body>