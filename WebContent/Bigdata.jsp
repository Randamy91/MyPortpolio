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
        <link rel="stylesheet" type="text/css" href="css/Bigdata.css">
        
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
        <nav
            class="navbar menu_navbar bg-white">
            <!--<div class="navbar-header menu_header">-->
            <a class="navbar-brand logo" href="Main.jsp">
                <img alt="Brand" src="img/main_logo.jpg" width="65px" height="40px">
            </a>
            <p class="navbar-text navbar-left">
                <a href="Main.jsp" class="navbar-link" style="text-decoration:none">상가</a>
            </p>
            <p class="navbar-text navbar-left">
                <a href="Bigdata.jsp" class="navbar-link" style="text-decoration:none">상권분석</a>
            </p>
            <p class="navbar-text navbar-right">
                <a href="Joinus_select" class="navbar-link" style="text-decoration:none">회원가입</a>
            </p>
            <p class="navbar-text navbar-right">
                <a href="#myModal" data-toggle="modal" class="navbar-link" style="text-decoration:none">로그인</a>
            </p>
        </nav>
        <!--  로그인 Modal -->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog mymodal-size">
                <div class="modal-content mymodal-content">
                    <div class="modal-body">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
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
        <!-- 로그인 modal end -->
        <!-- 컨텐츠 -->
        <div class="content">
            <div class="body-content">
                <div class="main-space">

                		
                		<div class="commercialArea">
                		<hr >	
                        <ul>
                        	<li> <h4 type="text" onclick="page02()">상권 개요</h4> </li>
                        	<li> <h4 type="text" onclick="page01()">고객 분석 및 업종 분석</h4> </li>
                        </ul>
                        <hr size="10px">
                        </div>
                     

                    <div class="container">

                        <div class="main-content">
                        <div name="filter" class="page01" role="form" method="post" action="#" id="result01" style="display: block;">
                                
                                <table>
                                	<tr>
                                <h4 style="margin-left:80px;">상권현황</h4>
                                <div class="box1"></div>
                                	</tr>
                                	<tr>
                                <h4 style="margin-left:80px; margin-top: 60px;">작년동기 대비 총 매출액</h4>
                                <div class="box2"></div>  
                                	</tr>
                                </table>

                            </div>
                            <!-- form 박스 - 1  -->
                            <div name="filter" class="page02" role="form" method="post" action="#" id="result02" style="display: none;">

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


