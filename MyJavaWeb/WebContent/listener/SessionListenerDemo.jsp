<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Session Listener Demo</title>
</head>
<body>
	<h3>Session Listener Demo1</h3>
	<%
		getServletContext().setAttribute("username", "zhangfei");
		application.setAttribute("username", "wangmang");
		/* session.setAttribute("id", "6574");
		session.setAttribute("id", "88888888");
		session.removeAttribute("id"); */
	%>
	<a href="<%= request.getContextPath() %>/Servlet/Redirect">手动删除会话窗口</a>
</body>
</html>