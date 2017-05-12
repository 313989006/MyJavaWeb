<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="bean.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	pageContext.setAttribute("addr","hefei");
	pageContext.setAttribute("addr","huaibei");
%>
	<span>书名--${'${'}book.bookName}：</span>${book.bookName}<br/>
	<span>数量--${'${'}book.bookNum }：</span>${book.bookNum}<br/>
	<span>书名--${'${'}book['bookName']}：</span>${book['bookName']}<br/>
	<span>数量--${'${'}book[ 'bookNum ']}：</span>${book['bookNum']}<br/>
	<span>调用toString方法：</span>${book.toString()}
	<hr/>
	<%-- <span>${'${'}pageScope.addr}</span>${pageScope.addrr}<br/> --%>	<!-- 这样写错误！ -->
	<span>${'${'}pageScope['addr']}</span>${pageScope['addr']}<br/>
	<span>${'${'}pageScope.addr}</span>${pageScope.addr}<br/>
	<span>${'${'}pageScope['addr']}</span>${pageScope['addr']}<br/>

</body>
</html>