<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<nav class="navbar menu_navbar bg-white">
	<!--<div class="navbar-header menu_header">-->
	<a class="navbar-brand logo" href="index.jsp"> <img alt="Brand"
		src="${pageContext.request.contextPath}/img/main_logo.jpg" width="65px" height="40px">
	</a>
	<p class="navbar-text navbar-left">
		<a href="index.jsp" class="navbar-link" style="text-decoration: none">상가</a>
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