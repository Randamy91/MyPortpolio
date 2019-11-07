<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
    <title>회원가입 선택</title>

    <!-- 부트스트랩 -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/Joinus_select.css" />

    <!-- IE8 에서 HTML5 요소와 미디어 쿼리를 위한 HTML5 shim 와 Respond.js -->
    <!-- WARNING: Respond.js 는 당신이 file:// 을 통해 페이지를 볼 때는 동작하지 않습니다. -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
  <!--------------------------- 복사하여 사용 하세요 ---------------------------->
  <!-- 상단 메뉴 바 -->
	<%@ include file="include/header.jsp" %>
  <!--  로그인 Modal -->
	<%@ include file="include/loginmodal.jsp" %>


  <!-- 컨텐츠 -->
  <div class="content">
    <div class="container">

        

        <div class="page-title text-center">
          <h2 class="title">회원가입 선택</h2>
        </div>
        
        <div class="box1">
          <h5>일반 회원가입</h5>
          <img style="height:150px; width:150px;" src="img/general.png"/>
          <button type="button" class="btn btn-primary" onclick="location.href='Joinus_general.jsp'">바로가기</button>
        </div>

        <div class="box2">
          <h5>공인중개사 회원가입</h5>
          <img style="height:150px; width:150px;" src="img/company.png"/>
          <button type="button" class="btn btn-primary" onclick="location.href='Joinus_company.jsp'">바로가기</button>
        </div>

      </div>
      <!-- container END -->
    </div>

    <!-- Footer -->
    <div class="footer"></div>
    <!-- Footer END -->

  

    <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
  </body>

</html>
