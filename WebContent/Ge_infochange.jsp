<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>세모- 상가 중개사이트</title>

<link rel="stylesheet" href="./bootstrap/css/bootstrap.min.css" />

<link rel="stylesheet" type="text/css" href="./css/Ge_infochange.css">



</head>

<style type="text/css">
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

</style>
<body>


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
</div> <!-- 로그인 modal end -->

<!-- 컨텐츠 -->
<div class="content">
		<div class="body-content">
		<div class="main-space">
			<div class="container">
				<div class="page-title text-center">
					<h2 class="title">회원 정보 수정</h2>
					<p class="text-muted" style="font-size: 15px;">회원 정보와 비밀번호를 변경할 수 있습니다.</p>
				</div>
				<div class="main-content">
					<form id="changeform" name="changeform" class="form-inline" role="form" method="post" action="#">
						<div class="panel panel-default">
							<ul class="list-group">
								<li class="list-group-item first-list">
									<div class="first-title"><strong>개인정보 변경</strong></div>
									<table class="table table-1">
										<tbody>
											<tr>
												<th class="active"><span class="left-name">이름</span></th>
												
												<td>
													
													<input type="text" class="form-control"
													id="user_name"
													name="user_name"  placeholder="등록인이름공란" style="width: 350px; height: 50px;">
													
													
												</td>
												
											</tr>
											<tr>
												<th class="active"><span class="left-name">이메일</span></th>
												<td>
													<input type="text" class="form-control sg-form-control-md" style="width: 350px; height: 50px;" disabled>
												</td>
											</tr>
											<tr>
												<th class="active"><span class="left-name">휴대폰 번호</span></th>
												<td>
													<div class="PhoneNumber">
															<select class="form-control" id="phoneNumber1" name="phoneNumber1" style="width: 80px; height: 50px;">
																<option value="010">010</option>
																<option value="011">011</option>
																<option value="016">016</option>
																<option value="017">017</option>
																<option value="019">019</option>
															</select>
															-
															<input type="text" class="form-control" id="phoneNumber2" name="phoneNumber2" style="width: 80px; height: 50px;">
															-
															<input type="text" class="form-control" id="phoneNumber3" name="phoneNumber3" style="width: 80px; height: 50px;">
													</div>
												</td>
											</tr>
										</tbody>
									</table>
								</li>
								<li class="list-group-item second-list">
									<div class="second-title"><strong>비밀번호 변경</strong></div>
									<table class="table table-2">
										<tbody>
											<tr>
												<th class="active"><span class="left-name">현재 비밀번호</span></th>
												<td>
													<input type="text" class="form-control" id="Rpw" name="Rpw" style="width: 350px; height: 50px;">
												</td>
											</tr>
											<tr>
												<th class="active"><span class="left-name">새 비밀번호</span></th>
												<td>
													<input type="text" class="form-control" id="Npw" name="Npw" style="width: 350px; height: 50px;">
												</td>
											</tr>
											<tr>
												<th class="active"><span class="left-name">새 비밀번호 확인</span></th>
												<td>
													<input type="text" class="form-control" id="Npw-check" name="Npw-check" style="width: 350px; height: 50px;">
												</td>
											</tr>
										</tbody>
									</table>
								</li>
								<li class="list-group-item third-list">
									<div class="sign">

										<input type="checkbox" name="agree" id="check_box" value="check" />
										<label for="check_box" style="font-weight: normal;"><span></span><strong>[안내]</strong>
										이벤트 및 혜택 알림 수신에 동의합니다.</label>
										<span class="panel panel-default yak"><a class="claim" href="wak.html" target="_blank" style="font-size: 10px;">약관보기</a></span>
									</div>
								</li>
							</ul>
							
						</div> <!-- end panel -->
						<div class="exit  text-right"><a href="#" class="exit-item" data-toggle="modal" data-target="#myModal2" id="open_modal_btn">탈퇴하기</a></div>
						<div class="Go text-center">
							<button type="submit" class="btn btn-primary btn-lg" id="complete" style="width: 200px; height: 80px;">입력완료</button>
						</div>
					</form>
				</div>
			</div> <!-- end container -->
		</div>
	</div>
	<!-- Footer -->
	<div class="footer">
	</div>
	<!-- Footer END -->


</div>  <!-- end content -->

<!--modal2 -->
<div id="myModal2" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="mysecondModalLabel">
	<div class="modal-dialog modal-md">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h3 class="modal-title" id="mysecondModalLabel" style="text-align: center;">세모 탈퇴하기</h3>
			</div>
			<div class="modal-body" style="text-align: center;">
				<p>탈퇴, 시 네모에 등록하신 매물과 개인정보 등이 모두 삭제되며 <br> 이후 복구가 불가능 합니다. 정말 탈퇴 하시겠습니까?</p>
				<img src="./img/cry.png" style="width: 160px; height: 160px">
				
			</div>

			<div class="modal-footer">
				<button type="button" class="btn btn-danger" data-dismiss="modal" id="exit-right" style="width: 100%;">회원 탈퇴하기</button>
			</div>
		</div>

	</div>
</div> <!-- modal2 end -->


<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="./bootstrap/js/bootstrap.min.js"></script>
<!--<script type="text/javascript"
src="//dapi.kakao.com/v2/maps/sdk.js?appkey=98a9ba7245ae5c0929fafa188dbfaf9a&libraries=libraries=services,clusterer,drawing"></script> --> 
<script type="text/javascript">

	function exit() {
		$("#exit-right").click(function(e) {
				alert("회원 탈퇴가 완료 되었습니다.\r\n \r\n그동안 세모 서비스를 아끼고 사랑해주셔서 감사합니다. \r\n더욱더 노력하고 발전하는 세모가 되겠습니다.");
		});
	};

	function complete() {
		$("#complete").click(function() {
			alert("계정 정보가 수정되었습니다.");
		});
	}


	$(function() { 
		exit();
		complete();
		
	});
</script>




</body>
</html>