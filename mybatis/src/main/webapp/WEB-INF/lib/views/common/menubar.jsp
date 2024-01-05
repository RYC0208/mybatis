<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1 align="center">Welcome to A I E</h1>
 <div class="login-area" align="right">
        <form action="" method="post">
            <table>
                <tr>
                    <td>아이디</td>
                    <td ><input name="userId"required></td>
                    <td rowspan="2"><button style="height: 50px;">로그인</button></td>
                </tr>
                <tr>
                    <td>비밀번호</td>
                    <td><input type="password" name="userPwd" required></td>
                </tr>
                <tr>
                    <td colspan="3">
                        <a href="">회원가입</a>
                        <a href="">아이디/비밀번호 찾기</a>
                    </td>
                </tr>
            </table>
        </div>
        <div>
            <table>
                <tr>
                    <td colspan="2">
                        <h3>xxx님 환영합니다</h3>
                    </td>
                </tr>   
                <tr>
                    <td><a href="">마이페이지</a></td>
                    <td><a href="">로그아웃</a></td>
                </tr>         
            </table>
        </form>
    </div>

    <br>

    <div>
        <table >
            <tr>
                <td>HOME</td>
                <td>공지사항</td>
                <td>게시판</td>
                <td>ETC</td>
            </tr>
        </table>
    </div>
</body>
</html>