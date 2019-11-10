<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
        <title>세모- 상가 중개사이트</title>
        <link rel="stylesheet" href="./bootstrap/css/bootstrap.min.css"/>
        <link rel="stylesheet" type="text/css" href="css/Bigdata.css">
        
    </head>
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
    <body>
        <!--------------------------- 복사하여 사용 하세요 ---------------------------->
		<!-- 상단 메뉴 바 -->
			<%@ include file="include/header.jsp" %>
		<!--  로그인 Modal -->
			<%@ include file="include/loginmodal.jsp" %>

        <!-- 컨텐츠 -->
        <div class="content">
            <div class="body-content">
                <div class="main-space">

                		
                		<div class="commercialArea">
                		<hr >	
                        <ul>
                        	<li> <h4 id="market" onclick="page02()">상권 개요</h4> </li>
                        	<li> <h4 id="customer" onclick="page01()">고객 분석 및 업종 분석</h4> </li>
                        </ul>
                        <hr size="10px">
                        </div>
                     

                    <div class="container">

                        <div class="main-content">
                        <div class="page01" role="form" id="result01" style="display: block;">
                                
                                <table>
                                	<tr>
                                		<td>
                                <h4 style="margin-left:80px;">상권현황</h4>
                                <div class="box1"></div>
                                		</td>
                                	</tr>
                                	<tr>
                                		<td>
                                <h4 style="margin-left:80px; margin-top: 60px;">작년동기 대비 총 매출액</h4>
                                <div class="box2"></div>  
                                		</td>
                                	</tr>
                                </table>
                                <div style="height:50px; width:50px;"></div>

                            </div>
                            <!-- form 박스 - 1  -->
                            <div  class="page02" role="form" id="result02" style="display: none;">

                            	<table>
                                	<tr>
                                		<td>
                                <h4 style="margin-left:80px;">요일별</h4>
                                <div class="box3"></div>

                                <h4 style="margin-left:80px;">시간대별</h4>
                                <div class="box4"></div>

                                <h4 style="margin-left:80px;">성/연령별</h4>
                                <div class="box5"></div>
                                		</td>

                                		<td>
                                <h4 style="margin-left:80px;">매출 현황</h4>
                                <div class="box6"></div>

                                <h4 style="margin-left:80px;">업종 지수</h4>
                                <div class="box7"></div>
                                		</td>
                                	</tr>
                                </table>
                                <div style="height:50px; width:50px;"></div>
                            </div>
                            <!-- form 박스 - 2  -->
                        
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
        <script type="text/javascript">
            function page01() {
                var rst = document.getElementById("result01");
                if (rst.style.display == 'block') {
                    rst.style.display = 'none';
                }
                var rst = document.getElementById("result02");
                if (rst.style.display == 'none') {
                    rst.style.display = 'block';
                }
            }
            function page02() {
                var rst = document.getElementById("result02");
                if (rst.style.display == 'block') {
                    rst.style.display = 'none';
                }
                var rst = document.getElementById("result01");
                if (rst.style.display == 'none') {
                    rst.style.display = 'block';
                }
            }
        </script>
    </body>
</html>


