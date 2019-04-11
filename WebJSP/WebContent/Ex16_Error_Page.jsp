<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ page errorPage="/Error/CommonError.jsp" %>
 <!-- 글로벌 보다 강함 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
1. page errorPage : 모든 페이지 상단에 써줘야함.... 귀차나
-->
<%
		String data = request.getParameter("name").toLowerCase();  //이건 에러남    파라미터값을 안주면 널값이라
		//String data = request.getParameter("name");
%>
전달받은 내용  : <%= data %>
</body>
</html>