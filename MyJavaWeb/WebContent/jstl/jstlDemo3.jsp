<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>forEach使用实例</title>
</head>
<body>
	<!-- jstl中foreach循环输出的用法 -->
	<%
		String[] books={"Java","Web","C#"};
		request.setAttribute("book", books);
	%>
	<span>全部书目:</span><br/>
	<c:forEach var="bookName" items="${book}">
		${bookName};<br/>
	</c:forEach>
	<span>显示从10到15的整数:</span><br/>
	<c:forEach var="i" begin="10" end="15" step="1">
		${i};&nbsp;
	</c:forEach>
</body>
</html>