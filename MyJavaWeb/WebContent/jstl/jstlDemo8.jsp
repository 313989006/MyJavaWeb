<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@ page import="bean.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>target test</title>
</head>
<body>
	<!-- target属性的测试 -->
	<%-- <%
		bookBean bb =new bookBean();
		request.setAttribute("JavaWeb", bb);
	%>
	<!-- 通常target属性里都是用EL表达式得到对象 -->
	<c:set target="${JavaWeb}" property="bookName" value="Hello Hefei"></c:set>
	<!-- target直接给属性值，是不行的 -->
	<c:set target="JavaWeb" property="bookName" value="Hello Hefei"></c:set>
	<h3>属性内容是：${JavaWeb.bookName}</h3> --%>
	
	<!-- catch异常处理的使用 -->
	<c:catch var="errmsg">
		<% //在此处产生异常
			int result = 10/0;
		%>
	</c:catch>
	<h4>异常信息:${errmsg}</h4>
</body>
</html>