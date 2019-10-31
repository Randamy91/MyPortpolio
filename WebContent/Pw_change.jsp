<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%
	
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<link rel="stylesheet" href="bootstrap/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="css/Pw_change.css" />

<title>세모- 상가 중개사이트</title>
</head>
<body>
	<!--------------------------- 복사하여 사용 하세요 ---------------------------->
	<!-- 상단 메뉴 바 -->
	<nav class="navbar menu_navbar bg-white">
		<!--<div class="navbar-header menu_header">-->
		<a class="navbar-brand logo" href="Main.jsp"> <img alt="Brand"
			src="img/main_logo.jpg" width="65px" height="40px">
		</a>
		<p class="navbar-text navbar-left">
			<a href="Main.jsp" class="navbar-link" style="text-decoration: none">상가</a>
		</p>
		<p class="navbar-text navbar-left">
			<a href="Bigdata.jsp" class="navbar-link"
				style="text-decoration: none">상권분석</a>
		</p>
		<p class="navbar-text navbar-right">
			<a href="Joinus_select.jsp" class="navbar-link"
				style="text-decoration: none">회원가입</a>
		</p>
		<p class="navbar-text navbar-right">
			<a href="#myModal" data-toggle="modal" class="navbar-link"
				style="text-decoration: none">로그인</a>
		</p>
	</nav>

	<!-- 상단 메뉴 바  -->


	<!--  로그인 Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog mymodal-size">
			<div class="modal-content mymodal-content">
				<div class="modal-body mymodal-body">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h2 class="modal-title loginmodal-title" id="myModalLabel">로그인</h2>
					<form action="#" method="post">
						<div class="input-container">
							<input type="text" class="form-control input-info" id="email"
								name="email" placeholder="이메일" />		
						</div>
						<div class="input-container">
							<input type="password" class="form-control input-info"
								id="password" name="password" placeholder="패스워드" />
						</div>
						<div class="forgot-pw">
							<input type="checkbox" />&nbsp;자동 로그인 <span> <a href="Pw_change.jsp"
								style="text-decoration: none">비밀번호 찾기</a>
							</span>
						</div>
						<div class="input-container">
							<input type="submit" class="btn btn-primary loginbtn"
								data-dismiss="modal" value="이메일 로그인" />
						</div>
					</form>
					<span class="adduser">아직 세모의 회원이 아니신가요?<a
						href="Joinus_select.jsp">회원가입</a></span>
				</div>
			</div>
		</div>
	</div>



	<!-- 컨텐츠 -->
	<div class="content">
		<div class="container content-container">
			<div class="content-top">
				<h2>비밀번호 재설정</h2>
				<p>회원가입시 등록하신 이메일 주소를 입력해주세요. 비밀번호 재설정 메일을 보내드립니다.</p>
			</div>
			<form action="#" method="post">
			<div class="content-body">
				<div class="pwch-title">
					<span>비밀번호 재설정</span>
				</div>
					<table class="table">
						<tr>
							<th class="th">
								이메일
							</th>
							<td class="td">
								<input type="text" class="form-control email1" name="email"/>
								<span class="alertEmail1"></span>
							</td>
						</tr>
						<tr>
							<th class="th">
								<span>이메일 확인</span>
							</th>
							<td class="td">
								<input type="text" class="form-control email2" name="email2"/>
								<span class="alertEmail2"></span>
							</td>
						</tr>
					</table>
				</div>
			<input type="submit" class="btn btn-primary pwchEmail" id="pwchEmail" value="비밀번호 재설정" />
			</form>
		</div>
	</div>


	<!-- 컨텐츠  END -->
	<!-- Footer -->
	<div class="footer"></div>
	<!-- Footer END -->

	<!--------------------------- 복사하여 사용 하세요  END---------------------------->


	<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
	<script>
	$(function(){
	
/*유효성검사*/
		var email1 = $('.email1');
		var email2 = $('.email2');
		var alertEmail1 = $('.alertEmail1');
		var alertEmail2 = $('.alertEmail2');
		
		email1.focusout(function(){
			
			var email = email1.val();
			var exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
			if(exptext.test(email)==false){			
				alertEmail1.html('이메일 형식을 확인해 주세요.').css("color","red");
				return false;
			} 
			
		});
		
		email1.focus(function(){
			alertEmail1.empty();
		});
		
		email2.focusout(function(){
			if (email1.val()!=email2.val()){
				alertEmail2.html('이메일이 다릅니다.').css("color","red");
				return false;
			} else {
				alertEmail2.empty();
			}
		});
		email2.focus(function(){
			alertEmail2.empty();
		});
	});
	
	</script>

</body>
</html>