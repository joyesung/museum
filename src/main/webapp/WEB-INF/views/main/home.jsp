<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type = "text/javascript" src="//code.jquery.com//jquery-3.4.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		//더보기 또는 접기 버튼 클릭하면 
		$('.fas.fa-bars').click(function(){
			$('#divAllmenu').slideToggle();
		})
		showSlides();
	})
	
	var slideIndex = 0;
	
	function showSlides() {
	  var i;
	  var slides = document.getElementsByClassName("mySlides");
	  var dots = document.getElementsByClassName("dot");
	  for (i = 0; i < slides.length; i++) {
	    slides[i].style.display = "none";  
	  }
	  slideIndex++;
	  if (slideIndex > slides.length) {slideIndex = 1}    
	  for (i = 0; i < dots.length; i++) {
	    dots[i].className = dots[i].className.replace(" active", "");
	  }
	  slides[slideIndex-1].style.display = "block";  
	  dots[slideIndex-1].className += " active";
	  setTimeout(showSlides, 2500); // Change image every 2 seconds   
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
	* {box-sizing: border-box;}
	body {font-family: Verdana, sans-serif;}
	.mySlides {display: none;}
	img {vertical-align: middle;}

	/* Slideshow container */
	.slideshow-container {
	  max-width: 1000px;
	  position: relative;
	  margin: auto;
	}
	
	/* Caption text */
	.text {
	  color: #f2f2f2;
	  font-size: 15px;
	  padding: 8px 12px;
	  position: absolute;
	  bottom: 8px;
	  width: 100%;
	  text-align: center;
	}
	
	/* Number text (1/3 etc) */
	.numbertext {
	  color: #f2f2f2;
	  font-size: 12px;
	  padding: 8px 12px;
	  position: absolute;
	  top: 0;
	}
	
	/* The dots/bullets/indicators */
	.dot {
	  height: 15px;
	  width: 15px;
	  margin: 0 2px;
	  background-color: #bbb;
	  border-radius: 50%;
	  display: inline-block;
	  transition: background-color 0.6s ease;
	}
	
	.active {
	  background-color: #717171;
	}
	
	/* Fading animation */
	.fade {
	  -webkit-animation-name: fade;
	  -webkit-animation-duration: 1.5s;
	  animation-name: fade;
	  animation-duration: 1.5s;
	}
	
	@-webkit-keyframes fade {
	  from {opacity: .4} 
	  to {opacity: 1}
	}
	
	@keyframes fade {
	  from {opacity: .4} 
	  to {opacity: 1}
	}

	/* On smaller screens, decrease text size */
	@media only screen and (max-width: 300px) {
	  .text {font-size: 11px}
	}
	.mySlides img{
		width: 1500px;      
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
	.korea {
	 	color: black;     
	}
	.korea1 {
	 	color: white;    
	}  
 </style>
 </head>
 <body>
	<div>
		<div class="logowrap">
			<nav class="mune-list">
				<ul id="gnavigation">          
					<li> <a class="korea" href="<%=request.getContextPath()%>"/">국립고구려박물관</a></li>    
					<li> <a class="korea" href="<%=request.getContextPath()%>/guide/gu">안내</a></li>
					<li> <a class="korea" href="<%=request.getContextPath()%>/exhibition/special">전시</a></li>
					<li> <a class="korea" href="<%=request.getContextPath()%>/relic/search">유물/학술</a></li>
					<li> <a class="korea" href="<%=request.getContextPath()%>/board/list">게시판</a></li>
					<li> <a class="korea" href="<%=request.getContextPath()%>/education/look">교육</a></li>
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
				<a class="korea" href="<%=request.getContextPath()%>/guide/gu">안내</a>
				<ul class="depth2" id="ulAllSubmeuLv2_1">
					<li>
						<a class="korea1" href="<%=request.getContextPath()%>/guide/gu">관람시유의사항</a>
					</li>
					<li>
						<a class="korea1" href="<%=request.getContextPath()%>/guide/gigi">관람안내</a>
					</li>
					<li>
						<a class="korea1" href="<%=request.getContextPath()%>/guide/reservation">단체관람예약</a>
					</li>
					<li>
						<a class="korea1" href="<%=request.getContextPath()%>/guide/description">전시해설안내</a>
					</li>
					<li>
						<a class="korea1" href="<%=request.getContextPath()%>/guide/facility">시설안내</a>
					</li>
					<li>
						<a class="korea1" href="<%=request.getContextPath()%>/guide/introduction">박물관소개</a>
					</li>
					<li>
						<a class="korea1" href="<%=request.getContextPath()%>/guide/directions">오시는길</a>
					</li>
					<li>
						<a class="korea1" href="<%=request.getContextPath()%>/guide/leng">예약정보조회</a>
					</li>
				</ul>
			</li>
			<li id="liAllLnb2" class="submenu">
				<a class="korea" href="<%=request.getContextPath()%>/exhibition/special">전시</a>
				<ul class="depth2" id="ulAllSubmeuLv2_2">
				<li>
					<a class="korea1" href="<%=request.getContextPath()%>/exhibition/special">특별전시</a>
				</li>
				<li>
					<a class="korea1" href="<%=request.getContextPath()%>/exhibition/permanent">상설전시</a>
				</ul>	
			</li>
			<li id="liAllLnb3" class="submenu">
				<a class="korea" href="<%=request.getContextPath()%>/relic/search">유물/학술</a>
				<ul class="depth2" id="ulAllSubmeuLv2_3">
				<li>
					<a class="korea1" href="<%=request.getContextPath()%>/relic/search">소장품검색</a>
				</li>
				<li>
					<a class="korea1" href="<%=request.getContextPath()%>/relic/published">발간자료</a>
				</li>
				<li>
					<a class="korea1" href="<%=request.getContextPath()%>/academic/science">보존과학</a>
				</li>
				</ul>	
			</li>
			<li id="liAllLnb4" class="submenu">
				<a class="korea" href="<%=request.getContextPath()%>/board/list">게시판</a>
				<ul class="depth2" id="ulAllSubmeuLv2_4">
				<li>
					<a class="korea1" href="<%=request.getContextPath()%>/board/list">공지사항/게시판</a>
				</li>
				</ul>
			</li>
			<li id="liAllLnb5" class="submenu">
				<a class="korea" href="<%=request.getContextPath()%>/education/look">교육</a>
				<ul class="depth2" id="ulAllSubmeuLv2_5">
				<li>
					<a class="korea1" href="<%=request.getContextPath()%>/education/look">교육동영상</a>
				</li>
				</ul>
				
			</li>
		</ul>
	</article>
		<div class="slideshow-container">
			<div class="mySlides fade">
			  <div class="numbertext">1 / 3</div>
			  <img src="<%=request.getContextPath()%>/resources/img/korea/844.jpg" style="width:100%;">
			  <div class="text">Caption Text</div>
			</div>
			
			<div class="mySlides fade">
			  <div class="numbertext">2 / 3</div>
			  <img src="<%=request.getContextPath()%>/resources/img/korea/789789.jpg" style="width:100%;">
			  <div class="text">Caption Two</div>
			</div>
			   
			<div class="mySlides fade">
			  <div class="numbertext">3 / 3</div>
			  <img src="<%=request.getContextPath()%>/resources/img/korea/5722.jpg" style="width:100%;">
			  <div class="text">Caption Three</div>
			</div>
		</div>
			<br>
		<div style="text-align:center">
		  <span class="dot"></span> 
		  <span class="dot"></span> 
		  <span class="dot"></span> 
		</div>
		<div class="iframe" style="opacity: 1;">
			<iframe width="516" height="315" title="박물관 관람예절 동영상" src="https://www.youtube.com/embed/y5G_nsunwIg" frameborder="0" scrolling="auto" allowfullscreen allow="autoplay; encrypted-media">
				</iframe>												
				
		</div>
</body>		    
		  
 
