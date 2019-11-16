<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page trimDirectiveWhitespaces="true" %>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>세모- 상가 중개사이트</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Joinus_general.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/gh/moonspam/NanumBarunGothic@1.0/nanumbarungothicsubset.css">

<style type="text/css">
/*------------- 복사해서 사용하세요  --------------------*/

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

.mymodal-body .adduser {
	margin-left: 55px;
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
	<!-- 상단 메뉴 바 -->
	<%@ include file="assets/include/header.jsp" %>
	<!--  로그인 Modal -->
	<%@ include file="assets/include/loginmodal.jsp" %>
	<!-- 컨텐츠 -->
	<div class="content">
		<div class="body-content">
			<div class="main-space">
				<div class="container">
					<div class="page-title text-center">
						<h2 class="title">공인중개사 회원가입</h2>
						<p class="text-muted" style="font-size: 15px;">세모에 오신것을 환영합니다.</p>
					</div>
					<div class="main-content">
						<form name="filter" class="policy_all" name="filter" role="form" method="post"
							action="#" id="result01" style="display: block;">
							<div>
								<ul class="gallery">
									<li class="cover01"><span class="cover02"><img
											class="circle" src="${pageContext.request.contextPath}/assets/img/noname0.png" alt="약관동의" width="120" /></span>
									</li>
									<li class="cover01"><span class="cover02"><img
											class="circle" src="${pageContext.request.contextPath}/assets/img/contract1.png" alt="약관동의" width="120" /></span>
										<div class="text">약관동의</div></li>
									<li class="cover01"><span class="cover02"><img
											class="circle" src="${pageContext.request.contextPath}/assets/img/contract2.png" alt="약관동의" width="120" /></span>
										<div class="text">정보입력</div></li>
									<li class="cover01"><span class="cover02"><img
											class="circle" src="${pageContext.request.contextPath}/assets/img/contract2.png" alt="약관동의" width="120" /></span>
										<div class="text">가입완료</div></li>
									<li class="cover01"><span class="cover02"><img
											class="circle" src="${pageContext.request.contextPath}/assets/img/noname0.png" alt="약관동의" width="120" /></span>
									</li>
								</ul>
							</div>
								<div style="text-align: left;">
									<input type="checkbox" name="agree01" id="agree_all"
										onclick="agreeCheck()"> <label for="check_box">아래
										약관에 모두 동의합니다.</label>
								</div>
								<br />
								<div style="text-align: left;">
									<input type="checkbox" name="agree" id="agree" /> <label
										for="check_box">세모 서비스 이용약관(필수)</label>
								</div>
								<div class="policy">
									<iframe width="100%" height="150px" frameborder="0" 
										src="${pageContext.request.contextPath}/assets/terms/terms_common01.jsp"></iframe>
								</div>
								<br />
								<div style="text-align: left;">
									<input type="checkbox" name="agree" id="agree" /> <label
										for="check_box">공인중개사 회원가입 개인정보 수집 및 이용에 대한 동의(필수)</label>
								</div>
								<div class="policy">
									<iframe width="100%" height="150px" frameborder="0"
										src="${pageContext.request.contextPath}/assets/terms/terms_co01.jsp"></iframe>
								</div>
								<br />
								<div style="text-align: left;">
									<input type="checkbox" name="agree" id="agree" /> <label
										for="check_box">위치 기반 서비스 약관(필수)</label>
								</div>
								<div class="policy">
									<iframe width="100%" height="150px" frameborder="0"
										src="${pageContext.request.contextPath}/assets/terms/terms_common02.jsp"></iframe>
								</div>
								<br />
								<div style="text-align: left;">
									<input type="checkbox" name="agree" id="agree" /> <label
										for="check_box">공인중개사 비즈니스 회원 서비스 이용 약관 동의 (필수)</label>
								</div>
								<div class="policy">
									<iframe width="100%" height="150px" frameborder="0"
										src="${pageContext.request.contextPath}/assets/terms/terms_co02.jsp"></iframe>
								</div>
								<br />
								<div class="general01_btn">
									<input type="button" class="btn btn-primary" id="pass_co01"
										value="다음" name="checkButton" onclick="page01()"
										style="height: 50px; width: 100px; margin: 50px">
									<!-- button type="submit" 형식으로 하면 페이지 전환이 안먹힘 -->
								</div>
							</form>
							<!-- form 박스 - 1 END -->


							<form name="filter" class="personal_info" role="form"
								method="post" action="#" id="result02" style="display: none;">
								<!-- 페이지 이동 방지를 위한 iframe -->
								<iframe name='ifrm' width='0' height='0' frameborder='0'></iframe>
								<div>
									<ul class="gallery">
										<li class="cover01"><span class="cover02"><img
												class="circle" src="${pageContext.request.contextPath}/assets/img/noname0.png" alt="약관동의" width="120" /></span>
										</li>
										<li class="cover01"><span class="cover02"><img
												class="circle" src="${pageContext.request.contextPath}/assets/img/contract3.png" alt="약관동의"
												width="120" /></span>
											<div class="text" style="margin-left: 60px;">약관동의</div></li>
										<li class="cover01"><span class="cover02"><img
												class="circle" src="${pageContext.request.contextPath}/assets/img/contract1.png" alt="약관동의"
												width="120" /></span>
											<div class="text" style="margin-left: 60px;">정보입력</div></li>
										<li class="cover01"><span class="cover02"><img
												class="circle" src="${pageContext.request.contextPath}/assets/img/contract2.png" alt="약관동의"
												width="120" /></span>
											<div class="text" style="margin-left: 60px;">가입완료</div></li>
										<li class="cover01"><span class="cover02"><img
												class="circle" src="${pageContext.request.contextPath}/assets/img/noname0.png" alt="약관동의" width="120" /></span>
										</li>
									</ul>
								</div>
								
									<table style="margin:auto;">
										<tr>
											<th>공인중개사정보 입력</th>
										</tr>
										<tbody>
											<tr>
												<th class="active"><span class="left-name">중개사무소명</span></th>
												<td><input type="text" class="form-control"
													name="co_name" id="co_name" maxlength="20"
													placeholder="중개사무소명을 입력해주세요" style="width: 400px;">
												</td>
											</tr>
											<tr>
												<th class="active"><span class="left-name">중개사
														등록번호</span></th>
												<td><input type="text" class="form-control"
													name="co_number" id="co_number" maxlength="20"
													placeholder="중개사 등록번호를 입력해주세요"
													style="float: left; width: 260px;"> &nbsp;&nbsp;
													<div style="display: inline-block;">
														<input type="file" name="fileBox_1" id="fileBox_1"
															class="form-control" accept="image/jpeg,image/png"
															style="float: right; display: none"> <label
															for="fileBox_1"> <span
															class="btn btn-default sg-btn-lg-default">중개등록증 첨부</span>
														</label>
													</div></td>
											</tr>
											<tr>
												<th class="active"><span class="left-name">사업자
														등록번호</span></th>
												<td><input type="text" name="coe_number"
													id="coe_number" class="form-control" maxlength="20"
													placeholder="사업자 등록번호를 입력해주세요"
													style="float: left; width: 260px;"> &nbsp;&nbsp;
													<div style="display: inline-block;">
														<input type="file" name="fileBox_2" id="fileBox_2"
															class="form-control" accept="image/jpeg,image/png"
															style="float: right; display: none"> <label
															for="fileBox_2"> <span
															class="btn btn-default sg-btn-lg-default">사업등록증 첨부</span>
														</label>
													</div></td>
											</tr>
											<tr>
												<th><label for="address">중개사무소 주소</label></th>
												<!-------------- 카카오 소스 시작 ---------------->
												<td>
													<div id="kakaomap">
														<input type="text" id="sample2_postcode"
															placeholder="우편번호"> <input type="button"
															onclick="sample2_execDaumPostcode()" value="우편번호 찾기"><br>
														<input type="text" id="sample2_address" placeholder="주소"><br>
														<input type="text" id="sample2_detailAddress"
															placeholder="상세주소"> <input type="text"
															id="sample2_extraAddress" placeholder="참고항목">
													</div> <!-- iOS에서는 position:fixed 버그가 있음, 적용하는 사이트에 맞게 position:absolute 등을 이용하여 top,left값 조정 필요 -->
													<div id="layer"
														style="display: none; position: fixed; overflow: hidden; z-index: 1; -webkit-overflow-scrolling: touch;">
														<!--<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="닫기 버튼"> -->
													</div> <script
														src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
													<script>
                                                                // 우편번호 찾기 화면을 넣을 element
                                                                var element_layer = document.getElementById('layer');

                                                                function closeDaumPostcode() {
                                                                    // iframe을 넣은 element를 안보이게 한다.
                                                                    element_layer.style.display = 'none';
                                                                }

                                                                function sample2_execDaumPostcode() {
                                                                    new daum.Postcode({
                                                                        oncomplete: function(data) {
                                                                            // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                                                                            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                                                                            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                                                                            var addr = ''; // 주소 변수
                                                                            var extraAddr = ''; // 참고항목 변수

                                                                            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                                                                            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                                                                                addr = data.roadAddress;
                                                                            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                                                                                addr = data.jibunAddress;
                                                                            }

                                                                            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                                                                            if(data.userSelectedType === 'R'){
                                                                                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                                                                                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                                                                                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                                                                                    extraAddr += data.bname;
                                                                                }
                                                                                // 건물명이 있고, 공동주택일 경우 추가한다.
                                                                                if(data.buildingName !== '' && data.apartment === 'Y'){
                                                                                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                                                                                }
                                                                                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                                                                                if(extraAddr !== ''){
                                                                                    extraAddr = ' (' + extraAddr + ')';
                                                                                }
                                                                                // 조합된 참고항목을 해당 필드에 넣는다.
                                                                                document.getElementById("sample2_extraAddress").value = extraAddr;
                                                                            
                                                                            } else {
                                                                                document.getElementById("sample2_extraAddress").value = '';
                                                                            }

                                                                            // 우편번호와 주소 정보를 해당 필드에 넣는다.
                                                                            document.getElementById('sample2_postcode').value = data.zonecode;
                                                                            document.getElementById("sample2_address").value = addr;
                                                                            // 커서를 상세주소 필드로 이동한다.
                                                                            document.getElementById("sample2_detailAddress").focus();

                                                                            // iframe을 넣은 element를 안보이게 한다.
                                                                            // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
                                                                            element_layer.style.display = 'none';
                                                                        },
                                                                        width : '100%',
                                                                        height : '100%',
                                                                        maxSuggestItems : 5
                                                                    }).embed(element_layer);

                                                                    // iframe을 넣은 element를 보이게 한다.
                                                                    element_layer.style.display = 'block';

                                                                    // iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
                                                                    initLayerPosition();
                                                                }

                                                                // 브라우저의 크기 변경에 따라 레이어를 가운데로 이동시키고자 하실때에는
                                                                // resize이벤트나, orientationchange이벤트를 이용하여 값이 변경될때마다 아래 함수를 실행 시켜 주시거나,
                                                                // 직접 element_layer의 top,left값을 수정해 주시면 됩니다.
                                                                function initLayerPosition(){
                                                                    var width = 300; //우편번호서비스가 들어갈 element의 width
                                                                    var height = 400; //우편번호서비스가 들어갈 element의 height
                                                                    var borderWidth = 5; //샘플에서 사용하는 border의 두께

                                                                    // 위에서 선언한 값들을 실제 element에 넣는다.
                                                                    element_layer.style.width = width + 'px';
                                                                    element_layer.style.height = height + 'px';
                                                                    element_layer.style.border = borderWidth + 'px solid';
                                                                    // 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
                                                                    element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width)/2 - borderWidth) + 'px';
                                                                    element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height)/2 - borderWidth) + 'px';
                                                                }
                                                            </script>
												</td>
												<!-------------- 카카오 소스 끝 ---------------->
											</tr>
											<tr>
												<th class="active"><span class="left-name">중개사
														대표명</span></th>
												<td><input type="text" name="coe_name" id="coe_name"
													class="form-control" maxlength="20"
													placeholder="중개사 대표명을 입력해주세요"></td>
											</tr>
											<tr>
												<!-------------- 상윤이 소스 시작 ---------------->
												<th class="active"><span class="left-name">중개사
														대표번호</span></th>
												<td>
													<div class="coe_Telephone">
														<select class="form-control pull-left" id="coe_Telephone1"
															name="coe_Telephone1" style="width: 80px; height: 35px;">
															<option value="02">02</option>
															<option value="031">031</option>
															<option value="032">032</option>
														</select> <input type="text" class="form-control pull-left"
															id="coe_Telephone2" name="coe_Telephone2"
															style="width: 80px; height: 35px; margin-left: 20px;">
														<input type="text" class="form-control"
															id="coe_Telephone3" name="coe_Telephone3"
															style="width: 80px; height: 35px; margin-left: 200px;">
													</div> <!-- coe Telphone end -->
												</td>
												<!-------------- 상윤이 소스 끝 ---------------->
											</tr>
											<!-------------- 상윤이 소스 시작 ---------------->
											<tr>
												<th class="active"><span class="left-name">대표 사진</span></th>
											
                     						 	<td><img id="preview" src="${pageContext.request.contextPath}/assets/img/noname1.png" width="180" height="240" alt="사진 영역입니다.">
												<input type="file" id="getfile" name="getfile" accept="image/*" required/></td>
												
											</tr>
											<!-------------- 상윤이 소스 끝 ---------------->
											<tr>
												<th>개인정보 입력</th>
											</tr>
										</tbody>
										<tbody>
											<tr>
												<th class="active"><span class="left-name">이름</span></th>
												<td><input type="text" name="P_name" id="P_name"
													class="form-control" maxlength="20"
													placeholder="이름을 입력해주세요"></td>
											</tr>
											<tr>
												<th class="active"><span class="left-name">권한/자격</span></th>
												<td><select class="form-control" name="position2"
													id="position2" style="display: inline-block;">
														<option value="">----- 선택하세요 -----</option>
														<option value="qulity01">대표공인중개사</option>
														<option value="qulity02">소속공인중개사</option>
														<option value="qulity03">중개보조원</option>
												</select></td>
											</tr>
											<tr>
												<th class="active"><span class="left-name">이메일</span></th>
												<td><input type="text" name="user_email" id="user_email" class="form-control" maxlength="20" placeholder="이메일을 입력해주세요" style="display: inline-block;">
                                                &nbsp;@&nbsp;
                                                <select class="form-control" name="email_ge" id="email_ge" style="display: inline-block; width: 184px; height: 35px;">
        											<option value="">----- 선택하세요 -----</option>
        										    <option value="value 1">naver.com</option>
        											<option value="value 2">gmail.com</option>
        											<option value="value 3">daum.net</option>
    											</select>
                              
                                                <input type="text" name="email_ge2" id="email_ge2" class="form-control" maxlength="20" placeholder="ex)gmail.com" style="display: none; width: 184px; height: 35px;">
                                                <br/>
                                                <input type="checkbox" name="direct" id="direct" value="Y" onclick="formChange()"/>
                                                
                                                <label for="agree_y">직접입력</label>
												</td>
											</tr>
											<tr>
												<th class="active"><span class="left-name">비밀번호</span></th>
												<td><input type="password" name="co_pw" id="co_pw"
													class="form-control" maxlength="20"
													placeholder="비밀번호를 입력해주세요"></td>
											</tr>
											<tr>
												<th class="active"><span class="left-name">비밀번호
														확인</span></th>
												<td><input type="password" name="co_pw_check"
													id="co_pw_check" class="form-control" maxlength="20"
													placeholder="비밀번호를 입력해주세요"></td>
											</tr>
											<tr>
												<!-------------- 상윤이 소스 시작 ---------------->
												<th class="active"><span class="left-name">휴대폰
														번호</span></th>
												<td>
													<div class="coe_Telephone">
														<select class="form-control pull-left" id="phoneNumber1"
															name="phoneNumber1" style="width: 80px; height: 35px;">
															<option value="010">010</option>
															<option value="011">011</option>
															<option value="016">016</option>
															<option value="017">017</option>
															<option value="018">018</option>
															<option value="019">019</option>
														</select> <input type="text" class="form-control pull-left"
															id="phoneNumber2" name="phoneNumber2"
															style="width: 80px; height: 35px; margin-left: 20px;">
														<input type="text" class="form-control pull-left"
															id="phoneNumber3" name="phoneNumber3"
															style="width: 80px; height: 35px; margin-left: 20px;">
													</div> <!-- coe Telphone end -->
												</td>
												<!-------------- 상윤이 소스 끝 ---------------->
											</tr>
										</tbody>
									</table>
									<div class="general02_btn" style="text-align: center;">
										<input type="submit" class="btn btn-primary" value="입력완료"
											name="checkButton" onclick="submit_form()"
											style="height: 50px; width: 100px; margin: 50px">
										<!-- button type="submit" 형식으로 하면 페이지 전환이 안먹힘 -->
									</div>
								</form>
								<!-- form 박스 - 2 END -->




								<form name="filter" class="join_complete" role="form"
									method="post" action="#" id="result03" style="display: none;">
									<div>
										<ul class="gallery">
											<li class="cover01"><span class="cover02"><img
													class="circle" src="${pageContext.request.contextPath}/assets/img/noname0.png" alt="약관동의" width="120" /></span>
											</li>
											<li class="cover01"><span class="cover02"><img
													class="circle" src="${pageContext.request.contextPath}/assets/img/contract3.png" alt="약관동의"
													width="120" /></span>
												<div class="text">약관동의</div></li>
											<li class="cover01"><span class="cover02"><img
													class="circle" src="${pageContext.request.contextPath}/assets/img/contract3.png" alt="약관동의"
													width="120" /></span>
												<div class="text">정보입력</div></li>
											<li class="cover01"><span class="cover02"><img
													class="circle" src="${pageContext.request.contextPath}/assets/img/contract1.png" alt="약관동의"
													width="120" /></span>
												<div class="text">가입완료</div></li>
											<li class="cover01"><span class="cover02"><img
													class="circle" src="${pageContext.request.contextPath}/assets/img/noname0.png" alt="약관동의" width="120" /></span>
											</li>
										</ul>
									</div>
									<div class="box1">
										<h5>회원가입이 완료되었습니다.</h5>
										<img src="${pageContext.request.contextPath}/assets/img/complete.png" />
									</div>
									<div>
										<input type="button" class="btn btn-primary" value="바로가기"
											name="checkButton" onclick="location.href='index.do'"
											style="height: 50px; width: 100px; margin: 50px">
										<!-- button type="submit" 형식으로 하면 페이지 전환이 안먹힘 -->
									</div>
								</form>
								<!-- form 박스 - 3 END -->
					</div>
				</div>
				<!-- end container -->
			</div>
		</div>
		<!-- Footer -->
		<div class="footer"></div>
		<!-- Footer END -->
	</div>
	<!-- end content -->
	<script src="${pageContext.request.contextPath}/assets/js/regex/regex.js"></script>
	<!--   한글 입력 유효성 체크를 위한 regex2 추가 -->
	<script src="${pageContext.request.contextPath}/assets/js/regex/regex2.js"></script>
	<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript">
                	$('#pass_co01').attr('disabled', true);
            		$('#agree_all').on('change',function(){
                    	var agree_all = $('input:checkbox[id="agree_all"]').is(":checked");
                    	if(agree_all==true){
                        	$('#pass_co01').removeAttr("disabled");
                        	$('.general01_btn').removeClass("on");
                    	}else{
                        	$('#pass_co01').attr("disabled", true);
                        	$('.general01_btn').addClass("on");
                    	}
                	});
                	
                    var selectAll = document.querySelector("#agree_all");
                    selectAll.addEventListener('click', function () {
                        var objs = document.querySelectorAll("#agree");
                        for (var i = 0; i < objs.length; i++) {
                            objs[i].checked = selectAll.checked;
                        };
                    }, false);
                    var objs = document.querySelectorAll("#agree");
                    for (var i = 0; i < objs.length; i++) {
                        objs[i].addEventListener('click', function () {
                            var selectAll = document.querySelector("#agree_all");
                            for (var j = 0; j < objs.length; j++) {
                                if (objs[j].checked === false) {
                                    selectAll.checked = false;
                                    $('#pass_co01').attr("disabled", true);
                                	$('.general01_btn').addClass("on");
                                    return;
                                };
                            };
                            selectAll.checked = true;
                            $('#pass_co01').removeAttr("disabled");
                        	$('.general01_btn').removeClass("on");
                        }, false);
                    }
                    
                    function page01() {
                        var rst = document.getElementById("result01");
                        if (rst.style.display == 'block') {
                            rst.style.display = 'none';
                        }
                        var rst = document.getElementById("result02");
                        if (rst.style.display == 'none') {
                            rst.style.display = 'block';
                        }
                        $('html').scrollTop(0);
                    }
                    function page02() {
                        var rst = document.getElementById("result02");
                        if (rst.style.display == 'block') {
                            rst.style.display = 'none';
                        }
                        var rst = document.getElementById("result03");
                        if (rst.style.display == 'none') {
                            rst.style.display = 'block';
                        }
                        $('html').scrollTop(0);
                    }

                    $(document).ready(function(){
                        $("#direct").change(function(){
                            if($("#direct").is(":checked")){
                            	var rst = document.getElementById("email_ge");   
                                rst.style.display = 'none';           
                        		var est = document.getElementById("email_ge2");
            	                est.style.display = 'inline-block';
                            }else{
                            	var rst = document.getElementById("email_ge");   
                                rst.style.display = 'inline-block';           
                        		var est = document.getElementById("email_ge2");
            	                est.style.display = 'none';
                            }
                        });
                    });    

                 	// 페이지 이동없이 submit 처리 (없어도 되네? 왜 갑자기 이러는지는 모름)       
                    function submit_form() {
                    document.filter.target = 'ifrm';
                    document.filter.action = 'save_data.php';
                    document.filter.submit();
                    }
                    
                    // 폼 유효성 검사
                    $(function() {
                    /** 폼의 데이터 전송 이벤트 */
                    $("#result02").submit(function(e) {
                        // 폼의 기본 동작 방지 --> 데이터를 전송하지 않는다.(새로고침 방지)
                        e.preventDefault();
                        
                        /** 중개사무소명 검사 */
                        if (!regex.value('#co_name', '중개사무소명을 입력하세요.')) { return false; }
                        if (!regex.kor('#co_name', '중개사무소명은 한글만 입력 가능합니다.')) { return false; }
                        if (!regex.min_length('#co_name', 2, '중개사무소명은 최소 2자 이상 입력 가능합니다.')) { return false; }
                        if (!regex.max_length('#co_name', 20, '중개사무소명은 최대 20자 까지만 입력 가능합니다.')) { return false; }
                        
                     	// 중개사 번호 숫자 입력 검사
                     	if (!regex.value('#co_number', '중개사 등록번호를 입력하세요.')) { return false; }
                        var pattern2 = /^[0-9]*$/;
                        if (!pattern2.test($('#co_number').val())) {
                            alert('중개사 등록번호는 숫자만 입력 가능합니다.');
                            $('#co_number').val('');
                            $('#co_number').focus();
                            return false;
                        }
                        
                        // 중개사 번호 파일체크
                        var subject = $("#fileBox_1").val();
                        if (!subject) {
                            alert("중개등록증을 첨부하세요");
                            $("#fileBox_1").focus();
                            return false;
                        }
                        
                     	// 사업자 등록 번호 숫자 입력 검사
                     	if (!regex.value('#coe_number', '사업자 등록번호를 입력하세요.')) { return false; }
                        var pattern2 = /^[0-9]*$/;
                        if (!pattern2.test($('#coe_number').val())) {
                            alert('사업자 등록번호는 숫자만 입력 가능합니다.');
                            $('#coe_number').val('');
                            $('#coe_number').focus();
                            return false;
                        }
                        
                     	// 사업자 등록증 파일체크
                        var subject = $("#fileBox_2").val();
                        if (!subject) {
                            alert("사업자등록증을 첨부하세요");
                            $("#fileBox_2").focus();
                            return false;
                        }
                        
                        
                        //주소검사 1
                        if (!regex.value('#sample2_postcode', '주소를 입력하세요.')) { return false; }
                        
                        //주소검사 2
                        if (!regex.value('#sample2_address', '상세주소를 입력하세요.')) { return false; }
                        
                     	// 상세주소 입력 검사
                     	if (!regex.value('#sample2_detailAddress', '상세주소를 입력하세요.')) { return false; }
                     	
                     	// 중개사 대표명
                     	if (!regex.value('#coe_name', '중개사 대표명을 입력하세요.')) { return false; }
                		if (!regex.kor('#coe_name', '중개사 대표명은 한글만 입력 가능합니다.')) { return false; }
                		if (!regex.min_length('#coe_name', 2, '중개사 대표명은 최소 2자 이상 입력 가능합니다.')) { return false; }
                		if (!regex.max_length('#coe_name', 4, '중개사 대표명은 최대 4자 까지만 입력 가능합니다.')) { return false; }
                		
                		
                		// 중개사대표번호 입력 검사 -1
                		if (!regex.value('#coe_Telephone2', '중개사 대표번호를 입력하세요.')) { return false; }
                        var pattern2 = /^[0-9]*$/;
                        if (!pattern2.test($('#coe_Telephone2').val())) {
                            alert('중개사 대표번호는 숫자만 입력 가능합니다.');
                            $('#coe_Telephone2').val('');
                            $('#coe_Telephone2').focus();
                            return false;
                        }
                        if (!regex.min_length('#coe_Telephone2', 3, '최소 3자 이상 입력 가능합니다.')) { return false; }
                		if (!regex.max_length('#coe_Telephone2', 4, '최대 4자 까지만 입력 가능합니다.')) { return false; }
                		
                		// 중개사대표번호 입력 검사 -2
                		if (!regex.value('#coe_Telephone3', '중개사 대표번호를 입력하세요.')) { return false; }
                        var pattern2 = /^[0-9]*$/;
                        if (!pattern2.test($('#coe_Telephone3').val())) {
                            alert('중개사 대표번호는 숫자만 입력 가능합니다.');
                            $('#coe_Telephone3').val('');
                            $('#coe_Telephone3').focus();
                            return false;
                        }
                        if (!regex.min_length('#coe_Telephone3', 3, '최소 3자 이상 입력 가능합니다.')) { return false; }
                		if (!regex.max_length('#coe_Telephone3', 4, '최대 4자 까지만 입력 가능합니다.')) { return false; }
                		
                		
                		/** 이름 검사 */
                        if (!regex.value('#P_name', '이름을 입력하세요.')) { return false; }
                        if (!regex.kor('#P_name', '이름은 한글만 입력 가능합니다.')) { return false; } 
                        if (!regex.min_length('#P_name', 2, '이름은 최소 2자 이상 입력 가능합니다.')) { return false; }
                        if (!regex.max_length('#P_name', 10, '이름은 최대 10자 까지만 입력 가능합니다.')) { return false; }
                        
                        /** 권한/자격 검사 */
                        var subject = $("#position2").val();
                        if (!subject) {
                            alert("권한/자격을 선택하세요.");
                            $("#position2").focus();
                            return false;
                        }
                        
                        /** 이메일 검사 -1 */
                        if (!regex.value('#user_email', '이메일을 입력하세요.')) { return false; }
                        if (!regex.eng_num('#user_email', '이메일은 영어와 숫자 조합만 입력 가능합니다.')) { return false; }
                        if (!regex.min_length('#user_email', 4, '이메일은 최소 4자 이상 입력 가능합니다.')) { return false; }
                        if (!regex.max_length('#user_email', 20, '이메일은 최대 20자 까지만 입력 가능합니다.')) { return false; }
                        
                        if($("#direct").is(":checked")){
                        	/** 이메일 검사 2-2 */
                            if (!regex.value('#email_ge2', '이메일을 입력하세요.')) { return false; }
                        }else{
                        	/** 이메일 검사 2-1 자바스크립트 12일차 2번예제 dropdown*/           
                            var subject = $("#email_ge").val();
                            if (!subject) {
                                alert("이메일을 선택하세요.");
                                $("#email_ge").focus();
                                return false;
                            }
                        }
				
                        /** 비밀번호 검사 */
                        if (!regex.value('#co_pw', '비밀번호를 입력하세요.')) { return false; }
                        if (!regex.min_length('#co_pw', 4, '비밀번호는 최소 4자 이상 입력 가능합니다.')) { return false; }
                        if (!regex.max_length('#co_pw', 20, '비밀번호는 최대 20자 까지만 입력 가능합니다.')) { return false; }
                        if (!regex.compare_to('#co_pw', '#co_pw_check', '비밀번호 확인이 잘못되었습니다.')) { return false; }
                        
                    	// 휴대폰번호 입력 검사 -2
                		if (!regex.value('#phoneNumber2', '휴대폰 번호를 입력하세요.')) { return false; }
                        var pattern2 = /^[0-9]*$/;
                        if (!pattern2.test($('#phoneNumber2').val())) {
                            alert('휴대폰 번호는 숫자만 입력 가능합니다.');
                            $('#phoneNumber2').val('');
                            $('#phoneNumber2').focus();
                            return false;
                        }
                        if (!regex.min_length('#phoneNumber2', 4, '휴대폰 번호 양식에 맞춰주세요.')) { return false; }
                		if (!regex.max_length('#phoneNumber2', 4, '휴대폰 번호 양식에 맞춰주세요.')) { return false; }
                		
                		// 휴대폰번호 입력 검사 -3
                		if (!regex.value('#phoneNumber3', '휴대폰 번호를 입력하세요.')) { return false; }
                        var pattern2 = /^[0-9]*$/;
                        if (!pattern2.test($('#phoneNumber3').val())) {
                            alert('휴대폰 번호는 숫자만 입력 가능합니다.');
                            $('#phoneNumber3').val('');
                            $('#phoneNumber3').focus();
                            return false;
                        }
                        if (!regex.min_length('#phoneNumber3', 4, '휴대폰 번호 양식에 맞춰주세요')) { return false; }
                		if (!regex.max_length('#phoneNumber3', 4, '휴대폰 번호 양식에 맞춰주세요.')) { return false; }
                        		
                       	page02();

                       });
    });
                    
                    <!----------------------------------- 이미지파일 ------------------------------>
                    var file = document.querySelector('#getfile');

                    file.onchange = function () { 
                     var fileList = file.files ;
                     
                     // 읽기
                     var reader = new FileReader();
                     reader.readAsDataURL(fileList [0]);

                     //로드 한 후
                     reader.onload = function  () {
                         document.querySelector('#preview').src = reader.result;
                     }; 
                 }; 
                    
                    
                </script>
</body>
</html>
