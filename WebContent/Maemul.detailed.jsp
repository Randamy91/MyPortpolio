<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>세모- 상가 중개사이트</title>
<link rel="stylesheet" href="./bootstrap/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="./css/Maemul.detailed.css">

<style type="text/css">
	
html, body {
	margin: 0;
	padding: 0;
	width: 100%;
	
}


.logo {
	margin-left: 30px;
}

.menu_navbar {
	width: 100%;
	padding-right: 40px;
	margin-bottom: 0;
	line-height:45px;
}

.navbar-text {
	font-size: 20px;
	font-weight: bold;
}

.navbar-right {
	font-size: 15px;
}

.content {
	height: 100%;
	width: 100%;
	background: #eee;
}

.footer {
	width: 100%;
	height: 320px;
	background: #333;
}

.modal-dialog.mymodal-size {
	width: 400px;
	height: 360px;
}

.mymodal-content {
	width: 100%;
	height: 100%;
}

.loginmodal-title {
	text-align: center;
	margin-top: 20px;
}

.modal form {
	margin-top: 20px;
}

.modal .input-container {
	margin-bottom: 10px;
	text-align: center;
}

.modal .input-info {
	width: 270px;
	display: inline-block;
}

.modal .forgot-pw input {
	margin-left: 50px;
}

.modal .forgot-pw span {
	margin-left: 90px;
}
.loginbtn {
	margin-top: 30px;
	display: inline-block;
	width: 270px;
}

/*------------- 복사해서 사용하세요 END --------------------*/
</style>


</head>
<body>
<!--------------------------- 복사하여 사용 하세요 ---------------------------->
<!-- 상단 메뉴 바 -->
<nav class="navbar menu_navbar bg-white">
	<!--<div class="navbar-header menu_header">-->
	<a class="navbar-brand logo" href="Main.jsp" >
	<img alt="Brand" src="img/main_logo.jpg" width="65px" height="40px">
	</a>
	<p class="navbar-text navbar-left"><a href="Main.jsp" class="navbar-link" style="text-decoration:none">상가</a></p>
	<p class="navbar-text navbar-left"><a href="Bigdata.html" class="navbar-link" style="text-decoration:none">상권분석</a></p>
	<p class="navbar-text navbar-right"><a href="Joinus_select" class="navbar-link" style="text-decoration:none">회원가입</a></p>
	<p class="navbar-text navbar-right"><a href="#myModal" data-toggle="modal" class="navbar-link" style="text-decoration:none">로그인</a></p>
</nav>

<!-- 상단 메뉴 바  -->


<!--  로그인 Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog mymodal-size">
    <div class="modal-content mymodal-content">
      <div class="modal-body">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h2 class="modal-title loginmodal-title" id="myModalLabel">로그인</h2>
        <form action="#" method="post">
        	<div class="input-container">
		        <input type="text" class="form-control input-info" id="email" name="email" placeholder="이메일"/>
		    </div>
		    <div class="input-container">
		        <input type="password" class="form-control input-info" id="password" name="password" placeholder="패스워드"/>
		    </div>
		    <div class="forgot-pw">
		    	<input type="checkbox"/>&nbsp;자동 로그인
		    	<span>
		    		<a href="#" style="text-decoration:none">비밀번호 찾기</a>
		    	</span>
		    </div>
		    <div class="input-container">
		    	<input type="submit" class="btn btn-primary loginbtn" data-dismiss="modal" value="이메일 로그인"/>
		    </div>
        </form>
      </div>  
    </div>
  </div>
</div>



