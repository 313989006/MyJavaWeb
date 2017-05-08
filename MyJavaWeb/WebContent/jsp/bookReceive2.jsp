<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@page import="bean.bookBean.*"%>
<% 
		request.setCharacterEncoding("UTF-8");
		//response.setCharacterEncoding("UTF-8");
	%>
    <jsp:useBean id="book" class="bean.bookBean" scope="page">
    <jsp:setProperty name="book" property="*"/>
    	<%-- <jsp:setProperty name="book" property="bookName"/>
    	<jsp:setProperty name="book" property="bookNum"/> --%>
    	<%-- <jsp:setProperty name="book" property="bookName" value="QQQQQQ"/>
    	<jsp:setProperty name="book" property="bookNum" value="666666"/> --%>
    </jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>bookReceive2</title>
</head>
<body>
	<p>订购图书清单</p>
	<hr>
	
	<span>书名 : </span><%= book.getbookName() %>
	<br>
	<span>数量 : </span><%= book.getbookNum() %>
	<br>

</body>
</html>