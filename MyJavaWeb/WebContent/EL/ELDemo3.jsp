<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<!-- <body> -->
	<!-- 运算符的用法 -->
	<h1>比较运算符</h1>
	<b>
		4 &gt; 3 ${ 4 > 3}<br/>
		4 &lt; 3 ${4 < 3}<br/>
	</b>
	<h2>Empty运算符</h2>
	<b>
	<p>空判断</p>
		empty " " ${empty " "}<br/>
		empty "sometext" ${empty "sometext"}<br/>
	</b>
	
	<% pageContext.setAttribute("color", "red"); %>
	<% request.setAttribute("color", "pink");
		session.setAttribute("color", "green");
		application.setAttribute("color", "yellow");
	%>
	<body bgcolor="${applicationScope.color}">
	<!-- 研究下为什么<body bgcolor="">随便写，网页背景颜色都会改变 -->
	<body bgcolor="iptgg"></body>
	<h1>ELDemo</h1>
	<span>${'${'}"Hello World": }</span>${"Hello World" }<br/>
	<span>${'${'}10} : </span>${10}<br/>
	<span>${'${'}10.5 :}</span>${10.5 }<br/>
	<hr/>
	<p>基础运算</p>
	<hr/>
	<span> 5 + 3 = </span> ${5+3};<br/>
	<span> true && false : </span>${true && false};<br/>
	<p>三目运算符</p>
	<span>${'${'}!A?0:1 }</span>${!A?0:1};<br/>
	<span>${'${'}A?0:1 }</span>${A?0:1 };<br/>
	<span>${'${'}A==true?0:1}</span>${A==true?0:1};<br/>
	<span>${'${'}A=true?0:1}</span>${A = true ?0:1};<br/>
	<span>${'${'}A=(true?0:1) }</span>${A=(true?0:1) };<br/>
	<span>${'${'}A!=0?0:1 }</span>${A!=0?0:1 };<br/>
	<span>${'${'}A==0?0:1 }</span>${A==0?0:1 };<br/>
	<p>变量范围</p>
	<span>A=</span>${A};<br/>
	<p>在页面范围内可以找到</p>
	<span>pageScope.A = </span>${pageScope.A };<br/>
	<span>pageScope["A"] = </span>${pageScope["A"] };<br/>
	<p>到请求、会话和应用程序是找不到的。</p><br/>
	<span>requestScope["A"] = </span>${requestScope["A"] };<br/>
	
</body>
</html>