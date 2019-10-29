<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

<link rel="stylesheet" href="bootstrap/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="css/Main.css" />
<link rel="stylesheet" href="plugins/icheck/css/blue.css" />
<link rel="stylesheet" href="plugins/nouislider/nouislider.css" />

</head>
<body>
	<div class="content">
		<!--------------------------- 복사하여 사용 하세요 ---------------------------->
		<!-- 상단 메뉴 바 -->
		<nav class="navbar menu_navbar bg-white">
			<!--<div class="navbar-header menu_header">-->
			<a class="navbar-brand logo" href="Main.jsp"> <img alt="Brand"
				src="img/main_logo.jpg" width="65px" height="40px">
			</a>
			<p class="navbar-text navbar-left">
				<a href="Main.jsp" class="navbar-link"
					style="text-decoration: none">상가</a>
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
								<input type="checkbox" />&nbsp;자동 로그인 <span> <a
									href="Pw_change.jsp" style="text-decoration: none">비밀번호 찾기</a>
								</span>
							</div>
							<div class="input-container">
								<input type="submit" class="btn btn-primary loginbtn"
									data-dismiss="modal" value="이메일 로그인" />
							</div>
						</form>
						<span class="adduser">아직 세모의 회원이 아니신가요? <a
							href="Joinus_select.jsp">회원가입</a>
						</span>
					</div>
				</div>
			</div>
		</div>



		<!-- 컨텐츠 -->

		<div class="select-menu">
			<!------------------------- 거래 유형 드롭다운 -------------------------------->
			<div class="dropdown trade">
				<button class="btn btn-default dropdown-toggle" type="button"
					id="dropdownMenu2" data-toggle="dropdown" aria-expanded="true">
					거래유형<span class="caret"></span>
				</button>
				<div class="dropdown-menu" aria-labelledby="dropdownMenu2">
					<h5>
						<b>거래유형</b>
					</h5>
					<input type='radio' id="selectAll" class='ichecked' name="salestype" checked>
					&nbsp; 전체 <br> <input type='radio' class='ichecked'
						name="salestype"> &nbsp; 월세 <br> <input type='radio'
						class='ichecked' name="salestype"> &nbsp; 매매
				</div>
			</div>
			<!-------------------------------- 가격 드롭다운 -------------------------------->
			<div class="dropdown price">
				<button class="btn btn-default dropdown-toggle" type="button"
					id="dropdownMenu2 mydropdown" data-toggle="dropdown" aria-expanded="true">
					가격 <span class="caret"></span>
				</button>
				<div class="dropdown-menu pricemenu" aria-labelledby="dropdownMenu2">
					<h5>
						<b>보증금/매매가</b>
					</h5>
					<div id="salesrange" class="priceSales">
						<span class="startprice" id="startprice">0</span> <span
							class="centerprice">1억7,000만원</span> <span class="endprice"
							id="endpirce">무제한</span>
					</div>
					<hr>
					<h5>
						<b>월세</b>
					</h5>

					<div id="monthrange" class="mpriceSales">
						<span class="mstartprice" id="mstartprice">0</span> <span
							class="mcenterprice">500만원</span> <span class="mendpirce"
							id="mendpirce">무제한</span>
					</div>
				</div>

			</div>

			<!-------------------------------- 전용면적 드롭다운 -------------------------------->
			<div class="dropdown area">
				<button class="btn btn-default dropdown-toggle" type="button"
					id="dropdownMenu2" data-toggle="dropdown" aria-expanded="true">
					전용면적 <span class="caret"></span>
				</button>
				<div class="dropdown-menu areamenu" aria-labelledby="dropdownMenu2">
					<h5>
						<b>전용면적</b>
					</h5>
					<div id="arearange" class="dediArea">
						<span class="startarea" id="startarea">0</span> <span
							class="centerarea">264㎡ (80평)</span> <span class="endarea"
							id="endarea">무제한</span>
					</div>
				</div>
			</div>
			<!-- ------------------------------ 상세검색 드롭다운 ---------------------------- -->
			<div class="dropdown price">
				<button class="btn btn-default dropdown-toggle" type="button"
					id="dropdownMenu2" data-toggle="dropdown" aria-expanded="true">
					상세검색 <span class="caret"></span>
				</button>
				<div class="dropdown-menu" aria-labelledby="dropdownMenu2">
					<h5>
						<b>업데이트 예정</b>
					</h5>
				</div>
			</div>
		</div>
		<!-- -------------------------------- 카카오 맵 ---------------------------------- -->
		<div class="main-content">
			<div class="row main-content">
				<div id="map" class="col-md-9 map"></div>
		<!-- -------------------------------- 매물 리스트  ------------------------------------ -->
				<div class="col-md-3 list">
					<div class="listheader" style="border-bottom: 1px solid red;">매물
						리스트</div>
					<div class="listcount">
						<span>검색결과</span> <span class="maemulCount" style="color: red;"></span>
						<span>개</span>
					</div>
					<div class="maemulList"
						style="overflow-x: hidden; overflow-y: scroll">
						<!-- 더미 데이터  -->
						<div>
							<%@ include file="dummyMaemul.jsp" %>
							<%@ include file="dummyMaemul.jsp" %>
							<%@ include file="dummyMaemul.jsp" %>
							<%@ include file="dummyMaemul.jsp" %>
							<%@ include file="dummyMaemul.jsp" %>
							<%@ include file="dummyMaemul.jsp" %>
							<%@ include file="dummyMaemul.jsp" %>
							<%@ include file="dummyMaemul.jsp" %>
							<%@ include file="dummyMaemul.jsp" %>
						</div>
					</div>
					<!-- pagenation -->
					<div class="pageCount">
						<ul class="pagination page">
							<li class="page-item"><a class="page-link" href="#">Previous</a></li>
							<li class="page-item"><a class="page-link" href="#">1</a></li>
							<li class="page-item"><a class="page-link" href="#">Next</a></li>
						</ul>
					</div>

				</div>
			</div>
		</div>
	</div>
	<!-- 컨텐츠  END -->


	<!--------------------------- 복사하여 사용 하세요  END---------------------------->


	<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=98a9ba7245ae5c0929fafa188dbfaf9a&libraries=libraries=services,clusterer,drawing"></script>
	<script src="plugins/icheck/icheck.min.js"></script>
	<script src="plugins/nouislider/nouislider.min.js"></script>
	<script>
		//매물개수
		
		
		
		
		var maemulCount = $('.list-item').length;
		$(".maemulCount").html(maemulCount);

		//KAKAO api javascript 
		var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
		
		var options = { //지도를 생성할 때 필요한 기본 옵션
			center : new kakao.maps.LatLng(37.497972, 127.027720), //지도의 중심좌표.
			level : 5
		//지도의 레벨(확대, 축소 정도)
		};

		var map = new kakao.maps.Map(container, options);
		/**************** 마커 *************************/
		
		/**
		
			마커 클러스트러
		
		*/
		
		// 마커 클러스터러를 생성합니다 
	    var clusterer = new kakao.maps.MarkerClusterer({
	        map: map, // 마커들을 클러스터로 관리하고 표시할 지도 객체 
	        averageCenter: true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정
	        minLevel: 1 // 클러스터 할 최소 지도 레벨 
	    });
		
		
	    var control = new kakao.maps.ZoomControl();
	    map.addControl(control, kakao.maps.ControlPosition.TOPRIGHT);
	 // 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
	 var mapTypeControl = new kakao.maps.MapTypeControl();

	 // 지도에 컨트롤을 추가해야 지도위에 표시됩니다
	 // kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
	 map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);


		
		$.get("dummydata.json", function(data) {
        // 데이터에서 좌표 값을 가지고 마커를 표시합니다
        // 마커 클러스터러로 관리할 마커 객체는 생성할 때 지도 객체를 설정하지 않습니다
        var markers = $(data.positions).map(function(i, position) {
            return new kakao.maps.Marker({
                position : new kakao.maps.LatLng(position.lat, position.lng)
            });
        });
		
        // 클러스터러에 마커들을 추가합니다
        clusterer.addMarkers(markers);
    });
	
     
		//KAKAO API javaxcript END
	
		
		
	$(function(){
		//icheck plugin적용
		$(".ichecked").iCheck({
			checkboxClass : 'icheckbox_flat-blue',
			radioClass: 'iradio_flat-blue'
		});

		$('#selectAll').on('ifChecked', function(event) {
			console.log("checked");
		});

		$('.ichecked').on('ifUnchecked', function(event) {
			console.log("unchecked");
		});
	
	});
	
	/* 필터 -드롭다운 - 자동 toggle 해제 */
    
	$('.dropdown-menu').click(function(e) {
        e.stopPropagation();
    })
	
    //$(".dropdown-toggle").dropdown();
    
		
	/********************* 보증금 noUIslider **********************/
	var salesrange = document.getElementById('salesrange');
	noUiSlider.create(salesrange, {
	    start: [0, 200000],
	    connect: true,
	    range: {
	        'min': [100,100],
	        '10%':[500,500],
	        '20%':[5000,1000],
	        '50%':[20000,5000],
	        '80%':[100000,10000],
	        'max': [200000]
	    }
	});
	var nodes = [
	    document.getElementById('startprice'), // 0
	    document.getElementById('endpirce')  // 1
	];
	
	 

	// Display the slider value and how far the handle moved
	// from the left edge of the slider.
	salesrange.noUiSlider.on('update', function (values, handle, unencoded, isTap, positions) {
		var val = Math.floor(values[handle]);
		if (val <10000){
	    	nodes[handle].innerHTML = val + "만원";
		} else if (val >= 10000 || val < 199999 ) {
			nodes[handle].innerHTML = val/10000 + "억";
		} else if (val >= 199999) {
			nodes[handle].innerHTML = "무제한";
		}
	});
	
	/********************* 월세 noUIslider **********************/
	var monthrange = document.getElementById('monthrange');
	noUiSlider.create(monthrange, {
	    start: [0, 200000],
	    connect: true,
	    range: {
	        'min': [50,50],
	        '50%':[500,100],
	        '80%':[3000,1000],
	        'max': [10000]
	    }
	});
	var nodes1 = [
	    document.getElementById('mstartprice'), // 0
	    document.getElementById('mendpirce')  // 1
	];

	// Display the slider value and how far the handle moved
	// from the left edge of the slider.
	monthrange.noUiSlider.on('update', function (values, handle, unencoded, isTap, positions) {
		var val = Math.floor(values[handle]);
		if (val <10000){
	    	nodes1[handle].innerHTML = val + "만원";
		} else if (val == 10000) {
			nodes1[handle].innerHTML = "무제한";
		}
	});
	
	/*********************** 전용면적 noUIslider ************************/
	
	var arearange = document.getElementById('arearange');
	noUiSlider.create(arearange, {
	    start: [0, 200000],
	    connect: true,
	    range: {
	        'min': [0,10],
	        '60%':[100,50],
	        '90%':[300,100],
	        'max': [600]
	    }
	});
	var nodes2 = [
	    document.getElementById('startarea'), // 0
	    document.getElementById('endarea')  // 1
	];

	// Display the slider value and how far the handle moved
	// from the left edge of the slider.
	arearange.noUiSlider.on('update', function (values, handle, unencoded, isTap, positions) {
		var val = Math.floor(values[handle]);
		if (val <= 500){
			nodes2[handle].innerHTML = val*3.3 + "㎡" + "(" + val + "평)";
		} else {
			nodes2[handle].innerHTML = "무제한";
		}
	});
	</script>
</body>
</html>