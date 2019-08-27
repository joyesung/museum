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
	ul, ol, li, dl, dt, dd, p, h1, h2, h3, h4, h5, h6 {
	    margin: 0;
	    padding: 0;
	    list-style: none;
	}
	.tab_menu > li > a {
	    display: block;
	    height: 31px;
	    padding-top: 8px;
	    background: #fff;
	    border: solid 1px #ddd;
	    border-bottom: none;
	    border-left: none;
	}
		.title_hidden {
	    width: 100%;
	    height: 1px;
	    text-indent: -9999px;
	}
	h1 {
	    font-size: 1.5em;
	    letter-spacing: -0.1em;
	}
	.float_wrap, .float_wrap02, .link_wrap {
	    display: block;
	    overflow: hidden;
	}
	.float_wrap .articles {
	    float: left;
	}
		.articles {
	    margin-bottom: 10px;
	    font-weight: bolder;
	}
	.point01, .point01_bold {
	    color: #da3d00;
	}
	.float_wrap .date_search {
	    float: right;
	    margin-bottom: 8px;
	}
	input[type="text"], input[type="tel"], input[type="search"], input[type="number"], input[type="date"], input[type="email"], input[type="password"] {
	    height: 20px;
	    padding: 2px;
	    border-color: #cacfda;
	    border-top-color: #8a8c94;
	}
	.input_search {
	    display: inline-block;
	    border: solid 1px #cacfda;
	    border-top-color: #8a8c94;
	    border-bottom-color: #d5dee7;
	    border-radius: 2px;
	}
	.input_search input[type="text"] {
	    width: 220px;
	    margin-top: 2px;
	    border: none;
	}
	exhibit_list {
	    width: 100%;
	    border-top: solid 2px #adadad;
	    border-bottom: solid 1px #ddd;
	    overflow: hidden;
	}
	.exhibit_list > li:first-child {
	    border-top: none;
	}
	.exhibit_list > li {
	    padding-top: 20px;
	    overflow: hidden;
	    margin-bottom: 20px;
	}
	.exhibit_list > #linked {
	    float: left;
	    display: block;
	    width: 150px;
	    height: 210px;
	    margin-right: 30px;
	    overflow: hidden;
	}
	a {
	    color: #464646;
	    text-decoration: none;
	}
	.exhibit_list > li .thmb img {
	    max-width: 100%;
	}
	img {
	    border: none;
	    vertical-align: middle;
	}
	.exhibit_list .exhibit_info {
	    position: relative;
	    overflow: hidden;
	}
	.exhibit_info > strong, .exhibit_info .underline_title {
	    display: block;
	    margin: 0;
	    font-size: 1.286em;
	}
	.underline_title, .exhibit_info > strong {
	    padding-bottom: 15px;
	    color: #333;
	}
	.exhibit_info .list_info {
	    overflow: hidden;
	}
	.exhibit_list > li .thmb {
	    float: left;
	    display: block;
	    width: 150px;
	    height: 210px;
	    margin-right: 30px;
	    overflow: hidden;
	}
	.exhibit_info .list_info li {
	    margin-top: 8px;
	    overflow: hidden;
	}
	.exhibit_info .list_info li > span:first-child {
	    display: block;
	    float: left;
	    width: 70px;
	    color: #333;
	    letter-spacing: -0.05em;
	    font-weight: bold;
	}
	.exhibit_info .list_info li > span.txt {
	    position: relative;
	    display: block;
	    margin-left: 70px;
	}
	.point01, .point01_bold {
	    color: #da3d00;
	}
	.exhibit_info .list_info li > span:first-child {
	    display: block;
	    float: left;
	    width: 70px;
	    color: #333;
	    letter-spacing: -0.05em;
	    font-weight: bold;
	}
	.exhibit_info .list_info li > span.txt {
	    position: relative;
	    display: block;
	    margin-left: 70px;
	    text-align: left;
	    
	}
	.exhibit_info .list_info li > span:first-child {
	    display: block;
	    float: left;
	    width: 70px;
	    color: #333;
	    letter-spacing: -0.05em;
	    font-weight: bold;
	}
	.exhibit_info .list_info li > span.txt {
	    position: relative;
	    display: block;
	    margin-left: 70px;
	    
	}
	.longColumn {
	    height: 8.3em;
	    margin-bottom: 18px;
	    text-align: left;  
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
					<a href="<%=request.getContextPath()%>/academic/science">보존과학</a>
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
		<h1 class="stitle">특별전시</h1>
		<p class="page_info">국립고구려박물관에서 진행중인 전시를 알려드립니다.</p>
		<div class="float_wrap"></div>
		<form id="displayVO" name="reqForm" action="/display/dispnowList.do?disp_due_gb=NOW&menu_nix=gbB0367n" method="post">
			<section id="content">
				<ul class="tab_menu">
					<li class="on">
						<a id="link01">현재전시</a>
					</li>      
				</ul>
				<h1 class="title_hidden">현재전시</h1>
				<div class="float_wrap">
					<p class="articles">
						총
						<span class="point01">1</span>
						
						건
						<span class="point01">1</span>
						/1
							page
					</p>
					<p class="date_search">
						<input id="srchFromDT" name="srchFromDT" title="시작날짜 입력" type="text" value placeholder="예)2019-08-26"
						size="10" maxlength="10">
						"~"
						<input id="srchToDT" name="srchRToDT" title="종료날짜 입력" type="text" placeholder="예)2019-09-03" value size="10" maxlength="10">
						<span class="input_search">
							<input id="searchKeyword" name="searchKeyword" title="검색어 입력" type="text"  
							value placeholder="전시명">
							<input name type = "image" src="<%=request.getContextPath()%>/resources/img/btn_search.gif" alt="검색" >
						</span>
					</p>
				</div>
				<ul class="exhibit_list">
					<li>
						<a id="linked" class="thmb">
							<img alt="" src="<%=request.getContextPath()%>/resources/img/meng.jpg">  
						</a>
						<div class="exhibit_info">
							<strong>칸의 제국 몽골</strong>
							<ul class="list_info">
								<li>
									<span>
										기간
									</span>
									<span class="txt point01">2019-08-30~2019-10-28</span>
								</li>
								<li>
									<span>
										장소
									</span>
									<span class="txt">
										고구려박물관 상설전시관 3전시실
									</span>
								</li>
								<li>
									<span>
										내용
									</span>
									<span class="txt longColumn">
										국립중앙박물관은 몽골 과학아카데미 역사학 고고학 연구소, 몽골국립박물관, 복드 한 궁전박물관과 공동으로 특별전‘칸의 제국 몽골’을 개최합니다. 
										한몽 공동 학술조사 20주년을 기념하여 마련한 이번 전시에는 몽골 국가지정문화재 16건을 포함한 536점의 선사시대부터 근현대에 이르는 몽골의 역사와 문화를 대표하는 귀중한 유산을 선보입니다. 
										유목 문화에 대한 이해의 폭을 넓히는 동시에 다양한 문화를 체험하고 즐길 수 있는 기회의 장이 되기를 기대합니다. 
									</span>
								</li>
							</ul> 
						</div>
					</li>
				</ul>
			</section>
		</form>
	</section>
</body>		
</body>
</html>