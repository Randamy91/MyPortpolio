<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<title>세모 - 상가 매물 중개 사이트</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/Admin.css" />

</head>
<body>
	<!-- 상단 메뉴 바 -->
	<%@ include file="assets/include/loginHeader.jsp"%>
	<!--  로그인 Modal -->
	<%@ include file="assets/include/loginmodal.jsp"%>
	<!-- 컨텐츠 -->
	<div class="content">
		<div class="container content-container">
			<div class="content-top">
				<h2>관리자 페이지</h2>
				<p>관리자 페이지 입니다.</p>
			</div>
			<div class="content-body">
				<ul class="nav nav-tabs nav-justified" role="tablist">
					<li role="presentation" class="active"><a href="#first"
						role="tab" data-toggle="tab" aria-controls="general">일반 회원 정보</a></li>
					<li role="presentation"><a href="#second" role="tab"
						id="co_member" data-toggle="tab" aria-controls="company">중개사
							회원 정보</a></li>
				</ul>
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane fade active in" id="first">
						<table class="table" id="table1">
							<thead>
								<tr>
									<th>번호</th>
									<th>이름</th>
									<th>연락처</th>
									<th>이메일</th>
									<th>가입일</th>
									<th>최근로그인</th>
								</tr>
							</thead>
							<tbody>
								<c:choose>
									<c:when test="${userinfo == null || fn:length(userinfo) == 0}">
										<tr>
											<td colspan="9" align="center">조회결과가 없습니다.</td>
										</tr>
									</c:when>
									<c:otherwise>
										<c:forEach var="item" items="${userinfo}" varStatus="status">
											<c:set var="name" value="${item.name }" />

											<c:if test="${keyword != '' }" />
											<tr>
												<td align="center">${item.id }</td>
												<td align="center">${item.name}</td>
												<td align="center">${item.tel_num}</td>
												<td align="center">${item.email_id}</td>
												<td align="center">${item.reg_date}</td>
												<td align="center">${item.recent_date}</td>
											</tr>
										</c:forEach>
									</c:otherwise>
								</c:choose>
							</tbody>
						</table>

						<div class="input-group searchBox">
							<form method="get"
								action="${pageContext.request.contextPath}/Admin.do">
								<div class="input-group">
									<input type="search" class="form-control search"
										placeholder="검색 키워드를 입력하세요!" name="keyword" id="keyword"
										value="${keyword}" /> <span class="input-group-btn">
										<button class="btn btn-primary" type="submit">찾기</button>
									</span>
								</div>
							</form>
						</div>
						<!-- 페이지 네이션 구현 -->
						<div class="paginavi">
							<nav>
								<ul class="pagination adminPagi">
									<!-- 이전 그룹 링크 -->
									<c:choose>
										<c:when test="${pageData.prevPage > 0 }">
											<c:url value="/Admin.do" var="prevPageUrl">
												<c:param name="page" value="${pageData.prevPage }" />
												<c:param name="keyword" value="${keyword }" />
											</c:url>
										</c:when>
									</c:choose>
									<li><a href="${prevPageUrl}" aria-label="Previous"><span
											aria-hidden="true">&laquo;</span> </a></li>
									<!-- 페이지번호 -->
									<c:forEach var="i" begin="${pageData.startPage }"
										end="${pageData.endPage }" varStatus="status">
										<c:url value="/Admin.do" var="pageUrl">
											<c:param name="page" value="${i}" />
											<c:param name="keyword" value="${keyword }" />
										</c:url>
										<c:choose>
											<c:when test="${pageData.nowPage == i }">
												<li class="active"><a href="${pageUrl}">${i}</a></li>
											</c:when>
											<c:otherwise>
												<li><a href="${pageUrl}">${i}</a></li>
											</c:otherwise>
										</c:choose>
									</c:forEach>
									<!-- 다음 그룹 링크 -->
									<c:choose>
										<c:when test="${pageData.nextPage > 0 }">
											<c:url value="/Admin.do" var="nextPageUrl">
												<c:param name="page" value="${pageData.nextPage }" />
												<c:param name="keyword" value="${keyword }" />
											</c:url>
										</c:when>
									</c:choose>
									<li><a href="${nextPageUrl}" aria-label="Next"><span
											aria-hidden="true">&raquo;</span> </a></li>
								</ul>
							</nav>
						</div>
						<!-- -----중개사 회원------- -->
					</div>
					<div role="tabpanel" class="tab-pane fade" id="second">
						<%-- <table class="table" id="table2">
						<tr>
							<th>번호</th>
							<th>중개사무소명</th>
							<th>대표자</th>
							<th>연락처</th>
							<th>가입일</th>
							<th>최근로그인</th>
							<th>승인 요청</th>
						</tr>
						<tbody id="Admin">
							<tr>
								<td align="center">{{id}}</td>
								<td align="center">
									<a href="${pageContext.request.contextPath}/Admin_infochange.do?id={{id}}">{{co_name}}</a>
								</td>
								<td align="center">{{boss_name}}</td>
								<td align="center">{{tel_num}}</td>
								<td align="center">{{reg_date}}</td>
								<td align="center">{{recent_date}}</td>			
								<td align="center">{{approval}}</td>
							</tr>
						</tbody>
					</table>
						<div class="input-group searchBox">
							<form onsubmit="return false">
								<div class="input-group">
								  <input onkeypress="if( event.keyCode == 13 ){searchData();}" type="search" class="form-control search2" placeholder="검색 키워드를 입력하세요!" name="co_keyword" id="co_keyword" value="${co_keyword }"/>
								  <span class="input-group-btn">
								    <button class="btn btn-primary" id="cofindBtn" type="button">찾기</button>
								  </span>
								</div>
							</form>
						</div>
						<!-- 페이지 구현 -->
						<div class="paginavi" id="pagenavi">
							<nav>
				               <ul class="pagination adminPagi">
				                  <li class="disabled"><a href="#" aria-label="Previous"><span
				                        aria-hidden="true">&laquo;</span>
				                  </a></li>
				                  <li class="active"><a href="#">1</a></li>
				                  <li><a href="#" aria-label="Next"> <span
				                        aria-hidden="true">&raquo;</span>
				                  </a></li>
				               </ul>
							</nav>
						</div> --%>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 컨텐츠  END -->
	<!-- Footer -->
	<div class="footer"></div>
	<!-- Footer END -->

	<!--------------------------- 복사하여 사용 하세요  END---------------------------->


	<!-- Google CDN 서버로부터 jquery 참조 -->
	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/jquery.form/4.2.2/jquery.form.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/plugins/ajax/ajax_helper.js"></script>
	<!-- 핸들바 템플릿 코드 -->
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.4.2/handlebars.min.js"></script>
	<!-- jquery ajax setup -->

	<script id="admin-list-tmpl" type="text/x-handlebars-template">
						<table class="table" id="table2">
						<tr>
							<th>번호</th>
							<th>중개사무소명</th>
							<th>대표자</th>
							<th>연락처</th>
							<th>가입일</th>
							<th>최근로그인</th>
							<th>승인 요청</th>
						</tr>
						<tbody id="Admin">
							{{#output}}
							<tr>
								<td align="center">{{id}}</td>
								<td align="center">
									<a href="${pageContext.request.contextPath}/Admin_infochange.do?id={{id}}">{{co_name}}</a>
								</td>
								<td align="center">{{boss_name}}</td>
								<td align="center">{{tel_num}}</td>
								<td align="center">{{reg_date}}</td>
								<td align="center">{{recent_date}}</td>			
								<td align="center">{{approval}}</td>
							</tr>
							{{/output}}
						</tbody>
					</table>
						<div class="input-group searchBox">
							<form onsubmit="return false">
								<div class="input-group">
								  <input onkeypress="if( event.keyCode == 13 ){searchData();}" type="search" class="form-control search2" placeholder="검색 키워드를 입력하세요!" name="co_keyword" id="co_keyword" value="${co_keyword }"/>
								  <span class="input-group-btn">
								    <button class="btn btn-primary" id="cofindBtn" type="button">찾기</button>
								  </span>
								</div>
							</form>
						</div>
						<!-- 페이지 구현 -->
						<div class="paginavi" id="pagenavi">
							<nav>
				               <ul class="pagination adminPagi">
				                  <li><a href="#" aria-label="Previous"><span
				                        aria-hidden="true">&laquo;</span>
				                  </a></li>
				                  <li class="active"><a href="#">1</a></li>
				                  <li><a href="#" aria-label="Next"> <span
				                        aria-hidden="true">&raquo;</span>
				                  </a></li>
				               </ul>
							</nav>
						</div>
	</script>
	<script id="admin-list-tmpl1" type="text/x-handlebars-template">
		{{#co_userinfo}}
			<tr>
				<td align="center">{{id}}</td>
				<td align="center">
					<a href="${pageContext.request.contextPath}/Admin_infochange.do?id={{id}}">{{co_name}}</a>
				</td>
				<td align="center">{{boss_name}}</td>
				<td align="center">{{tel_num}}</td>
				<td align="center">{{reg_date}}</td>
				<td align="center">{{recent_date}}</td>			
				<td align="center">{{approval}}</td>
			</tr>
		{{/co_userinfo}}
	</script>
	<script>
		$('#co_member').click(function() {
			$("#second").empty();
			$.ajax({
				type : "POST",
				url : "Co_admin",
				dataType : "json",
				success : function(data) {
					var source = $("#admin-list-tmpl").html();
					var template = Handlebars.compile(source);
					var result = template(data);
					$("#second").append(result);
					console.log(data);
				}
			});
		});

		// 검색 엔터 적용
		function searchData() {
			$("#Admin").empty();
			$.ajax({
				type : "POST",
				url : "co_search",
				dataType : "json",
				data : {
					"co_keyword" : $("#co_keyword").val()
				},
				success : function(data) {
					var source = $("#admin-list-tmpl1").html();
					var template = Handlebars.compile(source);
					var result = template(data);
					$("#Admin").append(result);
					$("#co_keyword").val(data.co_keyword);
					console.log(data);
					console.log(data.co_userinfo);
				}
			});
		}

		// 검색 데이터 전송
		$('#cofindBtn').click(function() {
			$("#Admin").empty();
			$.ajax({
				type : "POST",
				url : "co_search",
				dataType : "json",
				data : {
					"co_keyword" : $("#co_keyword").val()
				},
				success : function(data) {
					var source = $("#admin-list-tmpl1").html();
					var template = Handlebars.compile(source);
					var result = template(data);
					$("#Admin").append(result);
					$("#co_keyword").val(data.co_keyword);
					console.log(data);
					console.log(data.co_userinfo);
				}
			});
		});
	</script>
</body>
</html>