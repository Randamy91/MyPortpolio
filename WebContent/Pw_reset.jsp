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
<link rel="stylesheet" type="text/css" href="css/Pw_reset.css" />

<title>세모- 상가 중개사이트</title>
</head>
<body>
	<!-- 상단 메뉴 바 -->
	<%@ include file="include/header.jsp" %>
	<!--  로그인 Modal -->
	<%@ include file="include/loginmodal.jsp" %>

	<!-- 컨텐츠 -->
	<div class="content">
		<div class="container content-container">
			<div class="content-top">
				<h2>비밀번호 초기화</h2>
				<p>새로운 비밀번호로 초기화 하세요.</p>
			</div>
			<form action="Pw_resetok.jsp" method="post">
			<div class="content-body">
				<div class="pwch-title">
					<span class="title">비밀번호 초기화</span><br>
					<span class="subtitle">회원가입시 입력한 이메일 주소와 새 비밀번호를 입력하세요.</span>
				</div>
					
					<table class="table">
						<tr>
							<th class="th">
								이메일
							</th>
							<td class="td">
								<input type="text" class="form-control email" name="email" required/>
								<span class="alertEmail"></span>
							</td>
						</tr>
						<tr>
							<th class="th">
								비밀번호
							</th>
							<td class="td">
								<input type="password" class="form-control passwd" name="passwd" required/>
							</td>
						</tr>
						<tr>
							<th class="th">
								비밀번호 확인
							</th>
							<td class="td">
								<input type="password" class="form-control repasswd" name="repasswd" required/>
								<span class="alertrePasswd"></span>
							</td>
						</tr>
					</table>
				
				</div>
			<input type="submit" class="btn btn-primary pwchEmail" id="pwchEmail" value="비밀번호 초기화" />
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
			
			var email1 = $('.email');
			var passwd = $('.passwd');
			var repasswd = $('.repasswd');
			
			var alertEmail = $('.alertEmail');			
			var alertrepasswd = $('.alertrePasswd');
			
			//이메일 형식 유효성 검사
			email1.focusout(function(){
				
				var email = email1.val();
				var exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
				if(exptext.test(email)==false){			
					alertEmail.html('이메일 형식을 확인해 주세요.').css("color","red");
					return false;
				} 
				
			});
			
			email1.focus(function(){
				alertEmail.empty();
			});
			
			repasswd.focusout(function(){
				if (passwd.val()!=repasswd.val()){
					alertrepasswd.html('비밀번호가 다릅니다.').css("color","red");
					return false;
				}
				
			});
			repasswd.focus(function(){
				alertrepasswd.empty();
			});
		});
	
	</script>

</body>
</html>