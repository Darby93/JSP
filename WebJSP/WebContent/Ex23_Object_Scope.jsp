<%@page import="kr.or.bit.Emp"%>
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
		Tomcat(WAS) 제공하는 기본적인 객체
		1. request(요청 : 클라이언트 정보)    제일 많이사용 중요!
		2. response(응답 : 특정 페이지 이동, 정보 출력(쿠키 쓰기)
		3. application(전역객체 : web.xml 제어, 전역변수)
		4. session(사용자마다 고유하게 부여되는 객체
		5. out
		6. page
		--------------------------------------------
		session 객체
		1. session 변수 활용
			session.setAttribute(변수명,값)
			scope : 모든 페이지
			ex) a.jsp(session.setAttribute("A","ss") -> b.jsp(session.getAttribute("A")) 사용가능
			Life-cycle = sessionId 와 (객체)
		--------------------------------------------
		application 객체
		2. application 변수 : 전역 변수
			내 사이트에 접속한 모든 session 이 제어할 수 있는 변수
			scope : 모든 사용자(session) + 모든 페이지 (java : static)
			Life-cycle = Web server 죽으면 사라짐(재부팅)
		--------------------------------------------
		3. request 객체
			request.setAttribute("변수","값")  변수 설정가능
			scope : 요청 page (client > login.jsp 요청) >> request 객체 생성
			POINT > login.jsp (include, forwoard) 된 페이지 에서도 request 참조 가능....
		--------------------------------------------
-->
<%
		Emp emp = new Emp();
		emp.setEmpno(2000);
		emp.setEname("홍길동");
		
		session.setAttribute("empobj", emp);
		Emp e = (Emp)session.getAttribute("empobj");
		
		out.print(e.getEmpno()+"<br>");
		out.print(e.getEname()+"<br>");
		
		request.setAttribute("who","king");
		String who = request.getAttribute("who")+"";
		out.print(who);
%>
<!--  
<jsp:include page="b.jsp" />

b.jsp에서  리퀘스트 변수 사용가능
request.getAttribute("who");
-->

</body>
</html>