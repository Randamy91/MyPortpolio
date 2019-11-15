<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<nav class="navbar menu_navbar bg-white">
	<!--<div class="navbar-header menu_header">-->
	<a class="navbar-brand logo" href="index.do"> <img alt="Brand"
		src="${pageContext.request.contextPath}/assets/img/main_logo.jpg" width="65px" height="40px">
	</a>
	<p class="navbar-text navbar-left">
		<a href="index.do" class="navbar-link" style="text-decoration: none">상가</a>
	</p>
	<p class="navbar-text navbar-left">
		<a href="Bigdata.do" class="navbar-link"
			style="text-decoration: none">상권분석</a>
	</p>
	<p class="navbar-text navbar-right">
		<a href="Joinus_select.do" class="navbar-link"
			style="text-decoration: none">회원가입</a>
	</p>
	<p class="navbar-text navbar-right">
		<a href="#myModal" data-toggle="modal" class="navbar-link"
			style="text-decoration: none">로그인</a>
	</p>
</nav>