<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
		<%
			String loginErr=request.getParameter("loginErr"); 
			if(loginErr !=null) out.print("로그인실패");
		%>		
		
	<body>
		<h2>1. 로그인 폼</h2>
		<form action="../object2/responseLogin.jsp" method="post">
		아이디 : <input type="text" name="user_id"><br>
		패스워드 : <input type="password" name="user_pw"><br>
			<input type="submit" value="로그인"/>
		</form>
	</body>
</html>