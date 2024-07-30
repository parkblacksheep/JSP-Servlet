<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("pageScope","페이지 영역");
	request.setAttribute("requestScope","리퀘스트 영역");
	session.setAttribute("sessionScope","세션 영역");
	application.setAttribute("applicationScope","어플리케이션 영역");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>