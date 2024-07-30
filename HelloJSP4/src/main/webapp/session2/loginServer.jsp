<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// loginForm.jsp
	String userId =request.getParameter("user_id");
	String userPw=request.getParameter("user_pw");
	
	//web.xml 에서 4가지 db 연동 정보 가져오기 
	String MySQLDriver = application.getInitParameter("MySQLDriver");
	String MySQLURL = application.getInitParameter("MySQLURL");
	String MySQLId = application.getInitParameter("MySQLId");
	String MySQLPwd = application.getInitParameter("MySQLPwd");
	
	MemberDAO dao =new MemberDAO(MySQLDriver,MySQLURL, MySQLId,MySQLPwd);
	MemberDTO dto = dao.getMemberDTO(userId, userPw);
	dao.close();
	
	//로그인 성공시 세션에 id,name 정보 저장
	if(dto.getId() != null){
		session.setAttribute("userId", dto.getId());
		session.setAttribute("userName", dto.getName());
		response.sendRedirect("loginForm.jsp");
	}else{
		request.setAttribute("loginErrMsg", "로그인 오류입니다.");
		request.getRequestDispatcher("loginForm.jsp").forward(request, response);
	}
%>