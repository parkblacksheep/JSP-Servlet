<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	
	<body>
		<script type="text/javascript">
			function requestAction(frm, met) {
				if(met ==1)
					frm.method = 'get'
				else if(met ==2)
					frm.method = 'post'		
				frm.submit()
			}
		</script>
		
		<h2>서블릿 수명주기(Life Cycle)</h2>
		<form action="./lifeCycle.do">
			<input type="button" value="Get 방식 요청" onclick = "requestAction(this.form,1)" />
			<input type="button" value="Post 방식 요청" onclick = "requestAction(this.form,2)" />
		</form>
	</body>
</html>