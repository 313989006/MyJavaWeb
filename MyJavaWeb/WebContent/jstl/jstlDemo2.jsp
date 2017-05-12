<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>if示例</title>
</head>
<body>
	<!-- jstl中if条件判断的用法 -->
	<form method="post">
		<span>请输入百分制成绩：</span><input type="text" name="score"/><br/>
		<input type="submit" value="提交"/>&nbsp;&nbsp;
		<input type="reset" value="重置"/>
	</form>
	<c:set var="color" value="green"></c:set>
	<c:set var="n" value="${param.score + .0}"></c:set>
	<c:if test="${n>= 60}">
		<c:set var="color" value="pink"></c:set>
	</c:if>
	<font size="10" color="${color}">
		<c:choose>
		<c:when test="${n>100 && n<0}">
				<span>请输入正确的成绩</span>
			</c:when>
			<c:when test="${n>=90}">
				<span>成绩优异</span>
			</c:when>
			<c:when test="${n>=80 && n<90 }">
				<span>成绩良好</span>
			</c:when>
			<c:when test="${n>=70 && n<80 }">
				<span>成绩中等</span>
			</c:when>
			<c:when test="${n>=60 && n<70 }">
				<span>成绩一般</span>
			</c:when>
			<c:when test="${n<60 }">
				<span>不及格</span>
			</c:when>
		</c:choose>
	</font>
</body>
</html>