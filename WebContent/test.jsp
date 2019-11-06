<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.css" />
<style type="text/css">
	.star {
  font-size: 25px;
	color:gold;
}

.heart {
  font-size: 25px;
	color:red;
}

</style>
</head>
<body>
	<div>
  <span class="star glyphicon glyphicon-star-empty"></span>
</div>

<br/>

<div>
  <i class="heart fa fa-heart-o"></i>
</div>

<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script>
$(".star.glyphicon").click(function() {
	  $(this).toggleClass("glyphicon-star glyphicon-star-empty");
	});

	$(".heart.fa").click(function() {
	  $(this).toggleClass("fa-heart fa-heart-o");
	});


</script>
</body>
</html>