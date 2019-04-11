<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	
	String userid = request.getParameter("userid");
	String userName = request.getParameter("userName");
	String userPass = request.getParameter("userPass");
	String userPassCheck = request.getParameter("userPassCheck");
	String gender = request.getParameter("gender");
	String userEmail = request.getParameter("userEmail");
	String userSsn1 = request.getParameter("userSsn1");
	String userSsn2 = request.getParameter("userSsn2");
	String userZipCode = request.getParameter("userZipCode");
	String userAddr1 = request.getParameter("userAddr1");
	String userAddr2 = request.getParameter("userAddr2");
	String userPhone = request.getParameter("userPhone");
	String year = request.getParameter("year");
	
	
	
	String[] hobbys = request.getParameterValues("hobby");
	String[] month = request.getParameterValues("month");
	String[] day = request.getParameterValues("day");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	출력1> <%= userid %><br>
	출력2> <%= userName %><br>
	출력3> <%= userPass %><br>
	출력4> <%= userPassCheck %><br>
	출력5> <%= gender %><br>
	출력6> <%= userEmail %><br>
	출력7> <%= userSsn1 %><br>
	출력8> <%= userSsn2 %><br>
	출력9> <%= userZipCode %><br>
	출력10> <%= userAddr1 %><br>
	출력11> <%= userAddr2 %><br>
	출력12> <%= userPhone %><br>
	출력13> <%= year %> 년<br>
	
	<%
		for(String str : month){
	%>
	월 :  <%= str %><br>
	<% 
	} 
	%>
	
	<%
		for(String str : day){
	%>
	일 :  <%= str %><br>
	<% 
	} 
	%>
	
	<%
		for(String str : hobbys){
	%>
	취미 :  <%= str %><br>
	<% 
	} 
	%>
</body>
</html>