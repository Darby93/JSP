<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="empbean" class="kr.or.bit.Emp" scope="request"></jsp:useBean>
<!--
	Emp empbean = new Emp();
	request.setAttribute("empbean",empbean); 
 -->

<%
	empbean.setEmpno(3000);
	empbean.setEname("kim");
	
/* 
	Emp empbean = new Emp();
	empbean.setEmpno(2000);
	empbean.setEname("kim");
	request.setAttribute("empbean", empbean);
	
	[ scope ]	
	scope="page"
	default (page)
	
	scope="request"
	request.setAttribute("empbean",empbean);
	현재 페이지 (include, forward 된 페이지 공유)
	
	scope="session"
	session.setAttribute("empbean",empbean); 
	같은 session을 가지는 모든 페이지
	
	scope="application"
	application.setAttribute("empbean",empbean); 
	Web APP안에 모든 페이지에 참조가능
 */
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>USE BEAN</title>
</head>
<body>
<!-- MVC 다시보기 DTO DAO -->
	<jsp:forward page="Ex25_UseBean_Forward.jsp"></jsp:forward>
</body>
</html>