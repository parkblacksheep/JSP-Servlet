<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>로그인 페이지 </h2>
	<form action="idSaveServer.jsp" method ="post">
		아이디 : 	<input type="text" name="user_id" , value="" >
					<input type="checkbox" name="save_check" value="Y">아이디 저장하기 <br>
		패스워드 : <input type="password" name="user_pw"><br>
		<input type="submit" value="로그인하기">
							
	</form>
</body>
</html>