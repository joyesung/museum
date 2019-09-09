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
	.page-item .fas{
			font-size:20px;
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
	<div style="min-height: 561px">
	<div>
		<form action="<%=request.getContextPath()%>/board/list" method="get" class="row mb-2 mt-2">
			<div class="form-group col-2 mb-0">
			  <select class="form-control" name="type">
			    <option value="0" <c:if test="${pageMaker.criteria.type == 0 }">selected</c:if> >선택</option>
			    <option value="1" <c:if test="${pageMaker.criteria.type == 1 }">selected</c:if>>제목</option>
			    <option value="2" <c:if test="${pageMaker.criteria.type == 2 }">selected</c:if>>작성자</option>
			    <option value="3" <c:if test="${pageMaker.criteria.type == 3 }">selected</c:if>>내용</option>
			  </select>
			</div>
			<div class="form-group col-4 mb-0">
			  <input type="text" class="form-control" name="search" value="${pageMaker.criteria.search}">
			</div>
			<button type="submit" class="btn btn-outline-info">검색</button>
		</form>
	</div>
	<table class="table table-hover">
    <thead>
      <tr>
        <th>번호</th>
        <th>제목</th>
        <th>작성자</th>
        <th>작성일</th>
        <th>조회수</th>
      </tr>
    </thead>
    <tbody>
    	<c:if test="${list.size() ne 0}">
    		<c:forEach items="${list}" var="board">
		      <tr>
		        <td>${board.viewnum}</td>
		        <td>
			        <a href="<%=request.getContextPath()%>/board/display?viewnum=${board.viewnum}&page=${pageMaker.criteria.page}&type=${pageMaker.criteria.type}&search=${pageMaker.criteria.search}">
			        	${board.title}
		        	</a>  
	        	</td>
		        <td>${board.writer}</td>
		        <td>${board.registered}</td>
		        <td>${board.views}</td>
		      </tr>
	      </c:forEach>
      </c:if>
      <c:if test="${list.size() eq 0}">
	      <tr>
	        <td colspan="5" class="">게시글이 존재하지 않습니다.</td>
	      </tr>
      </c:if>
    </tbody>
  </table>
  <ul class="pagination" style="justify-content: center;">
    <c:if test="${pageMaker.prev}">
			<li class="page-item">
			    <a class="page-link" href="<%=request.getContextPath()%>/board/list?page=${pageMaker.startPage-1}&type=${pageMaker.criteria.type}&search=${pageMaker.criteria.search}"><i class="fas fa-chevron-left"></i></a>
			</li>
    </c:if>
    <c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage}" var="index">
    	<c:choose>
    	<c:when test="${pageMaker.criteria.page != index }">
				<li class="page-item">
				    <a class="page-link" href="<%=request.getContextPath()%>/board/list?page=${index}&type=${pageMaker.criteria.type}&search=${pageMaker.criteria.search}">${index}</a>
				</li>
			</c:when>
			<c:otherwise>
				<li class="page-item active">
				    <a class="page-link" href="<%=request.getContextPath()%>/board/list?page=${index}&type=${pageMaker.criteria.type}&search=${pageMaker.criteria.search}">${index}</a>
				</li>
			</c:otherwise>
			</c:choose>
    </c:forEach>
    <c:if test="${pageMaker.next}">
			<li class="page-item">
			    <a class="page-link" href="<%=request.getContextPath()%>/board/list?page=${pageMaker.endPage+1}&type=${pageMaker.criteria.type}&search=${pageMaker.criteria.search}"><i class="fas fa-chevron-right"></i></a>
			</li>
    </c:if>
	</ul>
	<c:if test="${user ne null}">
		<div>
			<a href="<%=request.getContextPath()%>/board/register"><button class="btn btn-outline-info">등록</button></a>
		</div>
	</c:if>
</div>		
 
