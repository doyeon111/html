<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String countries = request.getParameter("countries");
	String what = request.getParameter("what");
%>

나라: <%=countries %><br>
보고싶은 것: <%=what %>
</body>
</html>