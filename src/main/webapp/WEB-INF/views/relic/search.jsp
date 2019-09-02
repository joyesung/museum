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
	.pTitle {
	    border-bottom: 2px solid #555;
	}
	 h3 {
    
	    color: #444;
	    font-family: "NanumMyeongjo";
	    font-size: 38px;
	    letter-spacing: -2px;
	    clear: both;
	    padding-bottom: 10px;
	}
	.subtop {
	    position: relative;
	    margin-bottom: 60px;
	}
	.subtop .breadcrumb {
	    float: left;
	    padding-top: 14px;
	}
	.subtop .func_box {
	    float: right;
	    padding-top: 16px;
	}
	.wrap_subcontent {
	    padding-bottom: 200px;
	}
	.sub_content {
	    clear: both;
	    position: relative;
	}
	.tabs_dft {
	    border-bottom: 2px #bbb solid;
	    height: 40px;
	    margin-bottom: 20px !important;
	}
	ul, ol, li {
	    list-style: none;
	}
	.tabs_dft .on {
	    position: relative;
	}
	.tabs_dft li {
	    float: left;
	}
	.tabs_dft .on a {
	    height: 40px;
	    line-height: 40px;
	    background-color: #fff;
	    color: #333;
	    border: 2px #bbb solid;
	    border-bottom: 0;
	}
	.tabs li a {
	    padding-right: 15px;
	    padding-left: 15px;
	}
	.tabs_dft li a {
    	display: block;
   	}
   	.tabs_dft li {
	    float: left;
	}
	.tabs li a {
	    padding-right: 15px;
	    padding-left: 15px;
	}
	.tabs_dft li a {
	    display: block;
	    color: #777;
	    height: 39px;
	    line-height: 39px;
	    font-weight: 600;
	    font-size: 14px;
	    text-align: center;
	    background-color: #fff;
	    border: 1px #ccc solid;
	    border-bottom: 0;
	    margin-right: 2px;
	}
	.sentence {
	    margin-top: 30px;
	    color: #333;
	    text-align: left; 
	}
	.sentence span {
	    font-family: "NanumGothic-Bold";
	}
	.sentence {
	    margin-top: 30px;
	    color: #333;
	}
	.size16 {
	    color: #f1582f;
	    font-size: 16px;
	}
	html, body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, form, fieldset, legend, input, textarea, select, p, button {
	    margin: 0;
	    padding: 0;
	}
	form {
	    display: block;
	}
	fieldset, button, input {
	    border: 0;
	}
	caption, legend {
	    overflow: hidden;
	    width: 0;
	    height: 0;
	    text-indent: -9999em;
	    line-height: 0;
	    font-size: 0;
	}
	input, select, textarea {
	    vertical-align: top;
	}
	img, fieldset, button, input {
	    border: 0;
	}
	body, h1, h2, h3, h4, th, td, input {
	    font-family: "NanumGothic", "MS PGothic", Dotum, Arial, sans-serif;
	    font-size: 13px;
	    color: #333;
	    line-height: 1.5em;
	    font-weight: normal;
	}
	.search_area01 {
	    border: 1px solid #dfdfdf;
	}
	.donate {
	    padding: 20px 30px 19px;
	}
	.search_area01 {
	    position: relative;
	    top: 0;
	    left: 0;
	    height: 25px;
	    margin-bottom: 20px;
	    background-color: #f7f7f7;
	}
	.mt16 {
	    margin-top: 16px;
	    height: 66px;    
	}
	.hidden {
	    position: absolute;
	    top: -9999em;
	    height: 0;
	    width: 0;
	}
	.search_area01 * {
	    float: left;
	}
	.sl_size1, .sl_size2, .sl_size3, .sl_size4, .sl_size5, .sl_size6, .sl_size7, .sl_size8, .sl_size9, .sl_size10, .sl_size11, .sl_size12, .sl_size13, .sl_size14, .sl_size15, .sl_size16 {
	    display: inline-block;
	    vertical-align: top;
	}
	.search_area01 * {
	    float: left;
	}
	.search_area01 select {
	    width: 67px;
	    border: 1px solid #d3d3cc;
	}
	.search_area01 * {
	    float: left;
	}
	select, textarea {
	    font-family: "NanumGothic", "MS PGothic", Dotum, Arial, sans-serif;
	    font-size: 13px;
	    color: #333;
	}
	.search_area01 * {
	    float: left;
	}
	option {
	    font-weight: normal;
	    display: block;
	    white-space: pre;
	    min-height: 1.2em;
	    padding: 0px 2px 1px;
	}
	.sl_size1 .sbHolder {
	    width: 144px;
	}
	.sbHolder {
	    display: inline-block;
	    position: relative;
	    height: 23px;
	    border: solid 1px #d3d3cc;
	    font-weight: normal;
	    font-size: 12px;
	    line-height: 14px;
	    background-color: #fff;
	}
	.search_area01 * {
	    float: left;
	}
	.sbToggle {
	    display: block;
	    position: absolute;
	    top: 0;
	    right: 0;
	    width: 32px;
	    height: 23px;
	}
	a {
	    text-decoration: none;
	    color: #333;
	}
	.donate span:first-child {
	    margin-left: 0;
	}
	.hidden, .hide {
	    display: block;
	    position: absolute;
	    top: -9999px;
	    left: -9999px;
	    width: 0;
	    height: 0;
	    text-indent: -9999px;
	}
	.sbSelector {
	    display: block;
	    width: 80%;
	    overflow: hidden;
	    position: absolute;
	    top: 4px;
	    left: 0;
	    color: #333;
	    text-indent: 7px;
	    white-space: nowrap;
	    text-overflow: ellipsis;
	}
	.sbOptions {
	    overflow: auto;
	    position: absolute;
	    top: 24px !important;
	    left: -1px;
	    z-index: 1;
	    width: 100%;
	    margin: 0;
	    padding: 0;
	    max-height: 150px !important;
	    border: solid 1px #d3d3cc;
	    border-top-width: 0;
	    list-style: none;
	    background-color: #fff;
	}
	.sbOptions {
    overflow: auto;
	    position: absolute;
	    top: 24px !important;
	    left: -1px;
	    z-index: 1;
	    width: 100%;
	    margin: 0;
	    padding: 0;
	    max-height: 150px !important;
	    border: solid 1px #d3d3cc;
	    border-top-width: 0;
	    list-style: none;
	    background-color: #fff;
	}
	.search_area01 .sbOptions * {
	    float: none;
	}
	.sbOptions li {
	    padding-left: 0;
	}
	.sbOptions a, .sbSelector {
	    font-size: 13px;
	}
	.sbOptions a {
	    display: block !important;
	    padding: 5px 5px 4px 7px;
	    border-bottom: solid 1px #d3d3cc;
	    text-align: left;
	}
	.search_area01 input[type="text"] {
	    height: 23px;
	}
	.sub_content input[type="text"], .sub_content input.input_pw {
	    padding: 0 6px;
	    border: 1px solid #d3d3cc;
	    margin-left: 20px;   
	}
	body, h1, h2, h3, h4, th, td, input {
	    font-family: "NanumGothic", "MS PGothic", Dotum, Arial, sans-serif;
	    font-size: 13px;
	    color: #333;
	    line-height: 1.5em;
	    font-weight: normal;
	}
	input[type="button"] {
	    cursor: pointer;
	    margin-left: 10px;   
	}
	.btn_search {
	    margin-right: 3px;
	}
	.search_area01 * {
	    float: left;
	}
	.roBlack {
	    color: #fff;
	    border-radius: 2px;
	    border: 1px solid transparent;
	    background-color: #5f5f5f;
	    box-shadow: 0 2px 2px 0px rgba(0,0,0,0.10);
	}
	.btn_mini {
	    display: inline-block;
	    font-size: 12px;
	    font-weight: bold;
	    min-width: 50px;
	    padding: 4px 12px 5px;
	    box-sizing: border-box;
	    text-align: center;
	    line-height: normal;
	}
	.roWhite {
	    color: #333;
	    border-radius: 2px;
	    border: 1px solid #555;
	    background-color: #fff;
	    box-shadow: 0 2px 2px 0px rgba(0,0,0,0.10);
	    margin-right: 
	}
	.search_select {
	    float: right;
	    margin-bottom: 8px;
	}
	.sl_size2 {
	    display: inline-block;
    	vertical-align: top;
	}
	.search_select select {
	    margin-left: 5px;
	}
	.search_area01 select {
	    width: 67px;
	    border: 1px solid #d3d3cc;
	}
	.search_area01 * {
	    float: left;
	}
	option {
	    font-weight: normal;
	    display: block;
	    white-space: pre;
	    min-height: 1.2em;
	    padding: 0px 2px 1px;
	}
	.sl_size2 .sbHolder, .sl_size3 .sbHolder {
	    width: 94px;
	}
	.sbHolder {
	    display: inline-block;
	    position: relative;
	    width: 60px;
	    height: 23px;
	    border: solid 1px #d3d3cc;
	    font-weight: normal;
	    font-size: 12px;
	    line-height: 14px;
	    background-color: #fff;
	}
	.search_area01 * {
	    float: left;
	}
	#sbHolder_60074717 {
		float: right;
		margin-left: 200px;       
	}
	.search_area01 .search_select a {
	    margin-left: 3px;
	}
	.sbSelector {
	    display: block;
	    width: 80%;
	    overflow: hidden;
	    position: absolute;
	    top: 4px;
	    left: 0;
	    color: #333;
	    text-indent: 7px;
	    white-space: nowrap;
	    text-overflow: ellipsis;
	}
	.sbOptions {
	    overflow: auto;
	    position: absolute;
	    top: 24px !important;
	    left: -1px;
	    z-index: 1;
	    width: 100%;
	    margin: 0;
	    padding: 0;
	    max-height: 150px !important;
	    border: solid 1px #d3d3cc;
	    border-top-width: 0;
	    list-style: none;
	    background-color: #fff;
	}
		.search_area01 .search_select a {
	    margin-left: 3px;
	}
	.search_area01 .sbOptions li {
	    padding-right: 0;
	}  
	.roligWhite {
	    color: #333;
	    border-radius: 2px;
	    border: 1px solid #8f8f8f;
	    background-color: #f9f9f9;
	    box-shadow: 0 2px 2px 0px rgba(0,0,0,0.10);
	}
	.ax {
		border: 1px solid black;
		width: 50px;
		height: 30px;
		background-color: #f9f9f9;
	    box-shadow: 0 2px 2px 0px rgba(0,0,0,0.10);
		             
	}  
	.xx {
		text-align: center; 
		width: 50px;
		height: 30px;        
	}
	ul, ol, li {
	    list-style: none;
	}
	.relic_searchlist .thumb-list5 .heightLi180 {
	    float: left;
	    width: 211px;
	    margin-top: 15px;
	    margin-right: 20px;
	    border: 2px solid #f3f3f3;
	    color: #fff;
	      
	}
	.relic_searchlist .thumb-list5 .heightLi180 .thum_box {
	    display: table-cell;
	    width: 211px;
	    height: 140px;
	    margin-bottom: 10px;
	    text-align: center;
	    vertical-align: middle;
	}
	.relic_searchlist .thumb-list5 .heightLi180 .thum_box > img {
	    max-width: 211px;
	    max-height: 120px;
	}
	img {
	    vertical-align: top;
	    font-size: 0;
	    line-height: 0;
	    margin: 0;
	    padding: 0;
	}
	a {
	    text-decoration: none;
	    color: #333;
	}
	body, h1, h2, h3, h4, th, td, input {
	    font-family: "NanumGothic", "MS PGothic", Dotum, Arial, sans-serif;
	    font-size: 13px;
	    color: #333;
	    line-height: 1.5em;
	    font-weight: normal;
	}
	.thumb-list5 {
		margin-left: 70px;             
	}
	.hh {
		text-align: center;     
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
	<div class="subtop" id="subtop">
	<h3 class="hh">소장품 검색</h3>
		<div class="pTitle">
			
		</div>
		<div class="breadcrumb menu-location nav-location seo-location">
		
		</div>
		<div class="func_box"></div>
	</div>
	<div class="wrap_subcontent" style="height: auto;">
		<div class="sub_content relic_searchlist">
			<ul class="clear tabs_dft tabs">
				<li class="on">
					<a href="#">일반검색</a>
				</li>
				<li>
					<a href="#">디렉토리검색</a>
				</li>
			</ul>
			<div class="tab_cont">
				<p class="sentence">
					국립중앙박물관 주요 소장품 
					<span>
						<em class="size16">1,202</em>
						건
					</span>
					에 대해 검색하실 수 있습니다.
				</p>
				<form id="relicSearch" class="form-search" method="get" name="relicSearch">
					<fieldset>
						<legend>소장품 일반 검색</legend>
						<input type="hidden" name="startCount" id="startCount" value="0">
						<div class="search_area01 donate mt16">
							<label class="hidden" for="sc">검색구분 선택</label>
							<div class="sl_size1">
								<select id="sc" name="sc" class="sl_design" sb="64357215" style="display: none;">
									<option value="TITLE_KOR">소장품명</option>
									<option value="RELIC_NAME_HANJA">다른명칭</option>
									<option value="RELIC_NATION_NM_KOR">국적/시대</option>
									<option value="RELIC_PRODUCE_DESC_KOR">출토지</option>
									<option value="RELIC_MATERIAL_DESC">재질</option>
									<option value="WRITER_KOR">재질</option>
									<option value="WRITER_KOR">작가</option>
									<option value="RELIC_TREASURE_CODE11_KOR">국보/보물 지정번호</option>
									<option value="RELIC_CODE_NM_KOR">소장품번호</option>
								</select>
								<div id="sbHolder_64357215" class="sbHolder">
									<a id="sbToggle_64357215" href="#" class="sbToggle">
										<span class="hide">다른회차 보기</span>
									</a>
									<a id="sbSelector_64357215" href="#" class="sbSelector">국적/시대</a>
									<ul id="sbOptions_64357215" class="sbOptions" style="display: none;">
										<li>
											<a href="" rel="TITLE_KOR">소장품명</a>
										</li>
										<li>
											<a href="#" rel="RELIC_NAME_HANJA">다른명칭</a>
										</li>
										<li>
											<a href="#" rel="RELIC_NATION_NM_KOR">국적/시대</a>
										</li>
										<li>
											<a href="#" rel="RELIC_PRODUCE_DESC_KOR">출토지</a>
										</li>
										<li>
											<a href="#" rel="RELIC_MATERIAL_DESC">재질</a>
										</li>
										<li>
											<a href="#" rel="WRITER_KOR">작가</a>
										</li>
										<li>
											<a href="#" rel="RELIC_TREASURE_CODE11_KOR">국보/보물 지정번호</a>
										</li>
										<li class="last">
											<a href="#" rel="RELIC_CODE_NM_KOR">소장품번호</a>
										</li>
									</ul>
								</div>
							</div>
							<input id="sv" name="query" class="sl_input" title="검색어 입력" type="text" 
							style="width:350px;" value="고구려" onkeypress="javascript:pressCheck((event),this);">
							<input type="button" class="btn_search btn_mini roBlack" value="검색">
							<a href="#" class="btn_mini roWhite">
								<span>초기화</span>
							</a>
							<div class="search_select">
								<label class="hidden">출력갯수 선택</label>
								<div class="sl_size2">
									<select id="pageSize" name="pageSize" title="출력갯수 선택" class="sl_design" sb="60074717" style="display: none;">
										<option value="12">12개 출력</option>
										<option value="24">24개 출력</option>
										<option value="36">36개 출력</option>
									</select>
									<div id="sbHolder_60074717" class="sbHolder">
										<a id="sbToggle_60074717" href="#" class="sbToggle">
											<span class="hide">출력갯수 선택 목록보기</span>
										</a>
										<a id="sbSelector_60074717" href="#" class="sbSelector">12개 출력</a>
										<ul class="sbOptions" id="sbOptions_60074717" style="display: none;">
											<li>
												<a href="#" rel="12">12개 출력</a>
											</li>
											<li>
												<a href="#" rel="24">24개 출력</a>
											</li>
											<li class="last">
												<a href="#" rel="36">36개 출력</a>
											</li>
										</ul>
									</div>
								</div>
								<a href="#" class="ax">
									<span class="xx">적용</span>
								</a>
							</div>
						</div>
					</fieldset>
				</form>
				<div class="thumb-wrap">
					<ul class="thumb-list5 clearfix">
						<c:forEach var="board" items="${relic}">
							<li class="heightLi180">
								<a href="<%=request.getContextPath()%>/relic/number?renum=${board.renum}" class="thum_box">
									<img alt="부뚜막 대표이미지" src="<%=request.getContextPath()%>/${board.file}">
								</a>
								<div>
									<a href="<%=request.getContextPath()%>/relic/number?renum=${board.renum}">
										${board.rename}	
									</a>
								</div>
							</li>
						</c:forEach>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>		
		
 
