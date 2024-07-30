<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("pageScope","페이지 영역");
	request.setAttribute("requestScope","리퀘스트 영역");
	session.setAttribute("sessionScope","세션 영역");
	application.setAttribute("applicationScope","어플리케이션 영역");
	
	pageContext.setAttribute("elscopeVlaue","페이지 영역");
	request.setAttribute("elscopeVlaue","리퀘스트 영역");
	session.setAttribute("elscopeVlaue","세션 영역");
	application.setAttribute("elscopeVlaue","어플리케이션 영역");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>4가지 영역에 저장된 속성 읽기 </h3>
	<ul>
		<li>페이지 영역: ${pageScope.pageScope}</li>
		<li>리퀘스트 영역: ${requestScope.requestScope}</li>
		<li>세션 영역: ${sessionScope.sessionScope}</li>
		<li>어플리케이션 영역: ${applicationScope.applicationScope}</li>
		
		<br>
		<li>페이지 영역: ${pageScope}</li>
		<li>리퀘스트 영역: ${requestScope}</li>
		<li>세션 영역: ${sessionScope}</li>
		<li>어플리케이션 영역: ${applicationScope}</li>
		<br>
		
		<li>페이지 영역: ${pageScope}</li>
		<li>리퀘스트 영역: ${requestScope}</li>
		<li>세션 영역: ${sessionScope}</li>
		<li>어플리케이션 영역: ${applicationScope}</li>
		<br>
		
		<jsp:forward page="elImplicitObjForward.jsp"></jsp:forward>
	</ul>
</body>
</html>