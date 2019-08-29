<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type = "text/javascript" src="//code.jquery.com//jquery-3.4.1.js"></script>
<script type="text/javascript">
$(document).ready(function(){
		//더보기 또는 접기 버튼 클릭하면 
		$('.fas.fa-bars').click(function(){
			$('#divAllmenu').slideToggle();
		})
		$('.link01').click(function(){
			$('.ab').removeClass('display_none');	//보여줄 태그  
			$('.ac').addClass('display_none');
			$('.ad').addClass('display_none');
		})
		$('.link02').click(function(){
			$('.ac').removeClass('display_none');	//보여줄 태그
			$('.ab').addClass('display_none');
			$('.ad').addClass('display_none');
		})
		$('.link03').click(function(){
			console.log('123');
			$('.ad').removeClass('display_none');	//보여줄 태그
			$('.ab').addClass('display_none');
			$('.ac').addClass('display_none');
		})
		
		$('#spanListSubject0').click(function(){
			$('.ab').removeClass('display_none');	//보여줄 태그  
			$('.ac').addClass('display_none');
			$('.ad').addClass('display_none');
		})
		
		$('#link01').click();
});		//레디
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	    margin: 0 auto;
	    padding: 32px 39px 40px;
	    border: 1px solid #ddd;
	    border-top: none;
	    overflow: hidden;
	}
	article {
	    display: block;
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
	.tab_menu > li > a {
	    display: block;
	    height: 31px;
	    padding-top: 8px;
	    background: #fff;
	    border: solid 1px #ddd;
	    border-bottom: none;
	    border-left: none;
	}
	.float_wrap, .float_wrap02, .link_wrap {
	    display: block;
	    overflow: hidden;
	}
	input, textarea {
	    border-radius: 3px;
	    border-top-color: #8a8c94;
	    border-bottom-color: #d5dee7;
	}
	.float_wrap .date_search {
	    float: right;
	    margin-bottom: 8px;
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
	input[type="submit"], input[type="radio"], input[type="checkbox"], input[type="image"] {
	    width: auto;
	    border: none;
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
	.tstyle_list, .standard_detail {
	    clear: both;
	    width: 100%;
	    border-top: solid 2px #adadad;
	    border-bottom: solid 1px #adadad;
	    table-layout: fixed;
	}
	table {
	    border-collapse: collapse;
	    border: none;
	}
	.tstyle_list, .standard_detail {
	    clear: both;
	    width: 100%;
	    border-top: solid 2px #adadad;
	    border-bottom: solid 1px #adadad;
	    table-layout: fixed;
	}
	caption {
	    width: 100%;
	    height: 1px;
	    line-height: 0;
	    color: transparent;
	    font-size: 0.1em;
	    overflow: hidden;
	}
	caption {
	    display: table-caption;
	    text-align: -webkit-center;
	}
	colgroup {
	    display: table-column-group;
	}
	col {
	    display: table-column;
	}
	thead {
	    display: table-header-group;
	    vertical-align: middle;
	    border-color: inherit;
	}
	tr {
	    display: table-row;
	    vertical-align: inherit;
	    border-color: inherit;
	}
	.tstyle_list th:first-child, .tstyle_list td:first-child {
	    border-left: none;
	}
	.tstyle_list th.num {
	    width: 30px;
	}
	.tstyle_list th {
	    padding: 7px 9px;
	    background: #f6f6f6;
	    border-left: solid 1px #e9e1d7;
	    border-bottom: solid 1px #adadad;
	    color: #333;
	}
	tbody {
	    display: table-row-group;
	    vertical-align: middle;
	    border-color: inherit;
	}
	.tstyle_list .num {
	    width: 6%;
	}
	.tstyle_list th:first-child, .tstyle_list td:first-child {
	    border-left: none;
	}
	.tstyle_list tbody.txt_left th, .tstyle_list tbody.txt_left td, .tstyle_list td.txt_left {
	    text-align: left;
	}
	.tstyle_list td {
	    padding: 12px 9px;
	    border-left: solid 1px #e9e1d7;
	    border-bottom: solid 1px #ddd;
	}
	a {
	    color: #464646;
	    text-decoration: none;
	}
	.tstyle_list td.txt_left {
	    text-align: left;
	}
	a:-webkit-any-link {
	    cursor: pointer;
	}
	.tstyle_list td {
	    padding: 12px 9px;
	    border-left: solid 1px #e9e1d7;
	    border-bottom: solid 1px #ddd;
	    text-align: center;
	}
	.pagination {
	    display: flex;
	    padding-left: 0;
	    list-style: none;
	    border-radius: .25rem;
	}
	input, textarea {
	    border-radius: 3px;
	    border-top-color: #8a8c94;
	    border-bottom-color: #d5dee7;
	}
	.display_none	{
			display: none;
	}
	.exhibit_infoArea {
	    position: relative;
	    overflow: hidden;
	}
	.brochure_view {
	    padding-bottom: 50px;
	    border-bottom: solid 1px #ddd;
	}
	.exhibit_infoArea .thmb {
	    display: block;
	    float: left;
	    width: 300px;
	    height: 440px;
	    margin-right: 55px;
	    background: #555;
	}
	.exhibit_infoArea .thmb img {
	    width: 100%;
	    height: 100%;
	}
	img {
	    border: none;
	    vertical-align: middle;
	}
	.exhibit_infoArea .exhibit_info {
	    position: relative;
	    margin-top: 20px;
	    overflow: hidden;
	}
	.exhibit_info > strong, .exhibit_info .underline_title {
	    display: block;
	    margin: 0;
	    font-size: 1.286em;
	}
	.underline_title {
	    position: relative;
	}
	.underline_title, .exhibit_info > strong {
	    padding-bottom: 15px;
	    color: #333;
	}
	.exhibit_info .list_info {
	    overflow: hidden;
	}
	.brochure_view .list_info li {
	    padding-right: 80px;
	}
	.exhibit_info .list_info li {
	    margin-top: 8px;
	    overflow: hidden;
	}
	.brochure_view .list_info li > span:first-child {
	    width: 80px;
	}
	.exhibit_info .list_info li > span:first-child {
	    display: block;
	    float: left;
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
	.underline_title {
		text-align: left;
	}
	li {
		text-align: left;
	}
	.btn_area, .btn_area_center, .btn_area_right {
	    margin-top: 40px;
	    text-align: center;
	}
	.btn_black, .btn_gray, .btn_basic {
	    position: relative;
	    display: inline-block;
	    width: 143px;
	    height: 48px;
	    background: #333;
	    border: solid 1px #000;
	    color: #fff;
	    overflow: hidden;
	    font-weight: bold;
	    vertical-align: top;
	}
	</style>
</head>
<body>
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
 	<h1 class="stitle">전시도록</h1>
 	<p class="page_info">국립고구려박물관의 발간도서를 알려드립니다</p>
<div class="float_wrap"></div>
<form id="boardbookVO" name="reqForm">
	<section id="content"  class="ab">
			<article id="detail_content">
				<ul class="tab_menu">
					<li>
						<a class="link01">전시도록</a>
					</li>
					<li>
						<a class="link02">발굴보고서</a>
					</li>
					<li>
						<a class="link03">기타</a>
					</li>
				</ul>
			<div class="float_wrap">
				<section class="exhibit_infoArea brochure_view">
					<span class="thmb">
						<img alt="개태사, 태평성대 고려를 열다" src="<%=request.getContextPath()%>/resources${board.file}  ">
					
				</span>
				<div class="exhibit_info">
					<h2 class="underline_title">${board.title}</h2>
					<ul class="list_info">
						<li>
							<span>저자</span>	
							<span class="txt">${board.author}</span>
						</li>
						<li>
							<span>발행기관</span>	
							<span class="txt">${board.lssu}</span>
						</li>
						<li>
							<span>발행년도</span>	
							<span class="txt">${board.year}</span>
						</li>
						<li>
							<span>종류</span>	
							<span class="txt">${board.kind}</span>
						</li>
						<li>
							<span>페이지수</span>	
							<span class="txt">${board.page} page</span>
						</li>
						<li>
							<span>가격</span>	
							<span class="txt">${board.price} 원</span>
						</li>
					</ul>
				</div>
				<div class="btn_area">
					<button class="btn_black" id="btnBoardList" type="button">
						<a href="<%=request.getContextPath()%>/relic/published">목록</a>
					</button>   
				</div>
			</section>
			  
		
</body>