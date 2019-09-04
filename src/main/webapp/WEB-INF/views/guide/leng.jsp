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
		$('#resvusermanVO').submit(function(){
			var t1 = $('#rsv_cp_1').val();
			var t2 = $('#rsv_cp_2').val();
			var t3 = $('#rsv_cp_3').val();
			$('input[name=boophone]').val(t1+t2+t3)
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
	  /*   width: 1120px; */   
	    margin: 0 auto;
	    padding: 32px 39px 40px;
	    border: 1px solid #ddd;
	    border-top: none;
	    overflow: hidden;
	}
	header, footer, article, section, aside, nav, main {
	    display: block;
	}
	.login_box {
	    width: 815px;
	    margin: auto;
	    padding: 40px;
	    border: solid 5px #ddd;
	}
	input, textarea {
	    border-radius: 3px;
	    border-top-color: #8a8c94;
	    border-bottom-color: #d5dee7;
	}
	select, input {
	    vertical-align: middle;
	    font-size: 0.929em;
	}
	input[type="hidden" i] {
	    display: none;
	    -webkit-appearance: initial;
	    background-color: initial;
	    cursor: default;
	    padding: initial;
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
	.chkType_info {
	    padding-bottom: 35px;
	    border-bottom: solid 1px #ddd;
	    text-align: center;
	    font-size: 1em;
	}
	img {
	    border: none;
	    vertical-align: middle;
	}
	.chkType_info {
	    padding-bottom: 35px;
	    border-bottom: solid 1px #ddd;
	    text-align: center;
	    font-size: 1em;
	}
	.form_login {
	    width: 550px;      
	    margin: 40px auto 0;
	    overflow: hidden;
	}
	fieldset {
	    margin: 0;
	    padding: 0;
	    border: none;
	}
	fieldset {
	    display: block;
	    margin-inline-start: 2px;
	    margin-inline-end: 2px;
	    padding-block-start: 0.35em;
	    padding-inline-start: 0.75em;
	    padding-inline-end: 0.75em;
	    padding-block-end: 0.625em;
	    min-inline-size: min-content;
	}
	legend {
	    font-size: 0;
	    line-height: 0;
	    overflow: hidden;
	}
	legend {
	    display: block;
	    padding-inline-start: 2px;
	    padding-inline-end: 2px;
	    border-width: initial;
	    border-style: none;
	    border-color: initial;
	    border-image: initial;
	}
	.login_list {
	    float: left;
	    width: 355px;
	    overflow: hidden;
	}
	.login_list span:first-child {
	    margin-top: 0;
	}
	.login_list span {
	    display: block;
	}
	.login_list span label {
	    display: inline-block;
	   /*  width: 60px; */   
	    margin-right: 15px;
	    text-align: right;
	    font-weight: bold;
	}
	label {
	    cursor: default;
	}
	.login_list span input {
	    width: 72%;
	    padding: 10px 5px;
	}
	input[type="text"], input[type="tel"], input[type="search"], input[type="number"], input[type="date"], input[type="email"], input[type="password"] {
	    height: 20px;
	    border-color: #cacfda;
	    border-top-color: #8a8c94;
	}
	input, textarea {
	    border-top-color: #8a8c94;
	    border-bottom-color: #d5dee7;
	}
	input {
	    vertical-align: middle;
	    font-size: 0.929em;
	}
	.login_list span input {
	    padding: 10px 5px;
	}
	.boq {
		text-align: left;    
	}
	#boq {
		text-align: left;   
	}
	span {
		text-align: left;  	
	}
	#rsv_cp_1 {
		margin-left: 15px;     
	}
	.btn_login {
	    float: right;
	    width: 150px;
	    overflow: hidden;
	}
	.btn_login .btn_black {
	    width: 150px;
	    height: 146px;
	    font-size: 1.5em;
	    float: right;  
	}
	.btn_black, .btn_gray, .btn_basic {
	    position: relative;
	    display: inline-block;
	    background: #333;
	    border: solid 1px #000;
	    color: #fff;
	    overflow: hidden;
	    font-weight: bold;
	    vertical-align: top;
	    float: right;  
	}
	.ck {
		float: right;   
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
	<section id="body">
		<h1 class="stitle">예약정보조회</h1>
		<p class="page_info"></p>
		<div class="float_wrap"></div>
		<form id="resvusermanVO" name="reqForm" method="get" action="<%=request.getContextPath()%>/guide/chi">
			<section id="content">
				<article id="detail_content">
					<div class="login_box">
						<input type="hidden" name="m" value>
						<input type="hidden" id="EncodeData" name="EncodeData" value>
						<article id="form_login">
							<h1 class="title_hidden">개인정보확인</h1>
							<p class="txt_center chkType_info">
								<img alt="국립부여박물관 누리집 개인정보확인 페이지입니다. 
								신청시 입력한 정보를 입력해 주십시오. 
								입력정보를 모르신다면 기획운영과(041-833-8562), 
								학예실(041-833-8563)로 문의해 주세요." src="<%=request.getContextPath()%>/resources/img/e.png">
							</p>
							<div class="form_login">
								<fieldset>
									<legend>본인인증 절차</legend>
									<div class="login_list">
										<span>
											<label for="rsv_nm">아이디</label>
											<input id="rsv_nm" name="booid" title="아이디" type="text" value>
										</span>
										<span>
											<label for="userHp" class="boq" id="boq">연락처</label>
											<input id="rsv_cp_1" name="rsv_cp_1" title="연락처 앞자리" style="width:10%"
											maxlength="4" type="text" value>
											-
											<input id="rsv_cp_2" name="rsv_cp_2" title="연락처 가운데자리"
											style="width:10%" maxlength="4" type="text" value>
											-
											<input id="rsv_cp_3" name="rsv_cp_3" title="연락처 뒷자리"
											style="width:10%" maxlength="4" type="text" value>
											<input type="hidden" name="boophone">
										</span>
										<span>
											<label for="rsv_pass">비밀번호</label>
											<input id="rsv_pass" name="boopass" title="비밀번호" maxlength="15"
											type="password" value>
										</span> 
									</div>
									<div class="btn_login">
										<%-- <a href="<%=request.getContextPath()%>/guide/chi" class="ck"> --%>
											<button type="submit" id="btnSiteLogin" class="btn_black">
											예약정보조회</button>
										</a>
									</div>
								</fieldset>
							</div>
						</article>
					</div>
				</article>
			</section>
		</form>
	</section>
</body>		
		
 
