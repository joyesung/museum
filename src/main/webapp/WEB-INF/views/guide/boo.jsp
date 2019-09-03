<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<head>
<script type = "text/javascript" src="//code.jquery.com//jquery-3.4.1.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type = "text/javascript" src="<%=request.getContextPath()%>/resources/js/datepicker-ko.js"></script>


<script type="text/javascript">
	$(document).ready(function(){
		//더보기 또는 접기 버튼 클릭하면 
		$('.fas.fa-bars').click(function(){
			$('#divAllmenu').slideToggle();
		})
	})
	
	$(document).ready(function(){
		$('#btnGrpappSave').click(function(){
			return checkForm();
		})
		
		
	})
	$(document).ready(function(){
		$("#rsv_dt").datepicker({
			minDate : 0
			
		})
	})
		
	function checkForm() {
		
	    var rsv_cp_1 = document.resvdftapplVO.rsv_cp_1; 
	    var rsv_cp_2 = document.resvdftapplVO.rsv_cp_2;
	    var rsv_cp_3 = document.resvdftapplVO.rsv_cp_3;
	    var rsv_pass = document.resvdftapplVO.rsv_pass;
	    var rsv_organ = document.resvdftapplVO.rsv_organ;
	    var rsv_dt = document.resvdftapplVO.rsv_dt;
	    var chkAgreeInfo = document.resvdftapplVO.chkAgreeInfo;
	    console.log(rsv_cp_1.value);
	    // 휴대전화번호 입력 유무 체크
	    if(rsv_cp_1.value == '' || (rsv_cp_1.value.length < 3)) { 
	        window.alert("휴대전화번호를 입력하세요");
	        document.resvdftapplVO.rsv_cp_1.focus();
	        document.getElementById('rsv_cp_1').select();
	        return false; // 휴대전화번호가 입력이 안되어 있다면 submint 이벤트를 중지
	    }
	    else if(rsv_cp_2.value == '' || (rsv_cp_2.value.length < 4)) {
	        window.alert("휴대전화번호를 입력하세요");
	        document.resvdftapplVO.rsv_cp_2.focus();
	        document.getElementById('rsv_cp_2').select();
	        return false; // 휴대전화번호가 입력이 안되어 있다면 submint 이벤트를 중지
	    }else if(rsv_cp_3.value == '' || (rsv_cp_3.value.length < 4)) {
	        window.alert("휴대전화번호를 입력하세요");
	        document.resvdftapplVO.rsv_cp_3.focus();
	        document.getElementById('rsv_cp_3').select();
	        return false; // 휴대전화번호가 입력이 안되어 있다면 submint 이벤트를 중지
	    }  
	    // 암호 입력 유무 체크
		if(document.resvdftapplVO.rsv_pass.value == ''){
	    	window.alert("비밀번호를 입력하세요.");
	    	document.resvdftapplVO.rsv_pass.focus();
	    	document.getElementById('rsv_pass').select();
	        return false;   
	    }
		if(document.resvdftapplVO.rsv_organ.value == ''){
	    	window.alert("단체명(학교명)을 입력하세요.");
	    	document.resvdftapplVO.rsv_organ.focus();
	    	document.getElementById('rsv_organ').select();
	        return false; 	   
		} 
		if(document.resvdftapplVO.rsv_dt.value == ''){
	    	window.alert("신청 날짜를 선택하세요.");
	    	document.resvdftapplVO.rsv_dt.focus();
	    	document.getElementById('rsv_dt').select();
	        return false; 	   
		}     
		if(!$('#chkAgreeInfo').prop('checked')){
			alert('개인정보 수집에 동의하세요.')
			$('#chkAgreeInfo').select();
			return false;
		}
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
	header, footer, article, section, aside, nav, main {
	    display: block;
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
	      
	}
	p.lstyle_round, .lstyle_line > li:first-child, .lstyle_round > li:first-child, .lstyle_round > dt:first-child {
	    margin-top: 0;
	}
	.point01, .point01_bold {
	    color: #da3d00;
	}
	li	{
		text-align: left;   
	}
	.depth2_title02 {
	    margin-top: 30px;
	}
	.depth2_title, .depth2_title02 {
	    margin-bottom: 13px;
	    color: #333;
	}
	p {
	    display: block;
	    margin-block-start: 1em;
	    margin-block-end: 1em;
	    margin-inline-start: 0px;
	    margin-inline-end: 0px;
	    text-align: left; 
	}
	ul, ol, li, dl, dt, dd, p, h1, h2, h3, h4, h5, h6 {
	    margin: 0;
	    padding: 0;
	    list-style: none;
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
	    display: block;
	    padding-inline-start: 2px;
	    padding-inline-end: 2px;
	    border-width: initial;
	    border-style: none;
	    border-color: initial;
	    border-image: initial;
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
	colgroup {
	    display: table-column-group;
	}
	col {
	    display: table-column;
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
	label {
	    cursor: default;
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
	td {
	    display: table-cell;
	    vertical-align: inherit;
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
	input, textarea {
	    border-radius: 3px;
	    border-top-color: #8a8c94;
	    border-bottom-color: #d5dee7;
	}
	label {
	    cursor: default;
	}
	input[type="text"], input[type="tel"], input[type="search"], input[type="number"], input[type="date"], input[type="email"], input[type="password"] {
	    height: 20px;
	    padding: 2px;
	    border-color: #cacfda;
	    border-top-color: #8a8c94;
	}
	input[type="text"], input[type="tel"], input[type="search"], input[type="number"], input[type="date"], input[type="email"], input[type="password"] {
	    height: 20px;
	    padding: 2px;
	    border-color: #cacfda;
	    border-top-color: #8a8c94;
	}
	input[type="text"], input[type="tel"], input[type="search"], input[type="number"], input[type="date"], input[type="email"], input[type="password"] {
	    height: 20px;
	    padding: 2px;
	    border-color: #cacfda;
	    border-top-color: #8a8c94;
	}
	input[type="submit"], input[type="radio"], input[type="checkbox"], input[type="image"] {
	    width: auto;
	    border: none;
	}
	.tstyle_write th {
	    padding: 7px 10px;
	    background: #f6f6f6;
	    border-right: solid 1px #ddd;
	    border-bottom: solid 1px #ddd;
	    color: #333;
	    text-align: left;
	}
	.checkbox_consent {
	    margin-top: 10px;
	    padding: 15px 10px;
	    background: #faf9f7;
	    border: solid 1px #e1d9ce;
	}
	.btn_area, .btn_area_center, .btn_area_right {
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
	.checkbox_consent span {
	    display: block;
	    margin-top: 8px;
	    text-align: right;
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
		<form id="resvdftapplVO" name="resvdftapplVO" method="post" onsubmit="return checkForm();">
			<section id="content">
				<article id="detail_content">
					<h2 class="depth2_title">단체관람 예약안내</h2>
					<ul class="lstyle_line">
						<li>
							20명 이상의 단체 관람의 경우, 누리집 사전 예약을 권장합니다.
						</li>
						<li>
							아래 방문하고자 하는 날짜를 선택하시면 시간대별 예약가능여부를 확인할 수 있습니다.
						</li>
						<li class="point01">
							당일신청 및 전화예약은 불가능합니다.
						</li>
						<li>
							박물관 사정에 의해 사전예약된 관람일자를 조정 및 취소할 수 있음을 알려드립니다.
						</li>
					</ul>
					<h2 class="depth2_title02">단체관람 예약신청정보 입력</h2>
					<p>
						<span class="point01">*</span>
							표시는 필수입력 항목입니다.
					</p>
					<fieldset>
						<legend>단체관람 예약신청정보 입력</legend>
						<table class="tstyle_write">
							<caption>단체관람 예약 신청시 신청일시, 신청자명, 연락처, 비밀번호, 신청인원, 단체명(학교명), 인솔자정보 입력 및 개인정보 수집 및 이용동의</caption>
							<colgroup>
								<col width="15%">
								<col width="*">
							</colgroup>
							<tbody>
								<tr>
									<th scope="row">
										<span class="point01">*</span>
										<label for="reservation_date">신청일시</label>
									</th>
									<td>
										 
										<input id="rsv_dt" name="rsv_dt" type="text"  onclick="$('#rsv_dt').datepicker('show');">    
										<input id="rsv_seq" name="rsv_seq" type="hidden" value>
									</td>     
								</tr>
								<tr>
									<th scope="row">
										<span class="point01">*</span>
										<label for="rsv_num">아이디</label>
									</th>
									<td>
										<input type="text" id="rsv_nm" name="rsv_nm" value="${user.id}" title="신청자명" readonly="true">
									</td>
								</tr>
								<tr>
									<th scope="row">
										<span class="point01">*</span>
										<label for="tel">연락처</label>
									</th>
									<td>
										<input id="rsv_cp_1" name="rsv_cp_1" title="연락처 앞자리" class="txt_center" type="text" value size="3" maxlength="3">-
										<input id="rsv_cp_2" name="rsv_cp_2" title="연락처 가운데자리" class="txt_center" type="text" value size="4" maxlength="4">-
										<input id="rsv_cp_3" name="rsv_cp_3" title="연락처 끝자리" class="txt_center" type="text" value size="4" maxlength="4">
									</td>
								</tr>
								<tr>
									<th scope="row">
										<span class="point01">*</span>
										<label for="rsv_pass">비밀번호</label>
									</th>
									<td>
										<input id="rsv_pass" name="rsv_pass" title="비밀번호" type="password" value="">
									</td>
								</tr>
								<tr>
									<th scope="row">
										<span class="point01">*</span>
										<label for="group_name">
										단체명
										<br>
										(학교명)
										</label>
									</th>
									<td>
										<input id="rsv_organ" name="rsv_organ" title="단체명(학교명)" type="text" value="">
									</td>
								</tr>
								<tr>
									<th scope="row">
										<label for="rsv_leadr_nm">
											인솔자정보
										</label>
									</th>
									<td>   
										<span class="rsv_leadr">
											<label for="rsv_leadr_nm">성명</label>
											:
											<input id="rsv_leadr_nm" name="rsv_leadr_nm" title="인솔자 성명" type="text" value="">
										</span>
										<span class="rsv_leadr">
											연락처 :
											<input id="rsv_leadr_cp_1" name="rsv_leadr_cp_1" title="인솔자 연락처 앞자리" class="txt_center" type="text" value size="4" maxlength="4">
											<input id="rsv_leadr_cp_2" name="rsv_leadr_cp_2" title="인솔자 연락처 가운데자리" class="txt_center" type="text" value size="4" maxlength="4">
											<input id="rsv_leadr_cp_3" name="rsv_leadr_cp_3" title="인솔자 연락처 끝자리" class="txt_center" type="text" value size="4" maxlength="4">
										</span>
									</td>
								</tr>
								<tr>
									<th scope="row">
										<label for="area">
											개인정보
											<br>
											수집 및 
											<br>
											이용동의
										</label>
									</th>
									<td>
										<div class="checkbox_consent">
											- 수집ㆍ이용목적 : 부여박물관 홈페이지 단체관람예약 및 진행에 필요한 개인정보를 수집합니다. 
											<br>
											- 수집항목 : 신청자명, 연락처, 단체명(학교명), 인솔자 성명, 인솔자 연락처
											<br>
											- 보유기간 : 
											<strong style="font-size: 16px; color: #003964;">1년</strong>
											(1년뒤 자동으로 개인정보가 삭제됩니다.)
											<br>
											- 거부권 및 불이익 : 이용자는 개인정보수집ㆍ이용을 거부할 수 있으며 미동의 시 서비스 이용이 제한됩니다.
										 	<br>
										 	<span>
										 		<input name="chkAgreeInfo" id="chkAgreeInfo" type="checkbox" value>
										 		<label for="chkAgreeInfo">동의합니다.</label>
										 	</span>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
						<div class="btn_area_center">
							<a href="<%=request.getContextPath()%>/guide/sure"><button type="button" id="btnGrpappSave" title="신청하기" class="btn_black">
								신청하기
							</button></a>
							<a href="<%=request.getContextPath()%>/guide/reservation">
								<button type="button" title="취소가기" class="btn_gray">
									취소하기  
								</button>
							</a>
						</div>
					</fieldset>
				</article>
			</section>
		</form>
	</section>
</body>		
		
 
