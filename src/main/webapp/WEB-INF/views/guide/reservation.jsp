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
	    display: block;
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
	.depth2_title, .depth2_title02 {
	    margin-bottom: 13px;
	    color: #333;
	}
	h2 {
	    font-size: 1.357em;
	    letter-spacing: -0.1em;
	}
	.dashed_info {
	    padding-bottom: 25px;
	    border-bottom: dashed 1px #dddddd;
	}
	.lstyle_box, .lstyle_dot, .lstyle_normal {
	    margin-left: 2px;
	}
	p.lstyle_box, .lstyle_box > li {
	    margin-top: 1px;  
	   	text-align: left;     
	}
	.point01, .point01_bold {
	    color: #da3d00;
	}
	.date_control {
	    width: 100%;
	    height: 32px;
	    margin: auto;
	    margin-top: 40px;
	    text-align: center;
	    overflow: hidden;
	}
	.date_control > .year {
	    margin: -1px 9px 0 10px;
	    color: #000000;
	    font: 1.9em "Arial";
	}
	.date_control > span {
	    display: inline-block;
	}
	.date_control > .arrow {
	    vertical-align: top;
	}
	.date_control > span {
	    display: inline-block;
	}
	a {
	    color: #464646;
	    text-decoration: none;
	}
	img {
	    border: none;
	    vertical-align: middle;
	}
	.date_control > .month {
	    margin: 3px 4px 0;
	    color: #7F7468;
	    font-size: 1.143em;
	    font-weight: bold;
	    vertical-align: top;
	}
		.closure_info {
	    margin: -20px 2px 8px;
	    text-align: right;
	}
	p {
	    display: block;
	    margin-block-start: 1em;
	    margin-block-end: 1em;
	    margin-inline-start: 0px;
	    margin-inline-end: 0px;
	}
	.calendar_area {
	    margin-bottom: 30px;
	    border-top: solid 2px #adadad;
	    border-bottom: solid 1px #d5d5d5;
	    overflow: hidden;
	}
	.choice_date {
	    float: left;
	    width: 60px;
	    margin-top: 16px;
	    text-align: center;
	    line-height: 1;
	    font-weight: normal;
	}
	.choice_date .big {
	    display: block;
	    font-size: 1.8em;
	    font-weight: bold;
	}
	.calendar_number {
	    position: relative;
	    width: 94.7%;
	    margin-top: -1px;
	    font-size: 0.95em;
	    font-weight: bold;
	    overflow: hidden;
	}
	table {
	    width: 100%;
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
	td	{
		background: #f6f6f6;
	    color: black;  
	    border: 1px solid;  
	    border-color: black;    
	}
	th	{
		border-color: black;
	}
	.calendar_number th.select, .calendar_number td.select {
	    color: #fff;
	    border: none;
	}
	.calendar_number th.bg_cell, .calendar_number td.bg_cell {
	    background: #f6f6f6;
	    color: #aaaaaa;
	}
	.calendar_number th {
	    border-top: none;
	}
	.point02, .point02_bold, .point02 a {
	    color: #11479c;
	}
	.calendar_number th.bg_cell, .calendar_number td.bg_cell {
	    background: #f6f6f6;
	    color: #aaaaaa;
	}
	.calendar_number .point01 {
	    color: #da3d00;
	}
	tbody {
	    display: table-row-group;
	    vertical-align: middle;
	    border-color: inherit;
	}
	.calendar_number th.select, .calendar_number td.select {
	    color: #fff;
	    border: none;
	}
	.calendar_number th.bg_cell, .calendar_number td.bg_cell {
	    background: #f6f6f6;
	    color: #aaaaaa;
	}
	a {
	    color: #464646;
	    text-decoration: none;
	}
	.reservation_info {
	    margin-bottom: 3px;
	    padding-left: 20px;
	    background: url(../../../images/custom/kor/common/icon_mark.gif) no-repeat 0 4px;
	}
	.tstyle_write {
	    clear: both;
	    width: 100%;
	    border-top: solid 2px #adadad;
	    border-bottom: solid 1px #adadad;
	}
	caption {
	    width: 100%;
	    height: 1px;
	    line-height: 0;
	    color: transparent;
	    font-size: 0.1em;
	    overflow: hidden;
	}
	.txt_center {
	    text-align: center;
	}
	.tstyle_margin th {
	    padding: 7px 5px 7px 13px;
	}
	.tstyle_write th {
	    background: #f6f6f6;
	    border-right: solid 1px #ddd;
	    border-bottom: solid 1px #ddd;
	    color: #333;
	    text-align: left;
	}
	.btn_possible, .btn_impossible, .btn_standby {
	    height: 22px;
	    padding: 1px 5px 2px;
	    background-image: none;
	    letter-spacing: -1px;
	    line-height: 1.3;
	}
	.btn_yellow, .btn_possible, .btn_impossible, .btn_standby {
	    display: inline-block;
	    border: solid 1px #d4b41e;
	    border-top-color: #f0cd2a;
	    border-radius: 3px;
	    color: #000;
	    font-size: 0.929em;
	}
	.txt_center > th	{
		border: 1px solid; 
		border-color: black; 
	}
	.asc {
		border: 1px solid;
		border-color: black; 
		border-top-color: black;
		border-bottom-color: black;
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
		<h1 class="stitle">단체관람예약</h1>
		<p class="page_info">국립고구려박물관에서는 단체관람 예약제를 시행하고 있습니다.</p>
		<div class="float_wrap"></div>
		<form id="resvdftapplVO" name="reqForm" method="post">
			<article id="content">
				<h2 class="depth2_title">단체관람 사전예약 실시</h2>
				<ul class="lstyle_box dashed_info">
					<li>대상 : 30명 이상 초·중·고등학생 및 일반 단체</li>
					<li>아래 달력에서 신청 월, 일을 선택하시면 신청할 시간을 확인할 수 있습니다.</li>
					<li>단체관람을 예약하지 않아도 입장할 수 있지만, 동시에 많은 단체관람객이 방문할 경우 예약한 단체가 우선 입장합니다. 
(단, 단체관람예약에 전시해설예약이 포함되지 않습니다. 전시해설예약은 관람안내를 참조하시기 바랍니다.)</li>
					<li>단체관람 문의 : <span class="point01">043-225-2111</span></li>
					<li>예약확인은 홈페이지 좌측상단 "예약정보조회"에서 가능합니다.</li>
				</ul>	
				<div class="date_control">
					<span class="year">2019.08.</span>
					<span class="arrow">
						<a id="meng02">
							<img alt="다음달 보기" src="<%=request.getContextPath()%>/resources/img/arrow02.gif">
						</a>
					</span>
					<span class="month">
						<a id="meng03">2019.09</a>
					</span>
				</div>
				<p class="closure_info">
					휴관일은 조회되지 않습니다.
				</p>
				<div class="calender_area">
					<h3 class="choice_date">
						2019
						<span class="big">08</span>
					</h3>
					<div class="calender_number">
						<table>
							<caption>
								예약 예약할 수 있는 날짜 안내 달력
							</caption>
							<thead>
								<tr>
									<th scope="co1" class="select">
										목
									</th>
									<th scope="co1" class="bg_cell">
										금
									</th>
									<th scope="co1" class="bg_cell">
										<span class="point02">토</span>
									</th>
									<th scope="co1" class="bg_cell">
										<span class="point01">일</span>
									</th>
									<th scope="co1" class="select">
										월
									</th>
									<th scope="co1" class="select">
										목
									</th>
									<th scope="co1" class="select">
										수
									</th>
									<th scope="co1" class="select">
										목
									</th>
									<th scope="co1" class="select">
										금
									</th>
									<th scope="co1" class="bg_cell">
										<span class="point02">토</span>
									</th>
									<th scope="co1" class="bg_cell">
										<span class="point01">일</span>
									</th>
									<th scope="co1" class="select">
										월
									</th>
									<th scope="co1" class="select">
										화
									</th>
									<th scope="co1" class="select">
										수
									</th>
									<th scope="co1" class="select">
										목
									</th>
									<th scope="co1" class="select">
										금
									</th>
									<th scope="co1" class="bg_cell">
										<span class="point02">토</span>
									</th>
									<th scope="co1" class="bg_cell">
										<span class="point01">일</span>
									</th>
									<th scope="co1" class="select">
										월
									</th>
									<th scope="co1" class="select">
										화
									</th>
									<th scope="co1" class="select">
										수
									</th>
									<th scope="co1" class="select">
										목
									</th>
									<th scope="co1" class="select">
										금
									</th>
									<th scope="co1" class="bg_cell">
										<span class="point02">토</span>
									</th>
									<th scope="co1" class="bg_cell">
										<span class="point01">일</span>
									</th>
									<th scope="co1" class="select">
										월
									</th>
									<th scope="co1" class="select">
										화
									</th>
									<th scope="co1" class="select">
										수
									</th>
									<th scope="co1" class="select">
										목
									</th>
									<th scope="co1" class="select">
										금
									</th>
									<th scope="co1" class="bg_cell">
										<span class="point02">토</span>
									</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="select">
										1
									</td>
									<td class="bg_cell">
										2
									</td>
									<td class="bg_cell">
										3
									</td>
									<td class="bg_cell">
										4
									</td>
									<td class="bg_cell">
										<span  title="휴관일입니다.">5</span>
									</td>
									<td class="bg_cell">
										6
									</td>
									<td class="bg_cell">
										7
									</td>
									<td class="bg_cell">
										8
									</td>
									<td class="bg_cell">
										9
									</td>
									<td class="bg_cell">
										10
									</td>
									<td class="bg_cell">
										11
									</td>
									<td class="bg_cell">
										<span  title="휴관일입니다.">12</span>
									</td>
									<td class="bg_cell">
										13
									</td>
									<td class="bg_cell">
										14
									</td>
									<td class="bg_cell">
										15
									</td>
									<td class="bg_cell">
										16
									</td>
									<td class="bg_cell">
										17
									</td>
									<td class="bg_cell">
										18
									</td>
									<td class="bg_cell">
										<span  title="휴관일입니다.">19</span>
									</td>
									<td class="bg_cell">
										20
									</td>
									<td class="bg_cell">
										21
									</td>
									<td class="bg_cell">
										22
									</td>
									<td class="bg_cell">
										23
									</td>
									<td class="bg_cell">
										24
									</td>
									<td class="bg_cell">
										25
									</td>
									<td class="bg_cell">
										<span  title="휴관일입니다.">26</span>
									</td>
									<td class="bg_cell">
										<a id="nihao">
										27
										</a>
									</td>
									<td class="bg_cell">
										<a id="nihao">
										28
										</a>
									</td>
									<td class="bg_cell">
										<a id="nihao">
										29
										</a>
									</td>
									<td class="bg_cell">
										<a id="nihao">
										30
										</a>
									</td>
									<td class="bg_cell">
										<a id="nihao">
										31
										</a>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="culture_infoWrap">
					<p class="reservation_info">선택일시 : 2019년 08월 01일</p>
				</div>
				<table class="tstyle_write tstyle_margin">
					<caption>예약가능 일자에 입장시간, 예약인원, 예약현황 안내</caption>
					<tbody class="txt_center">
						<tr>
							<th scope="row" class="asc">구분</th>
							<td>
								1회
								<br>
								(10시)
							</td>
							<td>
								2회
								<br>
								(11시)
							</td>
							<td>
								3회
								<br>
								(12시)
							</td>
							<td>
								4회
								<br>
								(13시)
							</td>
							<td>
								5회
								<br>
								(14시)
							</td>
							<td>
								6회
								<br>
								(15시)
							</td>
							<td>
								7회
								<br>
								(16시)
							</td>
							<td>
								8회
								<br>
								(17시)
							</td>
						</tr>
						<tr>
							<th scope="row" class="asc">정원</th>
							<td>300명</td>
							<td>300명</td>
							<td>300명</td>
							<td>300명</td>
							<td>300명</td>
							<td>300명</td>
							<td>300명</td>
							<td>300명</td>
						</tr>
						<tr>
							<th scope="row" class="asc">잔여</th>
							<td>
								300명
								<br>
								<a href="<%=request.getContextPath()%>/guide/boo">
								<button type="button" class="btn_possible" id="btnResvaddOrd_20190801_2">예약가능</button>
								</a>
							</td>
							<td>
								300명
								<br>
								<a href="<%=request.getContextPath()%>/guide/boo">
								<button type="button" class="btn_possible" id="btnResvaddOrd_20190801_3">예약가능</button>
								</a>
							</td>
							<td>
								300명
								<br>
								<a href="<%=request.getContextPath()%>/guide/boo">
								<button type="button" class="btn_possible" id="btnResvaddOrd_20190801_4">예약가능</button>
								</a>
							</td>
							<td>
								300명
								<br>
								<a href="<%=request.getContextPath()%>/guide/boo">
								<button type="button" class="btn_possible" id="btnResvaddOrd_20190801_5">예약가능</button>
								</a>
							</td>
							<td>
								300명
								<br>
								<a href="<%=request.getContextPath()%>/guide/boo">
								<button type="button" class="btn_possible" id="btnResvaddOrd_20190801_6">예약가능</button>
								</a>
							</td>
							<td>
								300명
								<br>
								<a href="<%=request.getContextPath()%>/guide/boo">
								<button type="button" class="btn_possible" id="btnResvaddOrd_20190801_7">예약가능</button>
								</a>
							</td>
							<td>
								300명
								<br>
								<a href="<%=request.getContextPath()%>/guide/boo">
								<button type="button" class="btn_possible" id="btnResvaddOrd_20190801_8">예약가능</button>
								</a>
							</td>
							<td>
								300명
								<br>
								<a href="<%=request.getContextPath()%>/guide/boo">
								<button type="button" class="btn_possible" id="btnResvaddOrd_20190801_9">예약가능</button>
								</a>
							</td>
						</tr>
					</tbody>
				</table>
			</article>
		</form>
	</section>
</body>		
		
 
