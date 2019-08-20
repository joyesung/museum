<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en"> 
<head> 
	<meta charset="UTF-8"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
	<meta http-equiv="X-UA-Compatible" content="ie=edge"> 
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"> 
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous"> 
	<!--  
		여러개의 css를 가져올 때 link 순서  
		일반적인 css(전체) >> 현재 페이지와 관련된 css(일부)순으로 나열하면 된다. 
	 --> 
	<title>회원정보수정</title> 
	<style> 
	*{ 
		margin: 0; 
		padding : 0; 
	} 
	.main{ 
		margin-top:50px; 
	} 
	.row{ 
		margin: 5px 0px; 
	} 
	.fab.fa-amazon{ 
		font-size: 100px; 
		color: red; 
	} 
	</style> 
</head> 
<body> 
	<div> 
		<div class="offset-4 col-4 border border-dark mt-5"> 
			<h1 class="text-center">회원정보수정</h1> 
			<form method="post" action="<%=request.getContextPath()%>/member/modify">  
				<div class="row"> 
					<label class="col-4">아이디</label> 
					<input type="text"class="form-control col-7" placeholder="아이디" name="id" value="${user.id}"> 
				</div> 
				<div class="row"> 
					<label class="col-4">기존비밀번호</label> 
					<input type="password"class="form-control col-7" placeholder="비밀번호" name="oldPw"> 
				</div> 
				<div class="row"> 
					<label class="col-4">새비밀번호</label> 
					<input type="password"class="form-control col-7" placeholder="새비밀번호"name="pw"> 
				</div> 
				<div class="row"> 
					<label class="col-4">새비밀번호확인</label> 
					<input type="password"class="form-control col-7" placeholder="새비밀번호확인"name="pw2"> 
				</div> 
				<div class="row"> 
					<label class="col-4">성별</label> 
					<div class="col-8"> 
						<label class="form-check-label col-5"> 
							<input type="radio" class="form-check-input" name="gender" value="M" value="${user.gender}">남성 
						</label> 
						<label class="form-check-label"> 
							<input type="radio" class="form-check-input" name="gender" value="F" value="${user.gender}">여성 
						</label> 
					</div> 
				</div> 
				<div class="row"> 
					<label class="col-4">이메일</label> 
					<input type="email"class="form-control col-7" placeholder="이메일" name="email" value="${user.email}"> 
				</div> 
				<div class="offset-8 col-3 clearfix p-0"> 
					<button class="btn btn-primary float-right">수정</button> 
				</div> 
			</form> 
		</div> 
	</div> 
</body> 
</html>