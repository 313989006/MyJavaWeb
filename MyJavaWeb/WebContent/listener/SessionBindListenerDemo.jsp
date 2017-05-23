    <%@page import="bean.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="listenerTest.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Bind Listener Demo</title>
</head>
<body>
	<h1>向Session中保存bookBean对象</h1>
	<%
		bookBean book =new bookBean("平凡的世界",65);
		session.setAttribute("大话西游", book);
		
		SessionBindDemo sbd =new SessionBindDemo("Linux系统运维");
		session.setAttribute("sbd", sbd);
	
	%>
</body>
</html>