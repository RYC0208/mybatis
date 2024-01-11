<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
<body>
	<jsp:include page="../common/menubar.jsp" />
<h1 align="center" >마이페이지</h1>
	<form action="updateProfile.me" method="post" id="myPage">

			<table align="center">
			<tr>
				<td>* NAME</td>
				<td>
					<input type="text" id="userName" name="user_name" value="${ loginUser.user_name }"readonly >
				</td>
			</tr>
			<tr>
				<td>PWD</td>
				<td>
				<input type="password" name="user_pwd" value="${ loginUser.user_pwd }" required>
				</td>
			</tr>
			<tr>
				<td>EMAIL</td>
				<td><input type="email" name="email" value="${ loginUser.email }"></td>
			</tr>
			<tr>
				<td>PHONE</td>
				<td><input name="phone" placeholder="-포함" value="${ loginUser.phone }"></td>
			</tr>
			<tr>
				<td>ADDRESS</td>
				<td><input name="address" value="${ loginUser.address }"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="수정하기">
				</td>
			</tr>
			<input name="user_id" value="${ loginUser.user_id }" hidden>
			
</form>
<script>
$(document).ready(function() {
  $("#myPage").submit(function(event) {
    event.preventDefault(); // 기본 제출 동작 방지

    // 수정 데이터를 서버로 전송하는 AJAX 요청
    $.ajax({
      url: $(this).attr("action"),
      method: $(this).attr("method"),
      data: $(this).serialize(),
      success: function(response) {
        // 수정이 완료되면 메시지를 표시
        alert("수정이 완료되었습니다.");
      },
      error: function() {
        // 오류가 발생한 경우에 대한 처리
        alert("수정에 실패하였습니다. 다시 시도해주세요.");
      }
    });
  });
});
</script>
</body>
</html>