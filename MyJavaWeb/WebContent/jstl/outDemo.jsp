<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		pageContext.setAttribute("神经", "病");
	%>
	<h3>属性存在 :<c:out value="${神经}"/></h3>
	<h3>属性不存在 :<c:out value="${好人}" default="没有此内容"/></h3>
</body>
</html>