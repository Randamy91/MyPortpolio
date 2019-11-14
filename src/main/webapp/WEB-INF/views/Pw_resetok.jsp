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
<link rel="stylesheet" type="text/css" href="css/Pw_resetok.css" />

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
				<h2>비밀번호 초기화 완료</h2>
				<p>비밀번호가 초기화 되었습니다.</p>
			</div>
			<div class="content-body">
				<span>비밀번호가 초기화 되었습니다.<br>
				이제 새로운 비밀번호로 로그인할 수 있습니다.</span>
			</div>
			<button class="btn btn-primary gologin">세모 로그인 하기</button>
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
			$('.gologin').click(function(){
				location.href = 'Login.jsp';
			});
		});
	
	</script>

</body>
</html>