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
	.wrap_subcontent {
	    padding-bottom: 200px;
	}
	.sub_content {
	    clear: both;
	    position: relative;
	}
	html, body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, form, fieldset, legend, input, textarea, select, p, button {
	    margin: 0;
	    padding: 0;
	}
	.tab01 {
		width: 920px;
		height: 42px;	
	}
	.tabs_dft {
	    border-bottom: 2px #bbb solid;
	    height: 40px;
	    margin-bottom: 20px !important;
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
	a {
	    text-decoration: none;
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
	input, select, textarea {
	    vertical-align: top;
	}
	.tabs_dft {
	    border-bottom: 2px #bbb solid;
	    height: 40px;
	    margin-bottom: 20px !important;
	}
	.search_area01 {
	    border: 1px solid #dfdfdf;
	}
	.search_area01 {
	    position: relative;
	    top: 0;
	    left: 0;
	    height: 25px;
	    margin-bottom: 20px;
	    padding: 20px 10px 19px 37px;
	    background-color: #f7f7f7;
	}
	.mt30 {
	    margin-top: 30px !important;
	}
	img, fieldset, button, input {
	    border: 0;
	}
	html, body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, form, fieldset, legend, input, textarea, select, p, button {
	    margin: 0;
	    padding: 0;
	}
	.search_area01 * {
	    float: left;
	}
	caption, legend {
	    overflow: hidden;
	    width: 0;
	    height: 0;
	    text-indent: -9999em;
	    line-height: 0;
	    font-size: 0;
	}
	hidden {
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
	.search_area01 select {
	    width: 67px;
	    border: 1px solid #d3d3cc;
	}
	.search_area01 * {
	    float: left;
	}
	.tabs_dft {
	    border-bottom: 2px #bbb solid;
	    height: 40px;
	    margin-bottom: 20px !important;
	}
	#bbq {
		width: 1200px;    
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
	.sl_size2 .sbHolder, .sl_size3 .sbHolder {
	    width: 94px;
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
	.sbToggle {
	    display: block;
	    position: absolute;
	    top: 0;
	    right: 0;
	    width: 32px;
	    height: 23px;
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
	.search_area01 {
	    border: 1px solid #dfdfdf;
	}
	.search_area01 {
	    position: relative;
	    top: 0;
	    left: 0; 
	    height: 66px;
	    margin-bottom: 20px;
	    padding: 20px 10px 19px 37px;
	    background-color: #f7f7f7;
	}
	.sl_size2 .sbHolder, .sl_size3 .sbHolder {
	    width: 94px;
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
	.sbOptions a, .sbSelector {
	    font-size: 13px;
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
	.search_area01 .sbOptions li {
	    padding-right: 0;
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
	.hidden, .hide {
	    display: block;
	    position: absolute;
	    top: -9999px;
	    left: -9999px;
	    width: 0;
	    height: 0;
	    text-indent: -9999px;
	}
	.relic_recommend_reliclist .search_area01 .sl_input {
	    width: 428px;
	    border: 1px solid black; 
	}
	.search_area01 input[type="text"] {
	    height: 23px;
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
    }
    span	{
    	border: 1px solid gray;      
    }
    .search_select {
	    float: right;
	    margin-bottom: 8px;
	}
	.hidden {
	    position: absolute;
	    top: -9999em;
	    height: 0;
	    width: 0;
	}
	.sl_size1, .sl_size2, .sl_size3, .sl_size4, .sl_size5, .sl_size6, .sl_size7, .sl_size8, .sl_size9, .sl_size10, .sl_size11, .sl_size12, .sl_size13, .sl_size14, .sl_size15, .sl_size16 {
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
	.search_area01 .sbOptions li {
	    padding-right: 0;
	}
	.search_area01 .sbOptions * {
	    float: none;
	}
	.roligWhite {
	    color: #333;
	    border-radius: 2px;
	    border: 1px solid #8f8f8f;
	    background-color: #f9f9f9;
	    box-shadow: 0 2px 2px 0px rgba(0,0,0,0.10);
	}
	#sbHolder_35298581 {
		float: right;
	}
	.search_select {
		float: right;   
	}
	.sl_input {
		margin: 0 auto;   
	}
	.fieldset {
		margin: 0 auto;   
	}
	.list_ahn {
	    width: 100%;
	    border-top: 2px solid #666;
	}
	table {
	    border-collapse: collapse;
	    border-spacing: 0;
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
					<a href="<%=request.getContextPath()%>/relic/published">발간자료</a>
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
	 	<h1 class="stitle">유물검색</h1>
	 	<div class="float_wrap"></div>
	 	<form id="boardbookVO" name="reqForm">
	 		<div class="wrap_subcontent" style="height: auto;">  
	 			<div class="sub_content relic_recommend_reliclist">
	 				<div class="tab01">
	 					<ul class="clear tabs_dft tabs" id="bbq">
	 						<li class>
	 							<a>전체</a>
	 						</li>
	 						<li class="on">
	 							<a>선사·고대</a>
	 						</li>
	 						<li class>
	 							<a>중·근세</a>
	 						</li>
	 						<li class>
	 							<a>조각·공예</a>
	 						</li> 
	 					</ul>
	 				</div>
	 				<form id="searchForm" class="form-search clear" method="get">
	 					<input id="showHallId" name="showHallId" type="hidden" value>
	 					<input id="relicRecommendCategory" name="relicRecommendCategory" type="hidden" value="760">
	 					<div class="search_area01 mt30">
	 						<fieldset>
	 							<legend>큐레이터 추천소장품 검색</legend>
	 							<label class="hidden">검색 분야 선택</label>
	 							<div class="sl_size3">
	 								<select id="sc" name="sc" class="sl_design" title="검색 분류 선택" sb="23335303" style="display: none;">
	 									<option value="COM.RELIC_NAME_KOR">한글명</option>
	 									<option value="COM.RELIC_NAME_HANJA">한자명</option>
	 								</select>
	 								<div class="sbHolder" id="sbHolder_48649485">
	 									<a id="sbToggle_48649485" href="#">
	 										<span class="hide">검색분류 선택 목록보기</span>
 										</a>
 										<a id="sbSelector_48649485" href="#" class="sbSelector">한글명</a>
 										<ul id="sbOption_48649485" class="sbOptions" style="top:13px; max-height: 632.5px; display: none;">
 											<li>
 												<a href="#" rel="COM.RELIC_NAME_KOR">한글명</a>	
 											</li>
 											<li>
 												<a href="#" rel="COM.RELIC_NAME_HANJA">한자명</a>
 											</li>
 										</ul>
	 								</div>
	 							</div>
	 							<label class="hide">검색어 입력</label>
	 							<input id="sv" name="sv" class="sl_input" title="검색어 입력" type="text" value>
	 							<input type="button" class="btn_search btn_miniroBlack" value="검색">
	 							<a href="#" class="btn_mini">
	 								<span>초기화</span>
	 							</a>
	 						</fieldset>
	 						<div class="search_select">
	 							<label class="hidden">출력갯수 선택</label>
	 							<div class="sl_size2">
	 								<select id="pageSize" name="pageSize" title="게시물 출력수 선택" class="sl_design" sb="35298581" style="display: none;">
	 									<option value="10" selected="selected">10개씩</option>
	 									<option value="20">20개씩</option>
	 									<option value="30">30개씩</option>
	 								</select>
	 								<div class="sbHolder" id="sbHolder_35298581">
	 									<a id="sbToggle_35298581" href="#" class="sbToggle">
	 										<span class="hide">게시물 출력수 선택 목록보기</span>
	 									</a>
	 									<a id="sbSelector_35298581" href="#" class="sbSelector">
	 										10개씩
	 									</a>
	 									<ul id="sbOptions_35298581" class="sbOptions" style="top:13px; max-height: 632.5px; display: none;">
	 										<li>
	 											<a href="#" rel="10">10개씩</a>
	 										</li>
	 										<li>
	 											<a href="#" rel="20">20개씩</a>
	 										</li>
	 										<li class="last">
	 											<a href="#" rel="30">30개씩</a>
	 										</li>
	 									</ul>
	 								</div>
	 							</div>
	 							<a href="#" class="btn_mini roligwhite">
	 								<span>적용</span>
	 							</a>
	 						</div>
	 					</div>  
	 				</form>
	 				<div class="tab_cont">
	 					<table class="list_ahn">
	 						<caption>리스트를 대표이미지와 이미지의 상세정보로 나타낸 테이블 입니다.</caption>
	 						<colgroup>
	 							<col></
	 						</colgroup>
	 					</table>
	 				</div>
	 			</div>
	 		</div>
	 	</form>
</body>		
		
 
