<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form id="myform">
        <div>
            <label for='username'>사용자이름</label>
            <input type='text' name='username' id='username' placeholder='한글만 입력' />
        </div>
        <div>
            <label for='userpass'>나이</label>
            <input type='text' name='age' id='age' placeholder='숫자만 입력' />
        </div>
        <div>
            <label for='userpass'>아이디</label>
            <input type='text' name='userid' id='userid' placeholder='영어+숫자,최대20자' />
        </div>
        <button type="submit">입력값 확인</button>
    </form>
    
    <script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script type="text/javascript">
        $(function() {
            /** 폼의 데이터 전송 이벤트 */
            $("#myform").submit(function(e) {
                // 폼의 기본 동작 방지 --> 데이터를 전송하지 않는다.(새로고침 방지)
                e.preventDefault();

                // 이름의 한글 입력 검사
                var pattern1 = /^[ㄱ-ㅎ가-힣]*$/;
                if (!pattern1.test($('#username').val())) {
                    alert('이름은 한글만 입력 가능합니다.');
                    $('#username').val('');
                    $('#username').focus();
                    return false;
                }

                // 나이의 숫자 입력 검사
                var pattern2 = /^[0-9]*$/;
                if (!pattern2.test($('#age').val())) {
                    alert('나이는 숫자만 입력 가능합니다.');
                    $('#age').val('');
                    $('#age').focus();
                    return false;
                }

                // 아이디의 영문+숫자 검사
                var pattern3 = /^[a-zA-Z0-9]*$/;
                if (!pattern3.test($('#userid').val())) {
                    alert('아이디는 영어+숫자 조합으로만 입력 가능합니다.');
                    $('#userid').val('');
                    $('#userid').focus();
                    return false;
                }

                // 아이디의 최대 글자 수 검사
                if ($('#userid').val().length > 20) {
                    alert('아이디는 최대 20자 까지만 입력 가능합니다.');
                    $('#userid').val('');
                    $('#userid').focus();
                    return false;
                }

                alert("검사완료!!");
            });
        });
    </script>
</body>
</html>