<!-- 컨텐츠 -->
<div class="content">
	<div class="container">
		<div class="row">
			<!-- 본문 영역 -->
			<div class="col-xs-8">				
				<!-- 캐러셀 영역 구성 -->
			<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
				<!-- 현재 위치 표시 -->
				<ol class="carousel-indicators">
					<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
					<li data-target="#carousel-example-generic" data-slide-to="1"></li>
					<li data-target="#carousel-example-generic" data-slide-to="2"></li>
				</ol>

				<!-- 내용 영역 -->
				<div class="carousel-inner center-block">
					<!-- 항목 (1) -->
					<div class="item active">
						<img src="./img/office.jpg" alt="슬라이더(1)">
					</div>

					<!-- 항목 (2) -->
					<div class="item">
						<img src="./img/office2.jpg" alt="슬라이더(2)">
					</div>

					<!-- 항목 (3) -->
					<div class="item">
						<img src="./img/office3.jpg" alt="슬라이더(3)">
					</div>
				</div>
				<!-- // 내용영역 구성 -->

				<!-- 이동 버튼 -->
				<a class="left carousel-control" href="#carousel-example-generic" data-slide="prev"> <span class="icon-prev"></span> </a>
				<a class="right carousel-control" href="#carousel-example-generic" data-slide="next"> <span class="icon-next"></span> </a>
			</div>
			<!-- 캐러셀 영역 끝 -->

			<div class="panel panel-default">
				<div class="container" style="width: 100%">
					<div class="info B_info">
						<div class="title">
							매물정보
						</div>
						
						<div class="row">
							<div class="col-sm-12 col-md-6">
								<div class="text">
									<span class="name">매물번호</span>
									<span class="value">123123</span>
								</div>
								
							</div>
							<div class="col-sm-12 col-md-6">
								<div class="text">
									<span class="name">난방종류</span>
									<span class="value">개별난방</span>
								</div>
							</div>
							<div class="col-sm-12 col-md-6">
								<div class="text">
									<span class="name">상가 형태</span>
									<span class="value">빌딩형,근린상가</span>
								</div>
							</div>
							<div class="col-sm-12 col-md-6">
								<div class="text">
									<span class="name">엘레베이터</span>
									<span class="value">있음/2대</span>
								</div>
							</div>
							<div class="col-sm-12 col-md-6">
								<div class="text">
									<span class="name" style="width: 400px;">매매</span>
									<span class="value">없음</span>
								</div>
							</div>
							<div class="col-sm-12 col-md-6">
								<div class="text">
									<span class="name">기보증금/기월세</span>
									<span class="value">0/0</span>
								</div>
							</div>
							<div class="col-sm-12 col-md-6">
								<div class="text">
									<span class="name">권리금</span>
									<span class="value">95만원</span>
								</div>
							</div>
							<div class="col-sm-12 col-md-6">
								<div class="text">
									<span class="name">화장실</span>
									<span class="value">외부/남녀구분</span>
								</div>
							</div>
							<div class="col-sm-12 col-md-6">
								<div class="text">
									<span class="name">해당층/건물층</span>
									<span class="value">6층/7층</span>
								</div>
							</div>
							<div class="col-sm-12 col-md-6">
								<div class="text">
									<span class="name">인테리어(시설)</span>
									<span class="value">없음</span>
								</div>
							</div>
							<div class="col-sm-12 col-md-6">
								<div class="text">
									<span class="name">계약면적/전용면적</span>
									<span class="value">910.4</span>
								</div>
							</div>
							<div class="col-sm-12 col-md-6">
								<div class="text">
									<span class="name">입주가능일</span>
									<span class="value">협의가능</span>
								</div>
							</div>
							<div class="col-sm-12 col-md-6">
								<div class="text">
									<span class="name">추천업종</span>
									<span class="value">종교</span>
								</div>
							</div>
							<div class="col-sm-12 col-md-6">
								<div class="text">
									<span class="name">준공년도</span>
									<span class="value">2018년</span>
								</div>
							</div>
						</div> <!-- row end -->
						<div class="row last-row">
							<div class="col-md-12">
								<div class="Text">
									<span class="name">옵션</span>
									<span class="value">#24시간개방</span>
								</div>
							</div>
						</div>
					</div> <!-- B_info end -->
					<!-- DB_info -->
					<div class="info BD_info">
						<div class="title">매물 상세 설명</div>
						<div class="row">
							<div class="col-md-12 index">
								<div class="Value">
									<span class="value_detail" style="line-height: 180%;">매물상세 설명란 입니다.
										<br>주차가능합니다
									전용 110평 정도 됩니다
									<br>
								 	●한일노벨리아부동산 ●
								  	 답십리역 3번 출구 바로 앞에 있습니다
								  	 <br>
								  	  사무실,상가,공장,창고등 물권을 다량 보유하고 있습니다
								  	<br>
								  	  사무실,상가,공장,창고등 물권을 다량 보유하고 있습니다
								  	<br>
								  	  사무실,상가,공장,창고등 물권을 다량 보유하고 있습니다</span>
								</div>
							</div>
						</div>
					</div> <!-- BD_info end -->
					<div class="info BD_image_info">
						<div class="title">건물 정보</div>

						<div class="row">
							<div class="col-md-6 col-sm-12">
								<div class="image well"></div>
							</div>
							<div class="col-md-6 col-sm-12" style="padding-left: 10px;">
								<div class="Name" style="margin-bottom: 28px;">금산빌딩</div>
								<div class="address">서울특별시 영등포구 여의도동</div>
								<div class="floor">총 11층</div>
								<div class="build">1986년</div>
							</div>
						</div>
					</div> <!-- DB_image_info end-->
					<div class="info BD_fee">
						<div class="title">중개보수</div>
						<table class="table">
							<tbody>
								<tr>
									<th class="active" rowspan="2"><span>중개보수</span></th>
									<span class="value">
										<td style="padding-top: 14px;">최대 1260만원</td>
									</span>
								</tr>
								<tr>
									<span class="value">
										<td style="padding-top: 14px;">상한요율</td>
									</span>
								</tr>
							</tbody>
						</table>
						<div class="subtext">
							<span class="fas fa-exclamation-circle"></span>
							<span class="comment">중개수수료는 실제 적용되는 금액과 다를 
							수 있으니, 계약 전 확인이 필요합니다.</span>
						</div>
					</div>
				</div>
			</div>
			</div> <!-- 본문 영역 end -->


			<!-- 사이드 바 영역 -->
			<div class="col-xs-4" style="height: 400px;">
				<div class="affix" data-spy="affix" data-offset-top="0" data-offset-bottom="339">
					<div class="main_side panel panel-default" style="margin: 0 0;">
						<div class="container inside_side">
							<div class="M_Number">
								<span class="M_Number_item1">매물번호</span>
								<span class="M_Number-item2">340034</span>
							</div>
							<div class="well" id="well_side">
								<div class="M_price">
									<span class="price-kind">월세</span>
									<span class="price">1000/40</span>
									<span class="price-level">만원</span>
								</div>							
							</div> <!-- jumbo end -->
							<div class="M_location">
								<div class="location_grid">
									<span class="M_location_item">부천시 원미구 역곡동</span>
								</div>
								<div class="location_grid2">
									<span class="M_location_item2">자연광이 환상적인 동네</span>
								</div>
							</div>
							<div class="M_icon" id="icon_box" style="margin-top: 12px;">
								<ul class="list-inline">
									<li class="M_icon_item1"><span class="fas fa-building"></span></li>
									<li class="M_icon_item2"><span class="fas fa-arrows-alt"></span></li>
									<li class="M_icon_item3"><span class="fas fa-arrows-alt-v"></span></li>
									<li class="M_icon_item4"><span class="fas fa-shield-alt"></span></li>
								</ul>
							</div>
							<div class="office">
								<div class="office_name">
									<span class="office_name_item"><strong>대성부동산중개사무소</strong></span>
								</div>
								<div class="office_info">
									<div class="profile-default">
										<span><i class="fas fa-user"></i></span>
									</div>
									<div class="office_info_item">
										<div class="office_info_name">
											<span class="office_info_name_item">장상윤 대표</span>
										</div>
										<div class="office_info_address">
											<span class="office_info_address_item">부천시 원미구 역곡동</span>
										</div>
									</div>
									<div class="office_info_detail">
										<span>
										<button type="button" class="form-control btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal2" id="button">연락처 보기</button>
										</span>
									</div>
								</div>
							</div> <!-- office end -->
						</div> <!-- container end -->
					</div>
				</div>
			</div> <!-- 사이드 바 영역 END -->
			<!-- Modal -->
			<div id="myModal2" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-md">
					<div class="modal-content">
						<div class="modal-header" style="border-style: none;">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true" style="position: relative;  bottom: 10px; display: inline-block; font-size: 50px;">
								&times;
							</button>
						</div>
						<div class="modal-body" style="text-align: center;">
							
							<div class="modal_profile_default">
								<span><i class="fas fa-user"></i></span>
							</div>	
							<div class="I_Number">담당자 연락처</div>
							<div class="I_Title"><STRONG>
								<span class="I_Name">박하린</span>
								<span class="I_Position">대표</span>
								(<span class="I_Tname">대표공인중개사</span>)
							</STRONG></div>
							<div class="modal_M_Number">
								<div class="alert alert-info" role="alert">
  									<span class="M_Number_title">매물번호</span>
  									<span class="M_Number_value">12313</span>
								</div>
							</div>
							<hr />
							<div class="Explain">
								"세모 보고 연락드렸습니다."라고 말씀하신 후<br>
								매물번호를 알려주시면 친절하게 안내받으실 수 있습니다. 
							</div>
						</div> <!-- modal-body end -->
						<div class="modal-footer bg-info">
							<div class="Modal_office_Name">
								<span class="Modal_office_name_item">대성부동산중개사무소</span>
								(<span class="Modal_office_position">대표 <span class="Modal_office_Tname"></span>박하린</span>)
							</div>
							<div class="Modal_office_address">
								<span class="adrress_item">
									경기도 부천시 역곡동 삼원연립 108호
								</span>
							</div>
							<div class="Modal_I_Phone">
								대표번호:<span class="Modal_I_Phone_item">032-413-1234</span>
							</div>
						</div> 
					</div>
				</div> <!-- moda-dialog end -->
			</div> <!-- modal end -->
		</div>
	</div>
	<!-- Footer -->
	<div class="footer">

	</div>
	<!-- Footer END -->	
</div>
<!-- 컨텐츠  END -->

<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="./bootstrap/js/bootstrap.min.js"></script>
<script defer src="https://use.fontawesome.com/releases/v5.0.8/js/solid.js" integrity="sha384-+Ga2s7YBbhOD6nie0DzrZpJes+b2K1xkpKxTFFcx59QmVPaSA8c7pycsNaFwUK6l" crossorigin="anonymous"></script>
<script defer src="https://use.fontawesome.com/releases/v5.0.8/js/fontawesome.js" integrity="sha384-7ox8Q2yzO/uWircfojVuCQOZl+ZZBg2D2J5nkpLqzH1HY0C1dHlTKIbpRz/LG23c" crossorigin="anonymous"></script>
<script type="text/javascript">
	


</script>
</body>
</html>