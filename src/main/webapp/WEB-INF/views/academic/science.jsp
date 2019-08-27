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
		$('#link01').click(function(){
			$('#information01').removeClass('display_none');
			$('#information02').addClass('display_none');//보여줄 태그
		})
		$('#link02').click(function(){
			$('#information02').removeClass('display_none');
			$('#information01').addClass('display_none');//보여줄 태그
		})
		$('#link01').click();
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
	    /* /* width: 1120px; */  
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
	#divUcont_cont {
	    overflow: hidden;
	}
	p {
	    display: block;
	    margin-block-start: 1em;
	    margin-block-end: 1em;
	    margin-inline-start: 0px;
	    margin-inline-end: 0px;
	}
	.title_hidden {
	    width: 100%;
	    height: 1px;
	    text-indent: -9999px;
	}
	h2 {
	    font-size: 1.357em;
	    letter-spacing: -0.1em;
	}
	h2 {
	    display: block;
	    margin-block-start: 0.83em;
	    margin-block-end: 0.83em;
	    margin-inline-start: 0px;
	    margin-inline-end: 0px;
	    font-weight: bold;
	}
	.preserve_info {
	    padding-left: 300px;
	    height: 400px;             
	    background: url(/museum/resources/img/bbq.jpg) no-repeat 0 0;     
	    background-size: 300px 463px;       
	}
	div {
	    display: block;
	}
	img	{
		border: none;
    	vertical-align:left;
    	
	}
	.preserve_info p {
	    margin-top: 17px;
	}
	p {
	    display: block;
	    margin-block-start: 1em;
	    margin-block-end: 1em;
	    margin-inline-start: 0px;
	    margin-inline-end: 0px;
	    text-align: left;
	    padding-left: 23px;            
	}
	h3.depth2_title, h3.depth2_title02, h4.depth2_title, h4.depth2_title02 {
	    background-position: 0 4px;
	    font-size: 1.143em;
	    text-align: left;  
	}
	.depth2_title02 {
	    margin-top: 30px;
	    text-align: left;  
	}
	p.lstyle_box, .lstyle_box > li {
	    margin-top: 1px;
	    padding-left: 2px;    
   	}
   	.lstyle_dot, .lstyle_normal {
	    margin-left: 2px;
	}
	p.lstyle_dot, .lstyle_dot > li {
	    margin-top: 2px;
	    padding-left: 9px;
	    color: #767676;
	    text-align: left;
	}
	.active_list {
	    overflow: hidden;
	}
	.active_list > li:first-child {
	    margin-top: 0;
	    padding-top: 0;
	    border-top: none;
	    text-align: left; 
	}
	.active_list > li {
	    overflow: hidden;
	    text-align: left; 
	}
	.active_list > li strong {
	    display: block;
	    color: #333;
	    letter-spacing: -0.1em;
	    font-size: 1.214em;
	}
	strong {
	    font-weight: bold;
	    text-align: left; 
	}
	.active_list .imgarea {
	    display: block;
	    margin-bottom: 15px;
	    text-align: left;
	}
	img {
	    border: none;
	    vertical-align: left;
	}
	.display_none	{
		display: none;
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
		<h1 class="stitle">보존과학</h1>
			<p class="page_info">국립고구려박물관에서는 문화유산 보존에 최선을 다하고 있습니다.</p>
			<div class="float_wrap"></div>
			<form name="reqForm" method="post">
				<article id="content">
					<ul class="tab_menu">
						<li class="on">
							<a id="link01">보존과학개요</a>
						</li>
						<li class="on">
							<a id="link02">보존과학 활동</a>
						</li>
					</ul>
					<div id="divUcont_cont" class="display_none" style="display:block;">    
						<section id="information01" class="tabcontent display_none" style="opacity: 1;">
							<p>&nbsp;</p>
							<h2 style="hidden"></h2>  
							<div class="preserve_info">
								<p>
									<img alt="문화재는 자연적인 노화현상으로 재질이 약화되거나 인위적인 행위로 인해 손상되는데
									이러한 손상된 문화재에 과거로부터 전해오는 전통적인 수리방법과 재료를 현대의 발달된 과학 지식
									과 기술을 접목시켜 문화재의 원형을 보존하거나 되살리고 각각의 문화재 재질에 적합한 환경에서
									보존 관리하여 후세에 전해주는것이 문화재 보존이라 할 수 있습니다. " src="/museum/resources/img/info.gif">
								</p>
								<p>
									문화재 보존은 예방보존과 보존복원으로 나눌 수 있는데, 예방보존은 문화재 재질에 따라 다루는 방법을 숙지하여 물리적인 손상을 미리 방지하거나 조명 또는 온·습도 등 보존환경을 지속적으로 점검하고 적절하게 조절하여 손상을 최소화하는 행동들을 말합니다.
								</p>
								<p>
									보존복원은 이미 손상된 문화재에 원래 갖고 있는 미적, 역사적 가치를 손상시키지 않는 범위에서 최소한의 조치를 취해서 수명을 연장시키는 모든 행위들은 의미합니다.
								</p>
								<p>
									국립부여박물관에서는 문화재의 보존처리와 관리를 위해 각종 기자재를 구비하고 금속 및 수침목재류, 도·토기 등 재질에 따라 가장 적합한 처리방법을 선택하여 처리하고 있으며, 전시유물 및 수장고 수장유물의 해충이나 곰팡이류 등의 발생을 예방하기 위해 지속적으로 온·습도 점검 및 보존환경 관리를 하고 있습니다.
								</p>
							</div>
							<h3 class="depth2_title02">문의 및 연락처</h3>
							<p class="lstyle_box">대표전화 043-225-2111, 팩스번호 043-225-2111</p>
							<ul class="lstyle_dot">
								<li>고구려 010-9288-6212, hshwang7@korea.kr</li>
							</ul>
						</section>
						<section id="information02" class="tabcontent display_none" style="opacity: 1;">
							<h2 class="title_hidden"></h2>
							<ul class="active_list">
								<li>
									<strong>금속 보존</strong>
									<span class="imgarea">
										<img alt="처리전, 처리후" src="/museum/resources/img/qw.jpg">
									</span>
									금속문화재는 금, 금동, 은, 철, 동제품 등 그 종류가 매우 다양하며, 주위환경과 반응하여 안정한 상태로 돌아가기 위해 부식이 발생합니다. 부식은 어떤 원소들과 어떻게 결합했는가에 따라서 안정한 녹과 불안정한 녹의 두 가지 상태로 나뉘며 안정한 녹은 보존될 필요도 있지만, 불안정한 녹은 제거하거나 안정상태로 만들어 주는 것이 보존처리라 할 수 있습니다. 처리과정은 예비조사, 이물질제거, 안정화처리, 강화처리, 접합ㆍ복원 순으로 이루어집니다.
								</li>
								<li>
									<strong>도·토기 보존</strong>
									<span class="imgarea">
										<img alt="처리전, 처리후" src="/museum/resources/img/ya.jpg">
									</span>
									도·토기는 다른 재질에 비하여 화학적으로는 안정한 상태이지만 물리적 충격에 취약합니다. 도·토기의 주된 손상원인은 매장당시의 토압이나 발굴과정 및 운반상의 부주의로 인한 균열발생 및 파손이 대부분을 차지하고 있으며, 완형의 상태로 발굴되는 경우는 드뭅니다. 따라서 적절한 보존처리를 통하여 원형의 모습을 복원시켜 주는 것이 중요합니다. 처리과정은 일반적으로 예비조사, 세척, 강화처리, 접합ㆍ복원, 색맞춤 순으로 이루어집니다.
								</li>
								<li>
									<strong>도·토기 보존</strong>
									<span class="imgarea">
										<img alt="처리전, 처리후" src="/museum/resources/img/ouba.jpg">
									</span>
									석조물은 대부분 옥외에 노출된 상태로, 자연적ㆍ인위적 풍화 요인이 복합적으로 작용하여 표면풍화가 진행된 상태입니다. 따라서 정기적인 풍화훼손 진단이 실시되어야 하며 상태가 심각한 석조물에 대해서는 처리전 상태조사를 근거로 적합한 처리방법을 선택하여 보존처리를 해야 합니다. 처리과정은 일반적으로 처리전 상태조사, 표면 크리닝, 강화처리, 접합 및 결실부위 충진, 표면처리(색맞춤 및 질감처리), 보존관리 순으로 이루어집니다.
								</li>
								<li>
									<strong>목재 보존</strong>
									<span class="imgarea">
										<img alt="처리전, 처리후" src="/museum/resources/img/zhi.jpg">
									</span>
									저습지에서 출토된 목재는 공기가 거의 없는 매장환경의 영향으로 열화가 적어 온전한 외형을 유지하고 있지만, 목재내부의 세포벽은 분해되어 없어지고 공극은 수분으로 가득 차 있어 매우 취약한 상태입니다. 따라서 발굴 후 신속한 보존처리가 이루어지지 않으면 목재내부의 수분이 증발하면서 원형을 잃어버리게 됩니다. 수침목재의 보존처리는 크게 예비조사, 세척, 치수안정화 및 강화처리, 건조, 접합ㆍ복원 순으로 이루어집니다.
								</li>
								<li>
									<strong>문화재 분석</strong>
									<span class="imgarea">
										<img alt="처리전, 처리후" src="/museum/resources/img/nihao.jpg">
									</span>
									문화재분석은 소장유물을 대상으로 과학적 조사와 분석연구를 하는 활동입니다. 연구의 주요 내용은 재질분석을 통한 재료학적 특성연구와 이를 바탕으로 유물의 제작기술 해석 및 원료의 수급을 비롯한 제작환경 추정 등입니다. 현재 X-선투과촬영기, 적외선촬영기(IR), 실체현미경, 주사전자현미경(SEM-EDS), 형광X-선분석기(XRF) 등을 보유하고 있으며, 소장유물 및 의뢰유물에 대한 조사 및 분석을 실시하고 있습니다.
								</li>
								<li>
									<strong>환경조사 및 관리</strong>
									<span class="imgarea">
										<img alt="처리전, 처리후" src="/museum/resources/img/xihuan.jpg">
									</span>
									소장유물은 장기적인 보존관리를 위해 재질에 따라 적절한 보존환경을 유지시켜 줘야 합니다. 이를 위해서는 지속적인 환경 모니터링과 함께 전시 및 수장고의 사용자재 및 시설에 대한 종합적인 검토가 필요합니다. 따라서 이 같은 작업의 일환으로 전시실 및 수장고에 대한 정기적인 온습도 측정을 하고 있으며, 년 1회 정기적으로 유물의 재질약화와 산화에 영향을 미치는 유해가스(CO2, CO, O3, HCHO 등) 조사와 함께 보존환경 개선을 위한 훈증소독을 실시하고 있습니다.
								</li>
							</ul>
						</section>
					</div>
				</article>
			</form>
	</section>
</body>		
		
 
