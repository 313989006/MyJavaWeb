<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 方式一:
	<c:import url="ImportDemo.jsp"></c:import> --%>
	<%-- 方式二:
	<c:import url="ImportDemo.jsp" var="name" scope="page"></c:import>
	${name}  <!-- 有var属性时需要单独使用EL表达式输出 --> --%>
	<%-- <c:import url="http://www.baidu.com" var="baidu" scope="application" charEncoding="UTF-8"></c:import>
	${baidu} --%>  <!-- 直接跳转到百度 -->
	
	<%-- <jsp:useBean id="date" class="java.util.Date"></jsp:useBean> --%>
	
</body>
</html>