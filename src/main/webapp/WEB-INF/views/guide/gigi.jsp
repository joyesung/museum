<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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
	.img_contents{
		text-align:center;
	}
	.img{
		width:400px;
		height:400px;
		border:1px solid black;
		display:inline-block;
		margin:20px 20px 20px 0;		
	}  
	.img>img{
		width:400px;
		height:400px;
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
	    width: 1100px; 
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
	    /* width: 1120px; */
	    margin: 0 auto;
	    padding: 32px 39px 40px;
	    border: 1px solid #ddd;
	    border-top: none;
	    overflow: hidden;
	}
	#divUcont_cont {
     overflow: hidden;
	}
	.depth2_title, .depth2_title02 {
	    margin-bottom: 13px;
	    color: #333;
	}
	h2 {
	    font-size: 1.357em;
	    letter-spacing: -0.1em;
	    text-align: left;
	}
	ul {
	    display: block;
	    margin-block-start: 1em;
	    margin-block-end: 1em;
	    margin-inline-start: 0px;
	    margin-inline-end: 0px;
	    padding-inline-start: 40px;
	    margin: 0;
	    padding: 0;
	    list-style: none;
	    text-align: left;
	}
	li {
	    display: list-item;
	    text-align: -webkit-match-parent;
	}
	.notable_list > li > span:first-child, .notable_list > li > strong:first-child {
	    display: inline-block;
	    width: 155px;
	    margin-right: 15px;
	    color: #333;
	    font-weight: bold;
	    float: left;
	}
	.notable_list > li > span.float_left {
	    float: none;
	    display: block;
	    position: relative;
	    overflow: hidden;
	}
	p {
	    display: block;
	    margin-block-start: 1em;
	    margin-block-end: 1em;
	    margin-inline-start: 0px;
	    margin-inline-end: 0px;
	}
	.table_bottomTxt {
   		margin-top: 10px;
   		text-align: left;
	}
	.notable_list {
    	border-top: solid 2px #adadad;
	}
	.notable_list > li {
	    border-bottom: solid 1px #ddd;
	    color: #464646;
	    overflow: hidden;
	}
	.attention {
	    margin: 5px 0 0 10px;
	    font-size: 0.95em;
	    text-align: left;
	}
	.notable_list > li > strong:first-child {
    	float: left;
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
	.depth2_title02 {
    	margin-top: 30px;
    	font-size: 1.357em;
    	letter-spacing: -0.1em;
    	text-align: left;
	}
	.link_wrap {
	    display: block;
	    overflow: hidden;
	}
	.link_wrap::after{
		clear:both;
		contents:"";
		display: block;
	}
	.link_wrap .lstyle_box {
	    float: left;
	    width: 80%;
	}
	p.lstyle_box, .lstyle_box > li {
	    margin-top: 1px;
	    
	}  
	.float_right {
    	float: right;
	}
	.btn_yellow, .btn_possible, .btn_impossible, .btn_standby {
	    display: inline-block;
	    height: 28px;
	    padding: 4px 30px 0 25px;
	    background: #ffdc01 url(/images/custom/kor/common/btn_yellowBg.png) no-repeat right 0;
	    border: solid 1px #d4b41e;
	    border-top-color: #f0cd2a;
	    border-radius: 3px;
	    color: #000;
	    line-height: 1.8;
	    font-size: 0.929em;
	}
	.link_wrap .lstyle_box {
    	float: left;
    	width: 80%;
	}
	.depth2_title02 {
	    margin-bottom: 13px;
	    color: #333;
	}
	.notable_list {
    	border-top: solid 2px #adadad;
	}
	.notable_list > li > strong:first-child {
    	float: left;
	}
	.notable_list > li {
	    padding: 8px 15px;
	    border-bottom: solid 1px #ddd;
	    color: #464646;
	    overflow: hidden;
	}
	.notable_list > li > span.float_left {
	    float: none;
	    display: block;
	    position: relative;
	    overflow: hidden;
	}
	.depth2_title, .depth2_title02 {
	    margin-bottom: 13px;
	    color: #333;
        margin-top: 30px;
	}
	.lstyle_box, .lstyle_dot, .lstyle_normal {
    	margin-left: 2px;
	}
	p.lstyle_box, .lstyle_box > li {
	    margin-top: 1px;     
	}
	.person_info {
    	margin: 50px 0 10px; 
    	padding-left:35px;     
    	text-align: left;   
	}
	.korea {
	 	color: black;     
	}
	.korea1 {
	 	color: white;    
	}     
 </style>
 </head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	<section id="body">
		<h1 class="stitle">관람안내</h1>
		<p class="page_info"></p>
		<form name="reqForm" method="post">
			<article id="content">
				<div id="divUcont_cont" class="display_none" style="display:block">
					<h2 class="depth2_title" style="opacity: 1;">관람시간</h2>	
					<ul class="notable_list" style="opacity: 1;">
						<li>
							<strong>평일</strong>
							<span class="float_left">오전 9시 ~ 오후 6시(11월~3월 오전10시~오후6시)</span>
						</li>
						<li>
							<strong>토요일,일요일,공휴일</strong>
							<span class="float_left">오전 9시 ~ 오후 7시(단 임시공휴일은 오전9시~오후6시)</span>
						</li>
						<li>
							<strong>문화가 있는 날</strong>
							<span class="float_left">매월 마지막 주 수요일 직후 토요일(오전9시~오후9시)</span>
						</li>
						<li>
							<strong>야간개장</strong>
							<span class="float_left">매주 토요일(4월~10월, 오전9시~오후9시)</span>
						</li>
					</ul>
					<p class="table_bottomTxt" style="opacity: 1;">※ 관람 종료시간 1시간 전까지만 입장할 수 있습니다.</p>
					<h2 class="depth2_title02" style="opacity: 1;">휴관일</h2>
					<ul class="notable_list no_bg" style="opacity: 1">
						<li>매주 월요일, 매년 1월 1일, 설날 및 추석 당일 </li>
					</ul>  
					<p class="attention" style="opacity: 1;">※ 단, 월요일이 「관공서의 공휴일에 관한 규정」 제2조에 따른 공휴일일 때에는 공휴일 다음의 첫 번째 평일</p>
					<h2 class="depth2_title02" style="opacity: 1;">관람료 : 무료</h2>
					<ul class="notable_list" style="opacity: 1;">
						<li>
							<strong>대상</strong>
							<span class="float_left">모든 관람객</span>
						</li>
					</ul>
					<h2 class="depth2_title02" style="opacity: 1;">전시실 해설서비스</h2>
					<div class="link_wrap" style="opacity: 1;">
						<ul class="lstyle_box">
							<li>관람객 여러분께 전시유물에 대한 해설을 통해 백제 역사·문화에 대한 이해와 함께 유물에 대한 깊은 감동을 드리기 위해 문화 자원 봉사자들이 무료 전시해설 서비스를 제공하고 있습니다.</li>
							<li>전시실 해설을 원하시는 분은 정해진 해설 시간에 맞춰 예약없이 상설전시관 중앙홀에 오시면 참여 가능합니다.</li>
						</ul>
						<p class="float_right">
						<a class="btn_yellow" href="<%=request.getContextPath()%>/guide/description">
							<button type="button">안내바로가기</button>  
						</a>
						</p>
					</div>   
					<h2 class="depth2_title02" style="opacity: 1;">단체관람 예약실시</h2> 
					<div class="link_wrap" style="opacity: 1">
						<ul class="lstyle_box">
							<li>쾌적한 관람환경 및 관람질서 유지를 위해 단체 사전예약을 하시기 바랍니다.</li>
							<li>30명 이상 초·중·고등학생 및 일반 단체가 관람하고자 할 경우 박물관 홈페이지를 통해 방문 3일전까지 사전 예약 바랍니다.
							<br>
							 (일시에 많은 단체관람객이 방문할 경우 예약단체가 우선 입장)
							 </li>
							<li>전시실 해설을 원하시는 분은 정해진 해설 시간에 맞춰 예약없이 상설전시관 중앙홀에 오시면 참여 가능합니다.
							<br>
							(자세한 사항은 '전시해설안내' 참조)
							</li>
						</ul>
						<p class="float_right">
						<a class="btn_yellow" href="<%=request.getContextPath()%>/guide/reservation">
							<button type="button">단체예약바로가기</button>
						</a>
						</p>
					</div>
					<h2 class="depth2_title02" style="opacity: 1;">기타문의</h2>
					<ul class="notable_list" style="opacity: 1;">
						<li>
							<strong>주소</strong>
							<span class="float_left">충북 청주시 서원구 사직대로 109</span>
						</li>
						<li>
							<strong>전화</strong>
							<span class="float_left">기획운영과 043-225-2111</span>
						</li>
						<li>
							<strong>팩스</strong>
							<span class="float_left">기획운영과 043-225-2111</span>
						</li>
					</ul>
					<h2 class="depth2_title02" style="opacity: 1;">전시실 관람예절</h2>
					<ul class="lstyle_box" style="opacity: 1;">
						<li>고성방가(휴대전화 포함)를 삼가해주시기 바랍니다.</li>
						<li>조명을 이용한 촬영 또는 삼각대를 사용한 촬영은 금지되어 있습니다. (사전허락을 얻은 경우는 예외)</li>
						<li>전시품을 만지거나 훼손하는 행위는 삼가해 주시기 바랍니다.</li>
						<li>흡연 등의 행위, 음료수, 과자 등 음식물 반입은 금지되어 있습니다.</li>
					</ul>
					<p style="opacity: 1;">&nbsp;</p> 	  
				</div>
			</article>
			<p class="person_info">
				★ 제공부서 : 기획운영과 / 문의 : 043-225-2111 / 수정일 : 2019. 08. 20.
			</p>
		</form>
	</section>
	   

</body>
</html>