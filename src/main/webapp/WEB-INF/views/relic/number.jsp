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
	.exhibit_list2 {
	    padding-top: 25px;
	    border-top: 2px solid #666;
	}
	.relic_view .outveiw_img {
	    height: auto;
	}
	.outveiw_img {
	    float: left;
	    width: 303px;
	}
	.outveiw_img div {
	    position: relative;
	    top: 0;
	    left: 0;
	    z-index: 1;
	}
	.relic_view .thumb_view .img {
	    text-align: center;
	}
	.relic_view .thumb_view .img img {
	    max-width: 303px;
	}
	.outveiw_img .img_box img, .outveiw_img div .img img {
	    width: 100%;
	}
	.img_box p img {
	    border: 1px solid #dfdfdf;
	}
	img {
	    vertical-align: top;
	    font-size: 0;
	    line-height: 0;
	    margin: 0;
	    padding: 0;
	}
	.outveiw_img img {
	    max-height: 438px;
	}
	.wrap_subcontent {
	    padding-bottom: 0px;  
	}
	.sub_content {
	    clear: both;
	    position: relative;
	}
	body, h1, h2, h3, h4, th, td, input {
	    font-family: "NanumGothic", "MS PGothic", Dotum, Arial, sans-serif;
	    font-size: 13px;
	    color: #333;
	    line-height: 1.5em;
	    font-weight: normal;
	}
	input, select, textarea {
	    vertical-align: top;
	}
	input {
	    border: 0;
	}
	.outveiw_text {
	    float: right;
	    width: 580px;
	    text-align: left;   
	}
	outveiw_text h4 {
	    margin-top: 11px;
	    font-size: 20px;
	    font-family: "NanumGothic-Bold";
	    line-height: 24px;
	   
	}
	h4 {
	    display: block;
	    margin-block-start: 1.33em;
	    margin-block-end: 1.33em;
	    margin-inline-start: 0px;
	    margin-inline-end: 0px;
	        
	}
	.outveiw_text > ul {
	    width: 100%;
	    margin-top: 21px;
	    text-align: left;
	    border-bottom: 2px solid #e1e0dc;
	}
	ul, ol, li {
	    list-style: none;
	}
	.outveiw_text ul li {
	    padding: 13px 0 14px;
	    border-top: 1px solid #e1e0dc;
	    height: 48px;  
	}
	.outveiw_text ul li strong {
	    display: block;
	    width: 100px;
	    float: left;
	    padding-left: 12px;
	    font-family: "NanumGothic-Bold";
	}
	.relic_view .outveiw_text li p {
	    margin: 0;
	    line-height: 1.5;
	}
	.outveiw_text ul li p {
    	width: 440px;
    	float: left;
	}
	.btn_list02 {
	    margin-top: 15px;
	}
	.btn_list02, .btn_list03, .btn_right, .btn_right02, .btn_right03 {
	    float: right;
	}
	.btn_list02 {
		display: inline-block;
	}
	.btn_list02 .btn_large {
	    width: 125px;
	}
	.roBlack {
	    color: #fff;
	    border-radius: 2px;
	    border: 1px solid transparent;
	    background-color: #5f5f5f;
	    box-shadow: 0 2px 2px 0px rgba(0,0,0,0.10);
	}
	.btn_large {
	    display: inline-block;
	    font-size: 16px;
	    font-weight: bold;
	    box-sizing: border-box;
	    text-align: center;
	    padding: 12px 10px;
	    line-height: normal;
	}
	.view_info {
	    position: relative;
	    top: 0;
	    left: 0;
	    margin-top: 43px;
	    padding: 75px 19px 24px;
	    border: 1px solid #dfdfdf;
	}
	.view_info > .view_info_st {
	    position: absolute;
	    left: 20px;
	    top: -3px;
	}
	img {
	    vertical-align: top;
	    font-size: 0;
	    line-height: 0;
	    margin: 0;
	    padding: 0;
	}
	.view_info p {
	    line-height: 20px;
	}
	p {
	    display: block;
	    margin-block-start: 1em;
	    margin-block-end: 1em;
	    margin-inline-start: 0px;
	    margin-inline-end: 0px;
	    text-align: left;
	}
	.sub_content {
	    clear: both;
	    position: relative;
	}
	.outveiw_text ul li p {
	    width: 440px;
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
	<section id="body">
	 	<h1 class="stitle">소장품검색</h1>
	 	<div class="wrap_subcontent"> 
	 		<div class="sub_content relic_view">
	 			<div class="clear exhibit_list2 clearfix">  
			 		<div class="outveiw_img clearfix">
			 			<div class="img_box thumb_view">
			 				<p class="img">
			 					<img class="511" alt="부뚜막 큰 이미지" src="<%=request.getContextPath()%>/${search.file}">
			 				</p>
			 				<input type="hidden" id="relicZoomImg" name="relicZoomImg" value="0001.jpg">
			 			</div>
			 		</div>
			 		<div class="outveiw_text">
			 			<h4>${search.rename}</h4>
			 			<ul>
			 				<li>
			 					<strong>다른명칭</strong>
			 					<p>${search.diname}</p>	
			 				</li>
			 				<li>
			 					<strong>국적/시대</strong>
			 					<p>${search.nation}</p>	
			 				</li>
			 				<li>
			 					<strong>재질</strong>
			 					<p>${search.quality}</p>	
			 				</li>
			 				<li>
			 					<strong>분류</strong>
			 					<p>${search.ification}</p>	
			 				</li>
			 				<li>
			 					<strong>크기</strong>
			 				</li>
			 				<li>
			 					<strong>소장품번호</strong>
			 					<p>본관 5244</p>	
			 				</li>
			 			</ul>
			 			<p class="btn_list02">
			 				<a href="<%=request.getContextPath()%>/relic/search" class="btn_large roBlack">
			 					<span>목록</span>
			 				</a>
			 			</p>
			 		</div>
	 			</div>
	 			<div class="view_info clearfix">
	 				<p>
	 					${search.details}
	 				</p>
	 			</div>     
	 		</div>
	 	</div>
	</section> 	
</body>		
		
 
