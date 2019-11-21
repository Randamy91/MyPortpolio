<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
        <title>세모- 상가 중개사이트</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Joinus_general.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/terms01.css">
    	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/terms02.css">
     
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
                            <h2 class="title">일반회원 가입</h2>
                            <p class="text-muted" style="font-size: 15px;">세모에 오신것을 환영합니다.</p>
                        </div>
                        <div class="main-content">
                            <form name="filter" class="policy_all" role="form" method="post" id="result01" style="display: block;">
                                <div>
                                    <ul class="gallery">
                                        <li class="cover01">
                                            <span class="cover02"><img class="circle" src="${pageContext.request.contextPath}/assets/img/noname0.png" alt="약관동의" width="120"/></span>
                                        </li>
                                        <li class="cover01">
                                            <span class="cover02"><img class="circle" src="${pageContext.request.contextPath}/assets/img/contract1.png" alt="약관동의" width="120"/></span>
                                            <div class="text">약관동의</div>
                                        </li>
                                        <li class="cover01">
                                            <span class="cover02"><img class="circle" src="${pageContext.request.contextPath}/assets/img/contract2.png" alt="약관동의" width="120"/></span>
                                            <div class="text">정보입력</div>
                                        </li>
                                        <li class="cover01">
                                            <span class="cover02"><img class="circle" src="${pageContext.request.contextPath}/assets/img/contract2.png" alt="약관동의" width="120"/></span>
                                            <div class="text">가입완료</div>
                                        </li>
                                        <li class="cover01">
                                            <span class="cover02"><img class="circle" src="${pageContext.request.contextPath}/assets/img/noname0.png" alt="약관동의" width="120"/></span>
                                        </li>
                                    </ul>
                                </div>
                                <div style="text-align: left;">
                                    <input type="checkbox" name="agree01" id="agree_all">
                                    <label for="check_box">아래 약관에 모두 동의합니다.</label>
                                </div>
                                <br/>
                                <div style="text-align: left;">
                                    <input type="checkbox" name="agree" id="agree"/>
                                    <label for="check_box">세모 서비스 이용약관(필수)</label>
                                </div>
                                <div class="policy">
                                	<%@ include file="assets/include/terms/terms_common01.jsp" %>
                                </div>
                                <br/>
                                <div style="text-align: left;">
                                    <input type="checkbox" name="agree" id="agree"/>
                                    <label for="check_box">개인정보 수집 및 이용에 대한 동의(필수)</label>
                                </div>
                                <div class="policy">
                                	<%@ include file="assets/include/terms/terms_ge01.jsp" %>
                                </div>
                                <br/>
                                <div style="text-align: left;">
                                <input type="checkbox" name="agree" id="agree"/>
                                <label for="check_box">위치 기반 서비스 약관(필수)</label>
                                </div>
                                <div class="policy">
                                	<%@ include file="assets/include/terms/terms_common02.jsp" %>
                                </div>
                                <div class="general01_btn">
                                    <input
                                    type="button" class="btn btn-primary"  id="pass_ge01" value="다음" name="checkButton" onclick="page01()" style="height: 50px; width: 100px; margin: 50px">
                                <!-- button type="submit" 형식으로 하면 페이지 전환이 안먹힘 -->
                                </div>
                            </form>
                            <!-- form 박스 - 1  -->
                            
                            <form name="filter" class="personal_info" role="form" id="result02" style="display: none;" >
                                <!-- 페이지 이동 방지를 위한 iframe -->
                                <iframe name='ifrm' width='0' height='0' frameborder='0'></iframe>

                                <div>
                                    <ul class="gallery">
                                        <li class="cover01">
                                            <span class="cover02"><img class="circle" src="${pageContext.request.contextPath}/assets/img/noname0.png" alt="약관동의" width="120"/></span>
                                        </li>
                                        <li class="cover01">
                                            <span class="cover02"><img class="circle" src="${pageContext.request.contextPath}/assets/img/contract3.png" alt="약관동의" width="120"/></span>
                                            <div class="text" style="margin-left:60px;">약관동의</div>
                                        </li>
                                        <li class="cover01">
                                            <span class="cover02"><img class="circle" src="${pageContext.request.contextPath}/assets/img/contract1.png" alt="약관동의" width="120"/></span>
                                            <div class="text" style="margin-left:60px;">정보입력</div>
                                        </li>
                                        <li class="cover01">
                                            <span class="cover02"><img class="circle" src="${pageContext.request.contextPath}/assets/img/contract2.png" alt="약관동의" width="120"/></span>
                                            <div class="text" style="margin-left:60px;">가입완료</div>
                                        </li>
                                        <li class="cover01">
                                            <span class="cover02"><img class="circle" src="${pageContext.request.contextPath}/assets/img/noname0.png" alt="약관동의" width="120"/></span>
                                        </li>
                                    </ul>
                                </div>
                                <table style="margin:auto;">
                                    <tbody>
                                        <tr>
                                            <th>
                                                개인정보 입력
                                            </th>
                                        </tr>
                                        <tr>
                                            <th class="active"><span class="left-name">이름</span></th>
                                            <td>
                                                <input type="text" name="user_name" id="user_name" class="form-control" maxlength="20" placeholder="이름을 입력해주세요">
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="active"><span class="left-name">이메일</span></th>
                                            <td>
                                                <input type="text" name="user_email" id="user_email" class="form-control" maxlength="20" placeholder="이메일을 입력해주세요" style="display: inline-block;">
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
                                            <td>
                                                <input type="password" name="Rpw" id="Rpw" class="form-control" maxlength="20" placeholder="비밀번호를 입력해주세요">
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="active"><span class="left-name">비밀번호 확인</span></th>
                                            <td>
                                                <input type="password" name="Npw" id="Npw" class="form-control" maxlength="20" placeholder="비밀번호를 확인해주세요">
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="active"><span class="left-name">휴대폰 번호</span></th>
                                            <td>
                                                <input type="text" name="phoneNumber1" id="phoneNumber1" class="form-control" maxlength="20" placeholder="휴대폰번호를 입력해주세요">
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                                <div class="general02_btn on" style="text-align: center;">
                                    <input
                                    type="submit" class="btn btn-primary" id="submit_ge02" value="입력완료" name="checkButton" style="height: 50px; width: 100px; margin: 50px" >
                                <!-- button type="submit" 형식으로 하면 페이지 전환이 안먹힘 -->
                                </div>
                            </form>
							
                            <!-- form 박스 - 2  -->
                            <form name="filter" class="join_complete" role="form" method="post" action="#" id="result03" style="display: none;">
                                <div>
                                   <ul class="gallery">
                                        <li class="cover01">
                                            <span class="cover02"><img class="circle" src="${pageContext.request.contextPath}/assets/img/noname0.png" alt="약관동의" width="120"/></span>
                                        </li>
                                        <li class="cover01">
                                            <span class="cover02"><img class="circle" src="${pageContext.request.contextPath}/assets/img/contract3.png" alt="약관동의" width="120"/></span>
                                            <div class="text">약관동의</div>
                                        </li>
                                        <li class="cover01">
                                            <span class="cover02"><img class="circle" src="${pageContext.request.contextPath}/assets/img/contract3.png" alt="약관동의" width="120"/></span>
                                            <div class="text">정보입력</div>
                                        </li>
                                        <li class="cover01">
                                            <span class="cover02"><img class="circle" src="${pageContext.request.contextPath}/assets/img/contract1.png" alt="약관동의" width="120"/></span>
                                            <div class="text">가입완료</div>
                                        </li>
                                        <li class="cover01">
                                            <span class="cover02"><img class="circle" src="${pageContext.request.contextPath}/assets/img/noname0.png" alt="약관동의" width="120"/></span>
                                        </li>
                                    </ul>
                                </div>
                                <div class="box1">
                                    <h5>회원가입이 완료되었습니다.</h5>
                                    <img src="${pageContext.request.contextPath}/assets/img/complete.png"/>
                                </div>
                                <div>
                                    <input
                                    type="button" class="btn btn-primary" value="바로가기" name="checkButton" onclick="location.href='index.do'" style="height: 50px; width: 100px; margin: 50px">
                                <!-- button type="submit" 형식으로 하면 페이지 전환이 안먹힘 -->
                                </div>
                            </form>
                            <!-- form 박스 - 3  -->
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
        <script src="${pageContext.request.contextPath}/assets/plugins/icheck/icheck.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/plugins/ajax/ajax_helper.js"></script>
        <script type="text/javascript">
        	   	
        	$('#pass_ge01').attr('disabled', true);
        	$('#agree_all').on('change',function(){
                var agree_all = $('input:checkbox[id="agree_all"]').is(":checked");
                if(agree_all==true){
                    $('#pass_ge01').removeAttr("disabled");
                    $('.general01_btn').removeClass("on");
                }else{
                    $('#pass_ge01').attr("disabled", true);
                    $('.general01_btn').addClass("on");
                }
            });
        	
        	
       	 	var selectAll = document.querySelector("#agree_all");
         		selectAll.addEventListener('click', function(){
            	var objs = document.querySelectorAll("#agree");
            		for (var i = 0; i < objs.length; i++) {
               			objs[i].checked = selectAll.checked;
            		};
         		}, false);
         		// 전체체크박스 체크시 전체선택, 전체체크박스 해제시 전체해제 
          
         		var objs = document.querySelectorAll("#agree");
         			for(var i=0; i<objs.length ; i++){
          				objs[i].addEventListener('click', function(){
          				// agree 라는 ID를 가지는 체크박스 체크시,
            				var selectAll = document.querySelector("#agree_all");
          					// selectAll은 전체선택 체크박스의 함수로 지정
            					for (var j = 0; j < objs.length; j++) {
               						if (objs[j].checked == false) {
               							// 체크박스 중 하나라도 체크가 안되어있을 경우 
                  						selectAll.checked = false;
                  						$('#pass_ge01').attr("disabled", true);
                  	                    $('.general01_btn').addClass("on");
               	  						return;
               	  						// 
               							};
             						};
             						selectAll.checked = true;
             						// 체크박스가 모두 체크되어있을 경우
             						$('#pass_ge01').removeAttr("disabled");
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
            
      		// 유효성 검사
	
      		$(function() {
            /** 가입폼의 submit 이벤트 */
            $("#result02").submit(function(e) {
                // 기본동작 수행 방식
                e.preventDefault();

                /** 이름 검사 */
                if (!regex.value('#user_name', '이름을 입력하세요.')) { return false; }
                if (!regex.kor('#user_name', '이름은 한글만 입력 가능합니다.')) { return false; }
                if (!regex.min_length('#user_name', 2, '이름은 최소 2자 이상 입력 가능합니다.')) { return false; }
                if (!regex.max_length('#user_name', 10, '이름은 최대 10자 까지만 입력 가능합니다.')) { return false; }
                
                
                
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
                if (!regex.value('#Rpw', '비밀번호를 입력하세요.')) { return false; }
                if (!regex.min_length('#Rpw', 4, '비밀번호는 최소 4자 이상 입력 가능합니다.')) { return false; }
                if (!regex.max_length('#Rpw', 20, '비밀번호는 최대 20자 까지만 입력 가능합니다.')) { return false; }
                if (!regex.compare_to('#Rpw', '#Npw', '비밀번호 확인이 잘못되었습니다.')) { return false; }
                
                /** 연락처 검사 */
                if (!regex.value('#phoneNumber1', '번호를 입력하세요.')) { return false; }
                if (!regex.phone('#phoneNumber1', '번호가 잘못되었습니다.')) { return false; }

                /*
				ajax 비동기 회원정보 parsing
				 */
				// 현재 시간 yyyy-mm-dd hh:mm:ss
				function leadingZeros(n, digits) {
					var zero = '';
					n = n.toString();

					if (n.length < digits) {
						for (i = 0; i < digits - n.length; i++)
							zero += '0';
					}
					return zero + n;
				}

				var d = new Date();
				var s = leadingZeros(d.getFullYear(), 4) + '-'
						+ leadingZeros(d.getMonth() + 1, 2) + '-'
						+ leadingZeros(d.getDate(), 2) + ' ' +

						leadingZeros(d.getHours(), 2) + ':'
						+ leadingZeros(d.getMinutes(), 2) + ':'
						+ leadingZeros(d.getSeconds(), 2);

				var firstEmail = $("#user_email");
				var fullEmail;
				// email 결합
				if ($("#direct").is(":checked")) {
					fullEmail = firstEmail.val() + "@"
							+ $("#email_ge2").val();
				} else {
					fullEmail = firstEmail.val() + "@"
							+ $("#email_ge option:selected").text();
				}

				//ajax parsing
				$.ajax({
					url : 'http://localhost:8080/semo',
					dataType : 'json',
					type : 'POST',
					data : {
						name : $("#user_name").val(),
						email_id : fullEmail,
						user_pw : $("#Rpw").val(),
						tel_num : $("#phoneNumber1").val(),
						reg_date : s,
						recent_date : s
					}
				});
                page02();
            });
        });
      		
         	/*
      		// 페이지 이동없이 submit 처리 (없어도 되네? 왜 갑자기 이러는지는 모름)       
            function submit_form() {
            document.filter.target = 'ifrm';
            document.filter.action = 'save_data.php';
            document.filter.submit();
            }*/
        
            
            $(function(){
                //icheck plugin적용
            $(".ichecked").iCheck({
                checkboxClass : 'icheckbox_flat-blue',
                radioClass: 'iradio_flat-blue'
            });

            $('.ichecked').on('ifChecked', function(event) {
                console.log("checked");
            });

            $('.ichecked').on('ifUnchecked', function(event) {
                console.log("unchecked");
            });
            });
        </script>
    </body>
</html>