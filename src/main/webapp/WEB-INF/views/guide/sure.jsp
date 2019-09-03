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
	header, footer, article, section, aside, nav, main {
	    display: block;
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
	.float_wrap, .float_wrap02, .link_wrap {
	    display: block;
	}
	form {
	    margin: 0;
	    padding: 0;
	    display: block;
	}
	#content {
	    position: relative;
	    /* width: 1120px; */     
	    margin: 0 auto;
	    padding: 32px 39px 40px;
	    border: 1px solid #ddd;
	    border-top: none;
	    overflow: hidden;
	}
	article, section, aside, nav, main {
	    display: block;
	}
	.depth2_title, .depth2_title02 {
	    margin-bottom: 13px;
	    color: #333;
	    padding-left: 30px;  
	}
	h2 {
	    font-size: 1.357em;
	    letter-spacing: -0.1em;
	    text-align: left;  
	}
	ul, ol, li, dl, dt, dd, p, h1, h2, h3, h4, h5, h6 {
	    margin: 0;
	    padding: 0;
	    list-style: none;
	}
	ul {
	    display: block;
	    margin-block-start: 1em;
	    margin-block-end: 1em;
	    margin-inline-start: 0px;
	    margin-inline-end: 0px;
	    padding-inline-start: 40px;
	    text-align: left;  
	}
	li {
		text-align: left;  
	}
	p.lstyle_round, .lstyle_line > li:first-child, .lstyle_round > li:first-child, .lstyle_round > dt:first-child {
	    margin-top: 0;
	}
	.point01, .point01_bold {
	    color: #da3d00;
	}
	.reservation_complete { 
	   /*  width: 451px; */
	    height: 58px;
	    margin: 30px 0;
	    padding: 38px 0 0 249px;
	    color: #fcaf17;
	    font-size: 1.4em;
	    font-weight: bold;
	    letter-spacing: -0.05em;
	    text-align: left;           
	}
	.tstyle_write {
	    clear: both;
	    width: 100%;
	    border-top: solid 2px #adadad;
	    border-bottom: solid 1px #adadad;
	}
	table {
	    border-collapse: collapse;
	    border: none;
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
	tbody {
	    display: table-row-group;
	    vertical-align: middle;
	    border-color: inherit;
	}
	tr {
	    display: table-row;
	    vertical-align: inherit;
	    border-color: inherit;
	}
	.tstyle_write th {
	    padding: 7px 10px;
	    background: #f6f6f6;
	    border-right: solid 1px #ddd;
	    border-bottom: solid 1px #ddd;
	    color: #333;
	    text-align: left;
	}
	table th {
	    white-space: nowrap;
	}
	.tstyle_write td {
	    padding: 7px 10px;
	    border-left: solid 1px #ddd;
	    border-bottom: solid 1px #ddd;
	}
	.letter_spacing {
	    letter-spacing: 0;
	}
	table td {
	    white-space: normal;
	    word-break: break-all;
	}
	td {
	    display: table-cell;
	    vertical-align: inherit;
	}
	.tstyle_write td {
    padding: 7px 10px;
	    border-left: solid 1px #ddd;
	    border-bottom: solid 1px #ddd;
	}
	table td {
	    white-space: normal;
	    word-break: break-all;
	}
	input, textarea {
	    border-radius: 3px;
	    border-top-color: #8a8c94;
	    border-bottom-color: #d5dee7;
	}
	input {
	    vertical-align: middle;
	    font-size: 0.929em;
	}
	.btn_area_center, .btn_area_right {
	    margin-top: 40px;
	    text-align: center;
	}
	.btn_area_center button:first-child {
	    margin-left: 0;
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
	.btn_area_center button {
	    margin-left: 4px;
	}
	.btn_gray {
	    background: #f2f2f2;
	    border-color: #cdcccc;
	    color: #333;
	}
	.btn_black, .btn_gray, .btn_basic {
	    position: relative;
	    display: inline-block;
	    width: 143px;
	    height: 48px;
	    border: solid 1px #000;
	    overflow: hidden;
	    font-weight: bold;
	    vertical-align: top;
	}
 </style>
<meta charset="UTF-8">
<title>Insert title here</title>
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
		<h1 class="stitle">단체관람예약</h1>
		<p class="page_info">
		국립고구려박물관에서는 단체관람 예약제를 시행하고 있습니다.	
		</p>
		<div class="float_wrap"></div>
		<form id="resvdftapplVO" name="reqForm" method="post">
			<section id="content">
				<article id="detail_content">
					<h2 class="depth2_title">단체관람 예약안내</h2>
					<ul class="lstyle_line">
						<li>
							20명 이상의 단체 관람의 경우, 누리집 사전 예약을 권장합니다. 
							<span class="point01">(회원가입 후 로그인 하셔야 사전예약이 가능합니다.)</span>
						</li>
						<li>
							아래 방문하고자 하는 날짜를 선택하시면 시간대별 예약가능여부를 확인할 수 있습니다.
						</li>
						<li class="point01">당일신청 및 전화예약은 불가능합니다.</li>
						<li>박물관 사정에 의해 사전예약된 관람일자를 조정 및 취소할 수 있음을 알려드립니다.</li>
					</ul>
					<div class="reservation_complete">
						
					단체관람  
					
						
						
							예약이 완료되었습니다.
						
					
				
					</div>
					<table class="tstyle_write">
						<caption>단체관람 예약시 입력했던 신청일시, 신청자명, 연락처, 신청인원, 단체명, 인솔자 정보 확인</caption>
						<colgroup>
							<col width="20%">
							<col width="*">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">${booking.boodate}</th>
								<td class="letter_spacing"></td>
							</tr>
							<tr>
								<th scope="row">${booking.booid}</th>
								<td>
									<input id="rsv_id" name="rsv_id" type="hidden" value>
								</td>
							</tr>
							<tr>
								<th scope="row">${booking.boophone}</th>
								<td class="letter_spacing"></td>
							</tr>
							<tr>
								<th scope="row">${booking.personnel}</th>
								<td class="letter_spacing"></td>
							</tr>
							<tr>
								<th scope="row">${booking.boogroup}</th>
								<td class="letter_spacing"></td>
							</tr>
							<tr>
								<th scope="row">${booking.booleading}</th>
								<td>
									<span style="display: inline-block;width:55px">성명 :</span>
									<br>
									<span style="display: inline-block;width:55px">연락처 :</span>
								</td>
							</tr>
						</tbody>
					</table>
					<div class="btn_area_center">
						<a href="<%=request.getContextPath()%>/guide/boo">
							<button type="button" id="btnGrpapplMod" title="수정하기" class="btn_black">수정하기</button>
						</a>
						<a href="<%=request.getContextPath()%>/guide/reservation">
							<button type="button" id="btnGrpapplList" class="btn_gray">확인</button>
						</a>
					</div>
				</article>
			</section>
		</form>
	</section>
</body>
</html>