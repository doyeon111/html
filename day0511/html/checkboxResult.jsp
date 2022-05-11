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
		String name = request.getParameter("name");
		String []food = request.getParameterValues("food");
		String []hobby = request.getParameterValues("hobby");
		String gender = request.getParameter("gender");
		
		
		
		out.print("이름: " + name + "<br>");
		for(String f:food) {
			out.print(f + " ");
		}
		out.print("<br>");
		
		for(String h: hobby) {
			out.print(h + " ");
		}
		out.print("성별: " + gender + "<br>");
		
	%>
</body>
</html>