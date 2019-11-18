<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<title>세모 - 상가 매물 중개 사이트</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/Maemul.interest.css" />

</head>
<body>
	<!--------------------------- 복사하여 사용 하세요 ---------------------------->
	<!-- 상단 메뉴 바 -->
	<%@ include file="assets/include/loginHeader.jsp" %>
	<!--  로그인 Modal -->
	<%@ include file="assets/include/loginmodal.jsp" %>	
	<!-- 컨텐츠 -->
	<div class="content">
		<div class="container content-container">
			<div class="content-top">
				<h2>관심매물</h2>
				<p>관심매물은 30개까지 저장됩니다.</p>
			</div>
			<div class="content-body">
				<ul class="nav nav-tabs nav-justified" role="tablist">
					<li role="presentation" class="active"><a href="#interItem"
						role="tab" data-toggle="tab" aria-contols="interItem">최근 본 매물</a></li>
					<li role="presentation"><a href="#heartItem" role="tab"
						data-toggle="tab" aria-contols="heartItem">찜한 매물</a></li>
				</ul>

				<div class="tab-content">
					<div role="tabpanel" class="tab-pane fade active in" id="interItem">
						<div class="sub">
							<span>최근 본 매물</span><span class="maemulcount" style="color: red;"></span><span>개</span>
							<button type="button" class="btn btn-default delAll">전체 삭제</button>
						</div>
						<%@ include file="assets/include/dummyCard.jsp"%>
						<%@ include file="assets/include/dummyCard.jsp"%>
						<%@ include file="assets/include/dummyCard.jsp"%>
						<%@ include file="assets/include/dummyCard.jsp"%>
						<%@ include file="assets/include/dummyCard.jsp"%>
						<%@ include file="assets/include/dummyCard.jsp"%>
						<%@ include file="assets/include/dummyCard.jsp"%>
					</div>
					<div role="tabpanel" class="tab-pane fade" id="heartItem">
						<div class="sub">
							<span>찜한 매물</span><span class="heartcount" style="color: red;"></span><span>개</span>
							<button type="button" class="btn btn-default delAll">전체 삭제</button>
						</div>
						<%@ include file="assets/include/dummyCard.jsp"%>
						<%@ include file="assets/include/dummyCard.jsp"%>
						<%@ include file="assets/include/dummyCard.jsp"%>
						<%@ include file="assets/include/dummyCard.jsp"%>
						<%@ include file="assets/include/dummyCard.jsp"%>
						<%@ include file="assets/include/dummyCard.jsp"%>
						
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 컨텐츠  END -->

	<!-- Footer -->
	<%@ include file="assets/include/footer.jsp"%>
	<!-- Footer END -->

	<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>
	<script type="text/javascript">
		$(function() {
			var maemulCount = $('#interItem .article-card').length;
			$(".maemulcount").html(maemulCount);
			
			var heartCount = $('#heartItem .article-card').length;
			$(".heartcount").html(heartCount);
		});

		var interDelAll = $('#interItem .delAll');
		interDelAll.on('click', function() {
			$("#interItem .article-card").remove();
			var maemulCount = $('#interItem .article-card').length;
			$(".maemulcount").html(maemulCount);
		});
		var heartDelAll = $('#heartItem .delAll');
		heartDelAll.on('click', function() {
			$("#heartItem .article-card").remove();
			var heartCount = $('#heartItem .article-card').length;
			$(".heartcount").html(heartCount);
		});
	</script>
</body>
</html>