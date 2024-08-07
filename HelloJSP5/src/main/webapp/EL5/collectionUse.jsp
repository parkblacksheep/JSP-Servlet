<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="kr.co.kosta.el.PersonDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<Object> list = new ArrayList<>();
	list.add("홍길동 ");
	list.add(new PersonDTO("이방원",70));
	
	pageContext.setAttribute("person", list);
	
	Map<String, String >map =new HashMap<>();
	map.put("세종","훈민정음");
	map.put("태종","왕권강화");
	map.put("moon","국방강화");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ul>
		<li>0번째 요소 :${person[0]} </li>
		<li>1번째 요소 :${person[1].name }, ${person[1].age}</li>
	</ul>
	
	<ul>
	<li>0번째 요소: ${king["세종"]}, ${king['세종']}, ${king.moon}</li>
	<li>1번째 요소: ${king["태종"]}, ${king['태종']}, ${king.moon}</li>
	</ul>
</body>
</html>