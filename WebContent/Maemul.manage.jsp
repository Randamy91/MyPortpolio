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

<link rel="stylesheet" href="bootstrap/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="css/Login.css" />
<link rel="stylesheet" type="text/css" href="./css/Maemul.manage.css">

<style type="text/css">
	body, html {
		height: 100%;
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
	min-height: 1000px;
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


</head>
<body>

<!--------------------------- 복사하여 사용 하세요 ---------------------------->
<!-- 상단 메뉴 바 -->
<%@ include file="./include/loginHeader.jsp" %>
<!-- 상단 메뉴 바  -->

<!-- 로그인모달 -->
<!-- 로그인모달 end -->


<!-- 컨텐츠 -->
<div class="content">
    <div class="container">
        <div class="title">
            <span class="titlt-item">매물관리</span>
        </div>
        <div class="Title_Ex">
            <span class="title-ex-item">등록한 매물에 대한 상태 변경및 수정, 삭제가 가능합니다.</span>
        </div>
        <div class="select">
            <form action="#" method="get">
                <div class="maemul-search input-group input-group-md">
                    <input type="search" name="search" id="search" class="form-control search" placeholder="매물번호, 제목 검색">
                    <span class="input-group-btn">
                        <button type="submit" class="btn"><i class="fas fa-angle-double-left"></i></button>
                    </span>
                </div>
            </form>
        </div>
<div class="main">
    <div class="main-item">
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>매물정보</th>
                    <th>등록정보</th>
                </tr>
                <tbody>
                    <tr>
                        <td>
                            <a href="#">
                            	<div class="maemul" id="maemul">
                                	<div class="maemul-image">
                                        <span><img src="./img/office.jpg"></span>
                                        <span class="mark" style="display: none;">거래완료</span>
                                    </div>
                                    <div class="maemul-detailed">
                                    	<div class="maemul-type">
                                            <span class="badge badge-type">월</span>
                                            <span class="price">
                                                <strong>70</strong>
                                            </span>
                                            <span class="price-item">만원</span>
                                            <span class="Gprice badge badge-gun">권</span>
                                            <span class="Gprice-item">
                                                <strong>없음</strong>
                                            </span>
                                        </div>
                                        <div class="maemul-simple">
                                            <span class="maemul-top">개별냉난방</span>
                                            <span class="maemul-top">30층</span>
                                            <span class="maemul-top">1층</span>
                                            <span class="maemul-top">39.7m</span>
                                            <span class="maemul-top">관리비
                                                <span class="s_price">123</span>만</span>
                                        </div>
                                        <!-- maemul-simple end -->
                                        <div class="maemul-address">
                                            <div class="address-info">
                                                <span class="info-head">주소정보:</span>
                                                <span class="address-info-item">경기 부천시 원미구 고강동 220-12</span>
                                            </div>
                                            <div class="address-road">
                                                <span class="road-head">[도로명주소]:</span>
                                                <span class="address-road-item">경기 부천시 가로공원로 11(고강동)</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="function">
                                        <button class="btn btn-primary">
                                            <a href="./Register_change.jsp">수정</a>
                                        </button>
                                        <button class="btn btn-primary delete">
                                            <a href="#">삭제</a>
                                        </button>
                                        <button class="btn btn-primary success">
                                            <a href="#">거래완료</a>
                                        </button>
                                    </div>   
                                </div> <!-- 매물 end --> 
                            </a>
                        </td>
                        <td>
	                        <div class="register-info">
	                         	<div class="interest">
                                    <span class="interest-item">관심수:</span>
                                    <span class="interest-count">2</span>
                                </div>
                                <div class="maemul-number">
                                    <span class="maemul-number-item">매물번호:</span>
                                    <span class="number-position">12342123</span>
                                </div>
                                <div class="register">
                                    <span class="register-item">등록일:</span>
                                    <span class="register-position">2019-12-02</span>
                                </div>   
	                        </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <a href="#">
                            	<div class="maemul" id="maemul">
                                	<div class="maemul-image">
                                        <span><img src="./img/office.jpg"></span>
                                        <span class="mark" style="display: none;">거래완료</span>
                                    </div>
                                    <div class="maemul-detailed">
                                    	<div class="maemul-type">
                                            <span class="badge badge-type">월</span>
                                            <span class="price">
                                                <strong>70</strong>
                                            </span>
                                            <span class="price-item">만원</span>
                                            <span class="Gprice badge badge-gun">권</span>
                                            <span class="Gprice-item">
                                                <strong>없음</strong>
                                            </span>
                                        </div>
                                        <div class="maemul-simple">
                                            <span class="maemul-top">개별냉난방</span>
                                            <span class="maemul-top">30층</span>
                                            <span class="maemul-top">1층</span>
                                            <span class="maemul-top">39.7m</span>
                                            <span class="maemul-top">관리비
                                                <span class="s_price">123</span>만</span>
                                        </div>
                                        <!-- maemul-simple end -->
                                        <div class="maemul-address">
                                            <div class="address-info">
                                                <span class="info-head">주소정보:</span>
                                                <span class="address-info-item">경기 부천시 원미구 고강동 220-12</span>
                                            </div>
                                            <div class="address-road">
                                                <span class="road-head">[도로명주소]:</span>
                                                <span class="address-road-item">경기 부천시 가로공원로 11(고강동)</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="function">
                                        <button class="btn btn-primary">
                                            <a href="./Register_change.jsp">수정</a>
                                        </button>
                                        <button class="btn btn-primary delete">
                                            <a href="#">삭제</a>
                                        </button>
                                        <button class="btn btn-primary success">
                                            <a href="#">거래완료</a>
                                        </button>
                                    </div>   
                                </div> <!-- 매물 end --> 
                            </a>
                        </td>
                        <td>
	                        <div class="register-info">
	                         	<div class="interest">
                                    <span class="interest-item">관심수:</span>
                                    <span class="interest-count">2</span>
                                </div>
                                <div class="maemul-number">
                                    <span class="maemul-number-item">매물번호:</span>
                                    <span class="number-position">12342123</span>
                                </div>
                                <div class="register">
                                    <span class="register-item">등록일:</span>
                                    <span class="register-position">2019-12-02</span>
                                </div>   
	                        </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <a href="#">
                            	<div class="maemul" id="maemul">
                                	<div class="maemul-image">
                                        <span><img src="./img/office.jpg"></span>
                                        <span class="mark" style="display: none;">거래완료</span>
                                    </div>
                                    <div class="maemul-detailed">
                                    	<div class="maemul-type">
                                            <span class="badge badge-type">월</span>
                                            <span class="price">
                                                <strong>70</strong>
                                            </span>
                                            <span class="price-item">만원</span>
                                            <span class="Gprice badge badge-gun">권</span>
                                            <span class="Gprice-item">
                                                <strong>없음</strong>
                                            </span>
                                        </div>
                                        <div class="maemul-simple">
                                            <span class="maemul-top">개별냉난방</span>
                                            <span class="maemul-top">30층</span>
                                            <span class="maemul-top">1층</span>
                                            <span class="maemul-top">39.7m</span>
                                            <span class="maemul-top">관리비
                                                <span class="s_price">123</span>만</span>
                                        </div>
                                        <!-- maemul-simple end -->
                                        <div class="maemul-address">
                                            <div class="address-info">
                                                <span class="info-head">주소정보:</span>
                                                <span class="address-info-item">경기 부천시 원미구 고강동 220-12</span>
                                            </div>
                                            <div class="address-road">
                                                <span class="road-head">[도로명주소]:</span>
                                                <span class="address-road-item">경기 부천시 가로공원로 11(고강동)</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="function">
                                        <button class="btn btn-primary">
                                            <a href="./Register_change.jsp">수정</a>
                                        </button>
                                        <button class="btn btn-primary delete">
                                            <a href="#">삭제</a>
                                        </button>
                                        <button class="btn btn-primary success">
                                            <a href="#">거래완료</a>
                                        </button>
                                    </div>   
                                </div> <!-- 매물 end --> 
                            </a>
                        </td>
                        <td>
	                        <div class="register-info">
	                         	<div class="interest">
                                    <span class="interest-item">관심수:</span>
                                    <span class="interest-count">2</span>
                                </div>
                                <div class="maemul-number">
                                    <span class="maemul-number-item">매물번호:</span>
                                    <span class="number-position">12342123</span>
                                </div>
                                <div class="register">
                                    <span class="register-item">등록일:</span>
                                    <span class="register-position">2019-12-02</span>
                                </div>   
	                        </div>
                        </td>
                    </tr>

                    
                </tbody>
            </thead>
        </table>
    </div>
</div>
    <div class="page-number">
        <ul class="pagination pagination-lg">
            <li class="disabled"><a href="#">&laquo;</a></li>
            <li><span>1<span class="sr-only">(current)</span></span></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">4</a></li>
            <li><a href="#">5</a></li>
            <li><a href="#">&raquo;</a></li>
        </ul>
    </div>
</div>
<!-- container -->
<!-- Footer -->
<div class="footer">

</div>
<!-- Footer END -->
</div>
<!-- 컨텐츠  END -->


<!--------------------------- 복사하여 사용 하세요  END---------------------------->


	<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
	<script defer src="https://use.fontawesome.com/releases/v5.0.8/js/solid.js" integrity="sha384-+Ga2s7YBbhOD6nie0DzrZpJes+b2K1xkpKxTFFcx59QmVPaSA8c7pycsNaFwUK6l" crossorigin="anonymous"></script>
	<script defer src="https://use.fontawesome.com/releases/v5.0.8/js/fontawesome.js" integrity="sha384-7ox8Q2yzO/uWircfojVuCQOZl+ZZBg2D2J5nkpLqzH1HY0C1dHlTKIbpRz/LG23c" crossorigin="anonymous"></script>
	<script type="text/javascript">
		function sakje(e) {
			$(".delete").click(function(e) {
				if(confirm("정말 삭제하시겠습니까?")) {
					// location.href("Test.html");
					$(this).parents("tr").css("display","none");
				} else {					 
					return false;
				}
			});
		}
		function complete(e) {
			$(".success").click(function(e) {			
				var resylt = $(this).parents("#maemul").find(".mark").css("display", "");	
				/** hide(), show() 로 변경 해야할수 있음 */
			});
		}
		$(function() {		
			sakje();
			complete();
		});

		
	</script>
	<!--<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=98a9ba7245ae5c0929fafa188dbfaf9a&libraries=libraries=services,clusterer,drawing"></script> -->
</body>
</html>