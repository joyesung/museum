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
  		padding-left: 60px; 
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
	.img_contents{
		text-align:center;
	}
	.img{
		width:500px;
		height:500px;
		border:1px solid black;
		display:inline-block;
		margin:20px 20px 20px 0;		
	}  
	.img>img{
		width:500px;
		height:500px;
	}
 </style>
 </head>
 <body>
	<div>
		<div class="logowrap">
			<nav class="mune-list">
				<ul id="gnavigation">
					<li>국립고구려박물관</li>    
					<li>안내</li>
					<li>전시</li>
					<li>유물/학술</li>
					<li>게시판</li>
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
				<a>안내</a>
				<ul class="depth2" id="ulAllSubmeuLv2_1">
					<li>
						<a>관람시유의사항</a>
					</li>
					<li>
						<a>관람안내</a>
					</li>
					<li>
						<a>단체관람예약</a>
					</li>
					<li>
						<a>전시해설안내</a>
					</li>
					<li>
						<a>시설안내</a>
					</li>
					<li>
						<a>박물관소개</a>
					</li>
					<li>
						<a>오시는길</a>
					</li>
				</ul>
			</li>
			<li id="liAllLnb2" class="submenu">
				<a>전시</a>
				<ul class="depth2" id="ulAllSubmeuLv2_2">
				<li>
					<a>특별전시</a>
				</li>
				<li>
					<a>상설전시</a>
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
					<a>공지사항/게시판</a>
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
	<div class="container img_contents">
		<div class="img">
			<img src="<%=request.getContextPath()%>/resources/img/test1.jpg">	
		</div>
		<div class="img">
			<img src="<%=request.getContextPath()%>/resources/img/test2.jpg">	
		</div>
		<div class="img">	
			<img src="<%=request.getContextPath()%>/resources/img/test3.jpg">
		</div>
		<div class="img">	
			<img src="<%=request.getContextPath()%>/resources/img/test4.jpg">
		</div>
	</div>
</body>		
		
 
