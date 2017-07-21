<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<ul>
		<li><a href="<%= request.getContextPath() %>/user/register.jsp">회원가입</a>
		<li><a href="login.jsp">로그인</a>
		<li><a href="<%= request.getContextPath() %>/player.kdata">회원리스트</a>
	</ul>
</body>
</html>