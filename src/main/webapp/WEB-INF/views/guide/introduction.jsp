<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<head>
<script type="text/javascript">
	$(document).ready(function(){
		//더보기 또는 접기 버튼 클릭하면 
		$('.fas.fa-bars').click(function(){
			$('#divAllmenu').slideToggle();
		})
		$('#link01').click(function(){
			$('#information01').removeClass('display_none');	//보여줄 태그
			$('#information02').addClass('display_none');
			$('#information05').addClass('display_none');
		})
		$('#link02').click(function(){
			$('#information02').removeClass('display_none');	//보여줄 태그
			$('#information01').addClass('display_none');
			$('#information05').addClass('display_none');
		})
		$('#link05').click(function(){
			$('#information05').removeClass('display_none');	//보여줄 태그
			$('#information01').addClass('display_none');
			$('#information02').addClass('display_none');
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
	    width: 1120px;
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
	.txt_greeting {
	    padding-top: 360px;
	    background: url(/museum/resources/img/to.jpg) no-repeat 0 0;
	    background-size: 1040px 360px;
	    text-align: left;    
	}
	.txt_greeting > p:first-child {
	    letter-spacing: -0.1em;
	    font-size: 1.7em;
	    font-weight: bold;
	}
	.txt_greeting > p {
	    margin-bottom: 30px;
     	text-align: left;
	}
	.point01, .point01_bold {
	    color: #da3d00;
     	text-align: left;
	}
	.txt_greeting > p:first-child {
	    letter-spacing: -0.1em;
	    font-size: 1.7em;
	    font-weight: bold;
	     text-align: left;
	}
	.point01, .point01_bold {
	    color: #da3d00;
	    text-align: left;
	}
	.txt_greeting .signature {
	    margin: 0;
	    text-align: right;
	    font-weight: bold;
	}
	.title_hidden {
	    width: 100%;
	    height: 1px;
	    text-indent: -9999px;
	}
	.txt_bottomMargin {
	    margin-bottom: 10px;
	}
	.notable_list {
	    border-top: solid 2px #adadad;
	}
	.notable_list > li {
	    padding: 8px 15px;
	    background: url(../../../images/custom/kor/common/notable_bg.gif) repeat-y 0 0;
	    border-bottom: solid 1px #ddd;
	    color: #464646;
	    overflow: hidden;
	}
	.notable_list > li > strong:first-child {
	    float: left;
	    isplay: inline-block;
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
	h3.depth2_title, h3.depth2_title02, h4.depth2_title, h4.depth2_title02 {
	    background-position: 0 4px;
	    font-size: 1.143em;
	}
	.depth2_title02 {
	    margin-top: 30px;
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
	tr {
	    display: table-row;
	    vertical-align: inherit;
	    border-color: inherit;
	}
	.tstyle_list th:first-child, .tstyle_list td:first-child {
	    border-left: none;
	}
	.tstyle_list td {
	    padding: 12px 9px;
	    border-bottom: solid 1px #ddd;
	    text-align: center;
	}
	.tstyle_list tbody.txt_left th, .tstyle_list tbody.txt_left td, .tstyle_list td.txt_left {
	    text-align: left;
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
		<h1 class="stitle">박물관소개</h1>
		<p class="page_info">안녕하세요 국립고구려박물관입니다.</p>
		<div class="float_wrap"></div>
		<form name="reqForm" method="post">
			<article id="content">
				<ul class="tab_menu clearfix">
					<li class="on">
						<a id="link01">인사말</a>
					</li>
					<li class="on">
						<a id="link02">연혁 및 발자취</a>
					</li>
					<li class="on">
						<a id="link05">조직 및 업무</a>  
					</li>			
				</ul>  
				<div id="divUcont_cont" style="display:block">
					<section id="information01" class="tabcontent" style="" opacity: 1;">
						<h2 class="title_hidden" id>인사말</h2>
						<div class="txt_greeting">
							<p>
								국립고구려박물관을 찾아주신 여러분께 진심으로
								<span class="point01">감사의 말씀</span>
								을 드립니다.
							</p>
							<p>
								안녕하십니까?
								<br>
								고구려박물관을 방문해주신데 감사드리며 진심으로 환영합니다. 청주는 지정학정인 특징으로 인해 선사시대 이래로
								수많은 문화유적들이 남아 있는 역사 깊은 고장입니다.
								<br>
								특히 고대에는 고구려 백제 신라의 문화가 모두 남아있고 고구려의 남진기지로서의 발자취가 남아 있는 곳이기도 합니다.
							</p>
							<p>
								국립고구려박물관은 이러한 문화적 배경 아래 1929년 발족된 부여고적보존회를 시작으로 현재까지 약 80여년에 이르는 깊은 역사를 간직하고 있습니다.
								<br>
								<span class="point01">
									그동안 우리 박물관은 충북 내륙의 선사문화를 비롯하여 특히 고구려의 문화유산을 보존 관리하는데 중심 역할
								</span>
								을 다하여 왔습니다. 이외에도 유적·유물의 전시와 조사연구, 문화교육, 국제교류 등 다양한 활동을 통해 고구려의 역사와 문화를 널리 선양하는 데에 최선의 노력을 경주하고 있습니다. 
							</p>
							<p>
								또한 최근에는
								<span class="point01">더욱 높아진 이용자들의 문화 향유 욕구와 수준에 발맞춰 보다 쾌적한 관람환경을 제공하고자 전시시설의 환경개선과 다양한 전시유물의 확보에도 많은 노력</span>
								을 기울이고 있습니다.
								<br>
								그리고 사회의 다변화에 따른 맞춤식 프로그램 운영으로 다양한 계층과 연령에 맞는 문화 서비스를 제공함으로써, 국민에게 한층 가까이 다가가는 고구려전문박물관으로의 특성화와 그 위상을 제고하는데 노력을 아끼지 않을 것입니다.
							</p>
							<p>수요자 중심의 문화서비스의 질 향상을 통해 새롭게 거듭나는 국립부여박물관의 모습에 지속적인 관심과 애정을 가져 주시기 바라며, 백제문화의 향기가 이용자 모두의 가슴속에 가득하시길 기원합니다.
								<br>
								감사합니다. 
							</p>
							<p class="signature">국립고구려박물관 직원일동</p>
						</div>
					</section>
					<section id="information02" class="tabcontent display_none" style="opacity: 1;">
						<h2 class="title_hidden">연혁 및 발자취</h2>
						<p class="txt_bottomMargin">국립고구려박물관이 걸어온 발자취를 여러분께 알려드립니다.</p>
						<ul class="notable_list">
							<li>
								<strong>2015.01.02</strong>
								<span class="float_left">어린이박물관 전면 개편 재개관</span>
							</li>
							<li>
								<strong>2014.08.06</strong>
								<span class="float_left">상설전시실 전면 개편 재개관</span>
							</li>
							<li>
								<strong>2011.07.21</strong>
								<span class="float_left">복합문화센터(고구려마루) 증축 개관</span>
							</li>
							<li>
								<strong>2005.12.30</strong>
								<span class="float_left">보존과학관 증축 개관</span>
							</li>
							<li>
								<strong>1993.08.06</strong>
								<span class="float_left">현 박물관 이전 개관</span>
							</li>
							<li>
								<strong>1975.08.01</strong>
								<span class="float_left">국립고구려박물관 승격(대통령령 제7745호)</span>
							</li>
							<li>
								<strong>1945.10.13</strong>
								<span class="float_left">국립박물관 고구려분관으로 출범(대통령령 제7745호)</span>
							</li>
						</ul>
					</section>
					<section id="information05" class="tabcontent display_none" style="opacity: 1;">
						<h2 class="title_hidden">조직 및 업무</h2>
						<h3 class="depth2_title02">기획운영과</h3>
						<table class="tstyle_list">
							<caption>
								기획운영과 직위, 성명, 담당업무, 전화번호 안내
							</caption>
							<colgroup>
								<col width="20%">
								<col width="18%">
								<col width="*">
								<col width="22%">
							</colgroup>
							<thead>
								<tr>
									<th scope="co1">
										<br>
										직위
									</th>
									<th scope="co1">
										
										성명
									</th>
									<th scope="co1">
										
										담당업무
									</th>
									<th scope="co1">
										
										전화번호
									</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>
										기획운영과장
									</td>
									<td>
										백승영
									</td>
									<td class="txt_left">
										기획운영과 업무 총괄, 분임재무관, 개인정보보호 책임자, 분임 보안담당관, 분임 물품운용관, 소방안전관리자
										<br>	
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										주무관
									</td>
									<td>
										김종혁
									</td>
									<td class="txt_left">
										조경관리, 국유재산 관리 위생 용역, 비상대비 
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										주무관
									</td>
									<td>
										황광연
									</td>
									<td class="txt_left">
										지방박물관 특성화 육성사업, 시설 및 청사관리, 시설용역관리, 재난 및 위기대응 관리 등
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										주무관
									</td>
									<td>
										서광영
									</td>
									<td class="txt_left">
										전기·통신관련 업무, 에너지, 분임 물품관리관 보조 및 출납, 공연시설 운영, 방재실 관리 등
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										주무관
									</td>
									<td>
										강재홍
									</td>
									<td class="txt_left">
										분임지출관, 인사관리, 조직, 복무 , 교육
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										주무관
									</td>
									<td>
										이준희
									</td>
									<td class="txt_left">
										홈페이지관리, 민원, 보안 
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										주무관
									</td>
									<td>
										전슬기
									</td>
									<td class="txt_left">
										분임재무관 보조, 예산관리, 예산편성 및 결산, 계약, 통계  
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										주무관
									</td>
									<td>
										이경진
									</td>
									<td class="txt_left">
										분임 지출관 보조, 관서운영비 출납공무원, 문서수발 및 기록물관리, 민원사무처리 등
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										주무관
									</td>
									<td>
										이재덕
									</td>
									<td class="txt_left">
										공용차량 운행, 차량 유지관리, 일반분임보안담당관, 비상계획, 사회복무요원 관리
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										주무관
									</td>
									<td>
										정정석
									</td>
									<td class="txt_left">
										고객지원팀장, 고객지원팀 주요업무 기획 조정 및 근무지도, 전시실 방호 및 안내
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										주무관
									</td>
									<td>
										이상봉
									</td>
									<td class="txt_left">
										전시실 방호 및 안내, 물품 보관함 관리 등
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										주무관
									</td>
									<td>
										김영수
									</td>
									<td class="txt_left">
										전시실 방호 및 안내, 각종홍보물 및 브로슈어 관리, 보안점검 및 근무일지 관리, 명절 행사 기획
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										주무관
									</td>
									<td>
										명노근
									</td>
									<td class="txt_left">
										전시실 방호 및 안내, 업무 매뉴얼 관리, 소모품 구입 및 보충
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										주무관
									</td>
									<td>
										정용광
									</td>
									<td class="txt_left">
										전시실 방호 및 안내, 영상물 시스템 관리, 휴게실 관리, 전시실 편의시설 관리
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										주무관
									</td>
									<td>
										여완기
									</td>
									<td class="txt_left">
										전시실 방호 및 안내, 사이버 민원 대응 및 고객소리함,  로비 편의시설 관리, 관람객 통계
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										공무직
									</td>
									<td>
										김인이
									</td>
									<td class="txt_left">
										전시실 방호 및 안내, 사이버 민원 대응 및 고객소리함,  로비 편의시설 관리, 관람객 통계
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										공무직
									</td>
									<td>
										신현미
									</td>
									<td class="txt_left">
										전시실 방호 및 안내, 사이버 민원 대응 및 고객소리함,  로비 편의시설 관리, 관람객 통계
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										청원경찰
									</td>
									<td>
										임환용
									</td>
									<td class="txt_left">
										청사 및 시설(출입자 통제), 관람객 안내 등
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										청원경찰
									</td>
									<td>
										이다철
									</td>
									<td class="txt_left">
										청사 및 시설(출입자 통제), 관람객 안내 등
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										청원경찰
									</td>
									<td>
										권혁종
									</td>
									<td class="txt_left">
										청사 및 시설(출입자 통제), 관람객 안내 등
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										청원경찰
									</td>
									<td>
										문정민
									</td>
									<td class="txt_left">
										청사 및 시설(출입자 통제), 관람객 안내 등
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										공무직
									</td>
									<td>
										황선중
									</td>
									<td class="txt_left">
										시설팀장
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										공무직
									</td>
									<td>
										박광배
									</td>
									<td class="txt_left">
										시설팀
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										공무직
									</td>
									<td>
										지승창
									</td>
									<td class="txt_left">
										시설팀
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										공무직
									</td>
									<td>
										박상일
									</td>
									<td class="txt_left">
										시설팀
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										공무직
									</td>
									<td>
										신시우
									</td>
									<td class="txt_left">
										시설팀
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										공무직
									</td>
									<td>
										김권식
									</td>
									<td class="txt_left">
										시설팀
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										공무직
									</td>
									<td>
										박순석
									</td>
									<td class="txt_left">
										시설팀
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										공무직
									</td>
									<td>
										신민규
									</td>
									<td class="txt_left">
										시설팀
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										공무직
									</td>
									<td>
										이성자
									</td>
									<td class="txt_left">
										조경•위생팀장
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										공무직
									</td>
									<td>
										고광윤
									</td>
									<td class="txt_left">
										조경•위생팀
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										공무직
									</td>
									<td>
										유진용
									</td>
									<td class="txt_left">
										조경•위생팀
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										공무직
									</td>
									<td>
										정인순
									</td>
									<td class="txt_left">
										조경•위생팀
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										공무직
									</td>
									<td>
										정옥순
									</td>
									<td class="txt_left">
										조경•위생팀
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
							</tbody>
						</table>
						<h3 class="depth2_title02">학예연구실</h3>
						<table class="tstyle_list">
							<caption>
								학예연구실 직위, 성명, 담당업무, 전화번호 안내
							</caption>
							<colgroup>
								<col width="20%">
								<col width="18%">
								<col width="*%">
								<col width="22%">
							</colgroup>
							<thead>
								<tr>
									<th scope="co1">
										직위
									</th>
									<th scope="co1">
										성명
									</th>
									<th scope="co1">
										담당업무
									</th>
									<th scope="co1">
										전화번호
									</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>
										학예연구실장
									</td>
									<td>
										윤태영
									</td>
									<td class="txt_left"> 
										학예연구실 업무 총괄, 소장품 관리관
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										학예연구관
									</td>
									<td>
										심재석
									</td>
									<td class="txt_left"> 
										홍보, 박물관 브랜드화 사업, 전시 앱서비스 관리
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										학예연구관
									</td>
									<td>
										전인지
									</td>
									<td class="txt_left"> 
										소장품분임관리관, 마한백제권 박물관 네트워크 사업, 미술자료 조사연구 
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										학예연구관
									</td>
									<td>
										신명희
									</td>
									<td class="txt_left"> 
										소장품분임관리관, 상설전시실 관리(기증실, 중정), 수장고관리,국가귀속문화제 인수
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										학예연구사
									</td>
									<td>
										신명희
									</td>
									<td class="txt_left"> 
										소장품분임관리관, 상설전시실 관리(기증실, 중정), 수장고관리,국가귀속문화제 인수
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										학예연구사
									</td>
									<td>
										권소현
									</td>
									<td class="txt_left"> 
										소장품분임관리관, 상설전시실 관리(제3,4실),학예기획
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										학예연구사
									</td>
									<td>
										정현
									</td>
									<td class="txt_left"> 
										소장품분임관리관, 특별전 "백제 능산리 동하총" 전시, 일제강점기 자료 공개사업, 상설전시실 관리(제1,2실)
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										학예연구사
									</td>
									<td>
										김선영
									</td>
									<td class="txt_left"> 
										어린이박물관 운영, 학교 연계 및 문화나눔 등 교육프로그램 운영,국립부여박물관회 운영
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										학예연구사
									</td>
									<td>
										황현성
									</td>
									<td class="txt_left"> 
										소장품 및 전시품 보존처리(토기, 도자기), 소장품 및 전시품 3D조사,  야외석조물 상태점검 및 조사 등
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										학예연구사
									</td>
									<td>
										신용비
									</td>
									<td class="txt_left"> 
										소장품 및 전시품 보존처리(금속, 목재), 소장품 및 전시품 조사 및 분석, 기자재 관리(Hard X-ray설치, 분석 장비 등), 보존서무 등
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										전문경력관
									</td>
									<td>
										전상은
									</td>
									<td class="txt_left"> 
										 국제교류, 고구려마루 문화행사 및 야간개장, 박물관 홍보, 문화재그림 그리기 대회 등 
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										주무관
									</td>
									<td>
										전상은
									</td>
									<td class="txt_left"> 
										 일반서무(회의자료, 복무 등), 공무직 및 계약직 등 관리, 학예실운영(학예 민원 등) , 자원봉사자관리
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										주무관
									</td>
									<td>
										방민규
									</td>
									<td class="txt_left"> 
										 일반서무(회의자료, 복무 등), 공무직 및 계약직 등 관리, 학예실운영(학예 민원 등) , 자원봉사자관리
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										공무직
									</td>
									<td>
										김혜림
									</td>
									<td class="txt_left"> 
										 도서 및 관사자료 정리 보조 등
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										공무직
									</td>
									<td>
										박서현
									</td>
									<td class="txt_left"> 
										 DAMS관리, 사진 및 디지털 자료 및 발간도서 관리, 마한백제권 박물관 네트워크사업 보조 등
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										공무직
									</td>
									<td>
										신가영
									</td>
									<td class="txt_left"> 
										 사비마루 문화행사 및 야간개장 행사 보조, 자원봉사자 운영 및 교육 보조 등 
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										공무직
									</td>
									<td>
										이유라
									</td>
									<td class="txt_left"> 
										 특별전 보조, 상선전시 운영(3,4실) 보조, 미술자료조사연구 보조 등
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										공무직
									</td>
									<td>
										조현준
									</td>
									<td class="txt_left"> 
										특별전 보조, 상설전시실 운영(1실) 보조, 고고자료조사연구 보조 등
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										공무직
									</td>
									<td>
										김소현
									</td>
									<td class="txt_left"> 
										학술조사보고서 발간 보조, 상설전시 운영(2실) 보조, 고고자료조사연구 보조 등
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										공무직
									</td>
									<td>
										유가람
									</td>
									<td class="txt_left"> 
										학술조사보고서 발간 보조, 소장품 관리 보조, 수장고 관리 보조, 소장품 복제 등
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										공무직
									</td>
									<td>
										김명혜
									</td>
									<td class="txt_left"> 
										박물관 교육 보조, 어린이박물관 운영 보조, 문화가 있는 날 행사 운영 보조 등
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										공무직
									</td>
									<td>
										김채원
									</td>
									<td class="txt_left"> 
										박물관 교육 보조, 어린이박물관 운영 보조, 문화가 있는 날 행사 운영 보조 등
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										공무직
									</td>
									<td>
										이혜민
									</td>
									<td class="txt_left"> 
										박물관 교육 보조, 어린이박물관 운영 보조, 문화가 있는 날 행사 운영 보조 등
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										공무직
									</td>
									<td>
										신연홍
									</td>
									<td class="txt_left"> 
										소장품 보존처리 및 조사연구 보조 등
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										공무직
									</td>
									<td>
										이민희
									</td>
									<td class="txt_left"> 
										소장품 보존처리 및 조사연구 보조 등
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
								<tr>
									<td>
										공무직
									</td>
									<td>
										김선영
									</td>
									<td class="txt_left"> 
										소장품 보존처리 및 조사연구 보조 등
									</td>
									<td>
										043-225-2111
									</td>
								</tr>
							</tbody>
						</table>
					</section>
				</div>
			</article>
		</form>
	</section>
</body>
</html>