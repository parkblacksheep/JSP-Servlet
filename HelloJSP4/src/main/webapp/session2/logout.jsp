<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	//세션에 저장된 값 삭제
	session.removeAttribute("userId");
	session.removeAttribute("userName");
	
	//세션 속성 모두 삭제
	session.invalidate();
	
	//페이지 이동
	response.sendRedirect("loginForm.jsp");
%>