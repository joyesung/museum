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
	#body > .float_wrap {
	    height: 45px;
	    border: solid 1px #ddd;
	    border-top-color: #555;
	    overflow: hidden;
	}
	#body .linemenu {
	    float: left;
	    margin: 11px 0 0 20px;
	}
	form {
	    margin: 0;
	    padding: 0;
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
	.tab_menu {
	    position: relative;
	    width: 100%;
	    min-height: 40px;
	    margin-bottom: 45px;
	    border-left: solid 1px #ddd;
	    border-bottom: solid 1px #bbb;
	    letter-spacing: -0.1em;
	}
	.tab_menu > li {
	    float: left;
	    width: 168px;
	    background: #f9f9f9;
	    text-align: center;
	}
	.tab_menu > li.on > a {
	    display: block;
	    height: 32px;
	    background: #626262;
	    border: 1px solid transparent;
	    color: #fff;
	    text-decoration: underline;
	    font-weight: bold;
	}
	#divUcont_cont {
	    overflow: hidden;
	}
	.title_hidden {
	    width: 100%;
	    height: 1px;
	    text-indent: -9999px;
	}.facilities_list {
	    width: 100%;
	    height: 753px; 
	    background: url(/museum/resources/img/fafa.jpg) no-repeat center 0;
	    background-size: 100% 800px;
	}
	li {
	    display: list-item;
	    text-align: -webkit-match-parent;
	}
	h3.depth2_title, h3.depth2_title02, h4.depth2_title, h4.depth2_title02 {
	    background-position: 0 4px;
	    font-size: 1.143em;
	    text-align: left;   
	}
	.depth2_title02 {
	    margin-top: 30px;
	}
	.notable_list {
	    border-top: solid 2px #adadad;
	}
	.notable_list > li {
	    padding: 8px 15px;
	    border-bottom: solid 1px #ddd;
	    color: #464646;
	    overflow: hidden;
	}
	.notable_list > li > strong:first-child {
	    float: left;
	    text-align: left;
	}
	.notable_list > li > span:first-child, .notable_list > li > strong:first-child {
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
	}
	h3.depth2_title, h3.depth2_title02, h4.depth2_title, h4.depth2_title02 {
	    background-position: 0 4px;
	    font-size: 1.143em;
	}
	.depth2_title02 {
	    margin-top: 30px;
	}
	.lstyle_box, .lstyle_dot, .lstyle_normal {
	    margin-left: 2px;
	}
	p.lstyle_box, .lstyle_box > li {
    margin-top: 1px;
    padding-left: 0px;
    
	}
	.depth3_title02 {
	    margin-top: 16px;
	}
	depth3_title, .depth3_title02 {
	    clear: both;
	    margin-bottom: 10px;
	    color: #da3d00;
	    font-size: 1.143em;
	}
	p {
	    display: block;
	    margin-block-start: 1em;
	    margin-block-end: 1em;
	    margin-inline-start: 0px;
	    margin-inline-end: 0px;
	    text-align: left;
	}
	.lstyle_box{
		text-align: left;
	}
	img {
	    border: none;
	    vertical-align: middle;
	}
	ul {
	    margin: 0;
	    padding: 0;
	    list-style: none;
	    margin-block-start: 0px;
	    margin-block-end: 0px;
	}
	ul, ol, li, dl, dt, dd, p, h1, h2, h3, h4, h5, h6 {
	    margin: 0;
	    padding: 0;
	    list-style: none;
	}
	.clearfix {
	    display: block;
	    padding: 25px 20px 15px 20px;
	}
	.ml {
	    float: left;
	    width: 23%;
	    margin-bottom: 10px;
	    padding-right: 2%;
	    font-family: "NanumG", "돋움", Dotum, "굴림", Gulim, sans-serif;
	    font-size: 14px;
    	font-weight: 400;
    	color: #da3d00;  

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
	
	<section id="body">
		<h1 class="stitle">시설안내</h1>
		<p class="page_info">국립고구려박물관 시설을 안내합니다.</p>
		<div class="float_wrap">
			<p class="linemenu"></p>
		</div>
		<form name="reqForm" method="post">
			<article id="content">
				<ul class="tab_menu">
					<li class="on">
						<a id="link01">박물관주요시설</a>
					</li>
				</ul>
				<div id="divUcont_cont" class="display_none" style="display:block;">
					<section id="information01" class="tabcontent" style="display:block; opacity: 1;">
						<h2 class="title_hidden">박물관주요시설</h2>
						<ul class="facilities_list"></ul>
						<ul class="clearfix">
							<li class="ml">1.정문안내실</li>
							<li class="ml">2.관람권 받는곳</li>
							<li class="ml">3.전시동</li>
							<li class="ml">4.사무동</li>
							<li class="ml">5.문화사랑채</li>
							<li class="ml">6.태학</li>
							<li class="ml">7.경당</li>
							<li class="ml">8.어린이박물관</li>
							<li class="ml">9.휴식동산</li>
							<li class="ml">10.주차장</li>
						</ul>
						<h3 class="depth2_title02">시설안내</h3>
						<ul class="notable_list">
							<li>
								<strong>대지면적</strong>
								<span class="float_left">61,429㎡</span>
							</li>
							<li>
								<strong>건축면적</strong>
								<span class="float_left">9,221.78㎡</span>
							</li>
							<li>
								<strong>연면적</strong>
								<span class="float_left">13,924.12㎡</span>
							</li>
						</ul>
						<h3 class="depth2_title02">주요시설</h3>
						<ul class="notable_list">
							<li>
								<strong>전시동</strong>
								<span class="float_left">제1전시실~제3전시실, 기증유물전시실, 수장고, 뮤지엄샵 등</span>
							</li>
							<li>
								<strong>기획전시실</strong>
								<span class="float_left">기획전시실</span>
							</li>
							<li>
								<strong>사무동</strong>
								<span class="float_left">관장실, 기획운영과, 학예연구실, 방재실 등</span>
							</li>
							<li>
								<strong>보존과학관</strong>
								<span class="float_left">사무실, 수침목재실, 금속처리유물실 등</span>
							</li>
							<li>
								<strong>고구려마루</strong>
								<span class="float_left">공연장, 어린이박물관 등</span>  
							</li>
						</ul>
						<h3 class="depth2_title02">주자창안내</h3>
						<ul class="lstyle_box">
							<li>박물관 주차장은 관람시간 내 무료로 주차할 수 있습니다.</li>
							<li>주차장 : 소형 84대, 대형 27대</li>
							<h3 class="depth3_title02">소형주차장</h3>
							<p>
								<img src="/museum/resources/img/dd.jpg" alt="소형주차장">
							</p>
							<h3 class="depth3_title02">대형주차장</h3>
							<p>
								<img src="/museum/resources/img/cc.jpg" alt="대형주차장">
							</p>
						</ul>
					</section>
				</div>
			</article>
		</form>
	</section>
</body>		
		