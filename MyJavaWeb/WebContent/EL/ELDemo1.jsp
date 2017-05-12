<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>EL例1</title>
</head>
<body bgcolor="#ffff">
	<h1>启用表达式语言</h1>
	<form method="post" action="expressionexample.jsp">
		<b>${"FistName:"}<input type="text" value="${'请输入您的名字'}"/></b>
		<b>${"FistName:"}<input type="text" value="${'请输入您的姓氏'}"/></b>
		<input type="submit" name="submit" value="${'提交表单'}">
		<input type="reset" value="${'重置表单'}">
	</form>
</body>
</html>