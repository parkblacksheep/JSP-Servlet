<%@page import="kr.co.kosta.jdbc.DBConnPoolTest"%>
<%@page import="kr.co.kosta.jdbc.JDBCConnectTest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JDBC test</title>
	</head>
	
	<body>
	
		<h2>JDBC 테스트1</h2>
		<%
			JDBCConnectTest jdbc1 = new JDBCConnectTest();
			jdbc1.close();
		%>
		
		<h2>JDBC 테스트2</h2>
		<%
			String driver=application.getInitParameter("MySQLDriver");
		//-> getInitParameter에 들어가는 파라미터값은 web.xml에서 얻어오는 param-name값
			String url =application.getInitParameter("MySQLURL");
			String id= application.getInitParameter("MySQLId");
			String pwd=application.getInitParameter("MySQLPwd");
			
			JDBCConnectTest jdbc2 = new JDBCConnectTest(driver,url,id,pwd);
			jdbc2.close();
		%>
		
		<h2>JDBC 테스트 3</h2>
		<%
			JDBCConnectTest jdbc3 = new JDBCConnectTest(application);
			jdbc3.close();
		%>
		<h2 > 커넥션 풀 테스트</h2>
		
		<% 
			DBConnPoolTest pool =new DBConnPoolTest();
			pool.close();
		%>	
	</body>
</html>