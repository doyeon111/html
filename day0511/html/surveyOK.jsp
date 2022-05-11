<%@page import="java.util.Arrays"%>
<%@page import="com.sist.dao.SurveyDAO"%>
<%@page import="com.sist.vo.SurveyVO"%>
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
	int grade = Integer.parseInt(request.getParameter("grade"));
	String gender = request.getParameter("gender");
	String interests = request.getParameter("interests");
	String []course = request.getParameterValues("course");
	String leave = request.getParameter("leave");
	
	SurveyVO s = new SurveyVO();
	s.setGrade(grade);
	s.setGender(gender);
	s.setInterests(interests);
	s.setCourse(Arrays.toString(course));
	s.setLeave(leave);
	
	SurveyDAO dao = new SurveyDAO();
	int re = dao.insertSurvey(s);
	
	if(re == 1) {
		out.println("등록하였습니다.");
	} else {
		out.println("등록에 실패하였습니다.");
	}
%>
</body>
</html>