<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新书展示页</title>
</head>
<body>
	<p align="center" >新书展示</p>
	<hr>
	<table border="1" align="center">
		<tr>
			<td>
			<jsp:include page="../html/NewBook1.html" flush="true"></jsp:include>
			<jsp:param value="" name=""/>
			</td>
		</tr>
		<tr>
			<td>
			<jsp:include page="../html/NewBook2.html" flush="true"></jsp:include>
			</td>
		</tr>
		<tr>
			<td>
			<jsp:include page="../html/NewBook3.html" flush="true"></jsp:include>
			</td>
		</tr>
		<tr>
			<td>
			<jsp:include page="../html/NewBook4.html" flush="true"></jsp:include>
			</td>
		</tr>
	</table>

</body>
</html>