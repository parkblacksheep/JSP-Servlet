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
	 
	 <%
	 	if(session.getAttribute("userId")==null)	{
	 		//로그 아웃 상태 
	 		%>
	 <script type="text/javascript">
	 	function validateForm(form) {
	 		if(!form.user_id.value){
	 			alert("아이디를 입력하세요.")
	 			return false;
	 		}
	 		if(!form.user_pw.value){
	 			alert("패스워드를 입력하세요.")
	 			return false;
	 		}
	 	}
	 </script>
	 
	 <form action="loginServer.jsp" method = "post" name="loginForm" onsubmit="return validateForm(this)">
		아이디 : 	<input type="text" name="user_id"  /><br>
					<!-- <input type="checkbox" name="save_check" value="Y">아이디 저장하기 <br> -->
		패스워드 : <input type="password" name="user_pw"><br>
		<input type="submit" value="로그인하기">
	</form>
	<% }else{
	 		//로그인 된 상태
	%>
		<%=session.getAttribute("userName") %>님,로그인  되었습니다. 환영합니다.
		<a href="Logout.jsp">로그아웃</a>	
	<%
	 		
 		}
	 %>
	
	 <span style="color: red; font-size:1.2em;">
	 	<%=request.getAttribute("loginErrMsg") ==null ? "": request.getAttribute("loginErrMsg")%>
	 </span>
	 
	
</body>
</html>