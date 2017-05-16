<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Servlet</title>
</head>
<body>
	<h2>请输入用户信息:</h2>
	<br/>
	<form method="get" action="<%=request.getContextPath() %>/Servlet/MyNewLoginServlet">
	<span>用户名 : </span><input type="text" name="username"><br/>
	<span>密码: </span><input type="password" name="password">
	<p>
		<input type="submit" value="提交"><input type="reset" value="重置"><br/>
	</form>
</body>
</html>