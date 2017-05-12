<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="bean.bookBean"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jstl中catch捕捉异常</title>
</head>
<body>
	<!-- jstl中catch捕捉异常的用法 -->
	<jsp:useBean id="bookBean" class="bean.bookBean" scope="page"></jsp:useBean>
	<c:catch var="error">
		<c:set var="count" value="${param.c+1 }" scope="page"></c:set>
			<span>删除之前，变量count的值为：</span><c:out value="${count}"></c:out><br/>
		<c:remove var="count" scope="page"/>
			<span>删除之后，变量count的值为 ：</span><c:out value="${count}"></c:out><br/>
	</c:catch>
	<c:set value="xiaokang" target="${bookBean}" property="bookName"></c:set>
		<span>bookBean.bookname:</span><c:out value="${bookBean.bookName}"></c:out>
	<c:out value="${error}"></c:out>
</body>
</html>