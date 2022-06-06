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
	String date = request.getParameter("date");
	String time = request.getParameter("time");
	String place = request.getParameter("place");
	
%>

생일 :<%=date %><br>
파티시간: <%=time %><br>
파티장소: <%=place %><br>
<hr>
</body>
</html> 
