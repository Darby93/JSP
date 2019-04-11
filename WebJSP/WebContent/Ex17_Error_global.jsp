<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--  
		404 : file not found
		500 : 서버쪽 코드문제(실행시 0 으로 , null 잘못된 처리
		
		500 예외가 발생하면 ........
-->
<%
		String data = request.getParameter("name").toLowerCase();  //이건 에러남    파라미터값을 안주면 널값이라
		//String data = request.getParameter("name");
%>
전달받은 내용  : <%= data %>
</body>
</html>