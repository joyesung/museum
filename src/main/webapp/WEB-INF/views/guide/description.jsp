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
	#divUcont_cont {
    	overflow: hidden;
	}
	.depth2_title, .depth2_title02 {
    	margin-bottom: 13px;
    	color: #333;
    	text-align: left;
    	 
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
	    text-align: left;
	}
	p {
	    display: block;
	    margin-block-start: 1em;
	    margin-block-end: 1em;
	    margin-inline-start: 0px;
	    margin-inline-end: 0px;
	    text-align: left;   
	}
	.lstyle_box, .lstyle_dot, .lstyle_normal {
    	margin-left: 2px;
	}
	p.lstyle_box, .lstyle_box > li {
	    margin-top: 1px;
	       
	   
	}
	strong {
	    font-weight: bold;
	    text-align: left;
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
	    border-bottom: solid 1px #adadad;
	    color: #333;
	}
	table th {
	    white-space: nowrap;
	    text-align: center;
	}
	th {
	    display: table-cell;
	    vertical-align: inherit;
	    font-weight: bold;  
    }
    tbody {
	    display: table-row-group;
	    vertical-align: middle;
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
	table td {
	    white-space: normal;
	    word-break: break-all;
	}
	td {
	    display: table-cell;
	    vertical-align: inherit;
	}
	.tstyle_list td {
	    padding: 12px 9px;
	    border-left: solid 1px #e9e1d7;
	    border-bottom: solid 1px #ddd;
	    text-align: center;
	}
	.tstyle_list td {
	    text-align: center;
	} 
	td style p{
		text-align: center;   
	}
	.table_bottomTxt {
    	margin-top: 10px;
	}  
 </style>
 </head>
<body>
	<div>
		<div class="logowrap">
			<nav class="mune-list">
				<ul id="gnavigation">          
					<li> <a href="<%=request.getContextPath()%>/">국립고구려박물관</a></li>    
					<li> <a href="<%=request.getContextPath()%>/guide/gu">안내</a></li>
					<li> <a href="<%=request.getContextPath()%>/exhibition/special">전시</a></li>
					<li> <a href="<%=request.getContextPath()%>/relic/search">유물/학술</a></li>
					<li> <a href="<%=request.getContextPath()%>/board/list">게시판</a></li>
					<li> <a href="<%=request.getContextPath()%>/education/look">교육</a></li>
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
				<a href="<%=request.getContextPath()%>/education/look">교육</a>
				<ul class="depth2" id="ulAllSubmeuLv2_5">
				<li>
					<a href="<%=request.getContextPath()%>/education/look">교육동영상</a>
				</li>
				</ul>
				
			</li>
		</ul>
	</article>
	<section id="body">
		<h1 class="stitle">전시해설안내</h1>
		<p class="page_info"></p>
		<div class="float_wrap">
			<span class="current ">전시해설안내</span>
		</div>
		<form name="reqForm" method="post">
			<article id="content">
				<div id="divUcont_cont" class="display_none" style="display:block;">
					<h2 class="depth2_title" style="opacity: 1;">국립고구려박물관 정기 전시해설안내</h2>
					<p>국립고구려박물관은 고구려역사문화를 보다 잘 이해하실 수 있도록 정기 전시해설 서비스를 아래와 같이 제공합니다.</p>
					<ul class="lstyle_box" style="opacity: 1;">
						<li>대상: 가족단위 또는 20명 이하의 소규모 인원</li>
						<li>
							<strong>운영시간: 화~일 오전 10:30, 오후 1:30 (1일 2회 진행)&nbsp;</strong>
						</li>
						<li>참가방법: 별도의 사전 예약 없음(현장접수로 진행)</li>
						<li>문의: 전시해설안내(☎043-225-2111), 큐레이터와의 대화 안내(☎043-225-2111)</li>
					</ul>
					<table class="tstyle_list" style="opacity: 1;">
						<caption>국립고구려박물관 정기 전시해설 코스, 해설자, 모이는 곳, 해설시간안내</caption>
						<thead>
							<tr>
								<th scope="col">
									해설코스
								</th>
								<th scope="col">
									해설자
								</th>
								<th scope="col">
									모이는 곳
								</th>
								<th colspan="2" scope="col">
									해설일시
								</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>상설전시실</td>
								<td>자원봉사자</td>
								<td>상설전시관 중앙홀</td>
								<td style>
									<br>
								</td>
								<td style>
									<p>
											화~일10:30 / 13:30 
										<span style="color: rgb(255, 0, 0)">&nbsp;</span>
									</p>
								</td>
							</tr>
							<tr>
								<td>
									문화가 있는날
									<br>
									큐레이터와의 대화
								</td>
								<td>
									국립고구려박물관
									학예연구사
								</td>
								<td>
									상설전시관 중앙홀
								</td>
								<td>
									1월~12월 마지막 주 수요일
								</td>
								<td>
									16:00
								</td>
							</tr>
						</tbody>  
					</table>
					<p class="table_bottomTxt" style="opacity: 1;">※ 본 프로그램은 박물관 사정에 따라 변경될 수 있습니다.</p>
				</div>	
			</article>
		</form>
	</section>
	
</body>
</html>