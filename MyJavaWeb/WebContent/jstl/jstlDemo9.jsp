<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.*" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>foreach的使用</title>
</head>
<body>
	<%  //定义数组
		String info[]={"中国","安徽","合肥","天一家园"};
		pageContext.setAttribute("ref", info);
	%>
	<h4>输出全部：
	<c:forEach var="mem" items="${ref}" >${mem}、</c:forEach>
	</h4>
	<h4>输出全部内容(间隔为2)
		<c:forEach var="mem" items="${ref}" step="2">${mem}、</c:forEach>
	</h4>
	<h4>输出前两个：
		<c:forEach var="mem" items="${ref}" begin="0" end="1">${mem}、</c:forEach>
	</h4>
	
	<!-- 使用foreach遍历Map集合 -->
	<%  //定义集合
		Map map =new HashMap();
		map.put("中国", "China");
		map.put("安徽", "Anhui");
		map.put("合肥", "Hefei");
		pageContext.setAttribute("ch", map);
	%>
	使用foreach遍历Map集合:<c:forEach var="dz" items="${ch}">
		<h4>${dz}</h4>
	</c:forEach><br/>
		
		<%  //定义集合
		Map map1 =new HashMap();
		map1.put("中国", "China");
		map1.put("安徽", "Anhui");
		map1.put("合肥", "Hefei");
		pageContext.setAttribute("ch1", map1);
	%>
	使用foreach遍历Map集合:<c:forEach var="dz1" items="${ch1 }">
		<h5>${dz1.key}-->${dz1.value}</h5>
	</c:forEach><br/>

	<!-- 使用foreach遍历List -->
	<%
		List list =new ArrayList();
		list.add("淮北");
		list.add("濉溪");
		list.add("韩村");
		pageContext.setAttribute("ref", list);
	%>
	使用foreach遍历List:<br/>
	<c:forEach var="mem" items="${ref}">
		${mem}<br/>
	</c:forEach>
</body>
</html>