<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
        <title>세모- 상가 중개사이트</title>
        <link rel="stylesheet" href="./bootstrap/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="css/Joinus_general.css">
        <link rel="stylesheet" href="plugins/icheck/css/blue.css" />
        <link href="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
        <!-- blue.css / icheck.min.js / jquery에 icheck plugin을 적용시켜 놓음(general만).. 실제 class에 icheck를 먹이면 자바스크립트가 동작을 안함 확인중.. -->
    	
    	 <script language="javascript">
  			function showPopup() { window.open("08_2_popup.html", "a", "width=400, height=300, left=100, top=50"); }
  		 </script>


    </head>
    <style type="text/css">
        .logo {
            margin-left: 30px;
        }
        .menu_navbar {
            width: 100%;
            padding-right: 40px;
            margin-bottom: 0;
            line-height: 45px;
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
        <!-- 로그인 modal end -->
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
                            <form name="filter" class="policy_all" role="form" method="post" action="#" id="result01" style="display: block;">
                                <div>
                                    <ul class="gallery">
                                        <li class="cover01">
                                            <span class="cover02"><img class="circle" src="img/noname0.png" alt="약관동의" width="120"/></span>
                                        </li>
                                        <li class="cover01">
                                            <span class="cover02"><img class="circle" src="img/contract1.png" alt="약관동의" width="120"/></span>
                                            <div class="text">약관동의</div>
                                        </li>
                                        <li class="cover01">
                                            <span class="cover02"><img class="circle" src="img/contract2.png" alt="약관동의" width="120"/></span>
                                            <div class="text">정보입력</div>
                                        </li>
                                        <li class="cover01">
                                            <span class="cover02"><img class="circle" src="img/contract2.png" alt="약관동의" width="120"/></span>
                                            <div class="text">가입완료</div>
                                        </li>
                                        <li class="cover01">
                                            <span class="cover02"><img class="circle" src="img/noname0.png" alt="약관동의" width="120"/></span>
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
                                    <iframe width="100%" height="150px" frameborder="0" src="http://cdn.nemoapp.kr/policy/servicePolicy.html?v=637063192662958639#begin"></iframe>
                                </div>
                                <br/>
                                <div style="text-align: left;">
                                    <input type="checkbox" name="agree" id="agree"/>
                                    <label for="check_box">개인정보 수집 및 이용에 대한 동의(필수)</label>
                                </div>
                                <div class="policy">
                                    <iframe width="100%" height="150px" frameborder="0" src="http://cdn.nemoapp.kr/policy/userPrivacyPolicy.html?v=637063192662958639#begin"></iframe>
                                </div>
                                <br/>
                                <div style="text-align: left;">
                                <input type="checkbox" name="agree" id="agree"/>
                                <label for="check_box">위치 기반 서비스 약관(필수)</label>
                                </div>
                                <div class="policy">
                                    <iframe width="100%" height="150px" frameborder="0" src="https://cdn.nemoapp.kr/policy/locatoinPolicy.html?v=637063192662958639#begin"></iframe>
                                </div>
                                <div class="general01_btn">
                                    <input
                                    type="button" class="btn btn-primary"  id="pass_ge01" value="다음" name="checkButton" onclick="page01()" style="height: 50px; width: 100px; margin: 50px">
                                <!-- button type="submit" 형식으로 하면 페이지 전환이 안먹힘 -->
                                </div>
                            </form>
                            <!-- form 박스 - 1  -->
                            <form name="filter" class="personal_info" role="form" method="post" action="#" id="result02" style="display: none;">
                                <div>
                                    <ul class="gallery">
                                        <li class="cover01">
                                            <span class="cover02"><img class="circle" src="img/noname0.png" alt="약관동의" width="120"/></span>
                                        </li>
                                        <li class="cover01">
                                            <span class="cover02"><img class="circle" src="img/contract3.png" alt="약관동의" width="120"/></span>
                                            <div class="text" style="margin-left:60px;">약관동의</div>
                                        </li>
                                        <li class="cover01">
                                            <span class="cover02"><img class="circle" src="img/contract1.png" alt="약관동의" width="120"/></span>
                                            <div class="text" style="margin-left:60px;">정보입력</div>
                                        </li>
                                        <li class="cover01">
                                            <span class="cover02"><img class="circle" src="img/contract2.png" alt="약관동의" width="120"/></span>
                                            <div class="text" style="margin-left:60px;">가입완료</div>
                                        </li>
                                        <li class="cover01">
                                            <span class="cover02"><img class="circle" src="img/noname0.png" alt="약관동의" width="120"/></span>
                                        </li>
                                    </ul>
                                </div>
                                <table align="center">
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
                                                <select class="form-control" name="email" id="email" style="display: inline-block;">
                                                    <option>----- 선택하세요 -----</option>
                                                    <option value="naver">naver.com</option>
                                                    <option value="gmail">gmail.com</option>
                                                    <option value="daum">daum.net</option>
                                                </select>
                                                <br/>
                                                <input type="checkbox" name="agree" id="clickMe" value="Y" onclick="showPopup();"/>
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
                                            <th class="active"><span class="left-name">새 비밀번호</span></th>
                                            <td>
                                                <input type="password" name="Npw" id="Npw" class="form-control" maxlength="20" placeholder="비밀번호를 입력해주세요">
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
                                    type="button" class="btn btn-primary" value="입력완료" name="checkButton" onclick="page02()" style="height: 50px; width: 100px; margin: 50px" >
                                <!-- button type="submit" 형식으로 하면 페이지 전환이 안먹힘 -->
                                </div>
                            </form>


                            <!-- form 박스 - 2  -->
                            <form name="filter" class="join_complete" role="form" method="post" action="#" id="result03" style="display: none;">
                                <div>
                                   <ul class="gallery">
                                        <li class="cover01">
                                            <span class="cover02"><img class="circle" src="img/noname0.png" alt="약관동의" width="120"/></span>
                                        </li>
                                        <li class="cover01">
                                            <span class="cover02"><img class="circle" src="img/contract3.png" alt="약관동의" width="120"/></span>
                                            <div class="text">약관동의</div>
                                        </li>
                                        <li class="cover01">
                                            <span class="cover02"><img class="circle" src="img/contract3.png" alt="약관동의" width="120"/></span>
                                            <div class="text">정보입력</div>
                                        </li>
                                        <li class="cover01">
                                            <span class="cover02"><img class="circle" src="img/contract1.png" alt="약관동의" width="120"/></span>
                                            <div class="text">가입완료</div>
                                        </li>
                                        <li class="cover01">
                                            <span class="cover02"><img class="circle" src="img/noname0.png" alt="약관동의" width="120"/></span>
                                        </li>
                                    </ul>
                                </div>
                                <div class="box1">
                                    <h5>회원가입이 완료되었습니다.</h5>
                                    <img src="img/complete.png"/>
                                </div>
                                <div>
                                    <input
                                    type="button" class="btn btn-primary" value="바로가기" name="checkButton" onclick="location.href='Main.jsp'" style="height: 50px; width: 100px; margin: 50px">
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
        <script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
        <script type="text/javascript" src="./bootstrap/js/bootstrap.min.js"></script>
        <script src="plugins/icheck/icheck.min.js"></script>
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