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
			<script>
			</script>
</form>
</body>
</html>