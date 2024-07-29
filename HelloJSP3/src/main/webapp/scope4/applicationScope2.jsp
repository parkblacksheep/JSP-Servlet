<%@page import="java.util.HashMap"%>
<%@page import="kr.co.kosta.common.PersonDTO"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>application 영역 속성 읽기</h2>
	<%
		Map<String,PersonDTO> map=(Map<String,PersonDTO>)application.getAttribute("map");
	%>
</body>
</html>