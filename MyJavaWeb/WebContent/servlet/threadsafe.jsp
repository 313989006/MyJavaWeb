<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>线程安全问题</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/Servlet/TreadSafe"
		method="post">
		<input name="username" type="text"> <input name="submit"
			type="submit">
	</form>
</body>
</html>