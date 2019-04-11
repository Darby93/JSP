<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <!--
 StringBuffer url = request.getRequestURL();    // URL : 전체주소 (프로토콜 + IP + 포트 + 상세경로)
 String uri = request.getRequestURI();            // URI : 프로젝트 이하 경로 (CP + SP)
 String cp = request.getContextPath();           // CP : 프로젝트 명
 String sp = request.getServletPath();            // SP : 패키지 + 파일명
 
 System.out.println("URL : " + url);
 System.out.println("URI  : " + uri);
 System.out.println("CP   : " + cp);
 System.out.println("SP   : " + sp);
 
 -----------------------------------------------------------------

 URL : http://localhost:8080/TestBoard/JSPBoard/created.jsp
 URI  : /TestBoard/JSPBoard/created.jsp
 CP   : /TestBoard
 SP   : /JSPBoard/created.jsp

-----------------------------------------------------------------

1.  웹 브라우져가 가지고 있는 경로 (가상경로)
http://localhost:8090/WebJSP/Ex11_WebApp_RealPath.jsp

2. Ex11_WebApp_RealPath.jsp 파일의 실경로 (물리적) 경로는?
C:\FrontendBackend\WebJSP\JSPLab\WebJSP\WebContent\Ex11_WebApp_RealPath.jsp

3. 웹(가상경로) -> 실 경로(물리적경로) 반환해주는 객체
	request
	application
 -->   
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WebApp_RealPath</title>
</head>
<body>
<%
	String resourcepath = "/download/note.txt";
	out.print(resourcepath  + "<br>");
	
	String contextpath = application.getRealPath(request.getContextPath());
	String realpath = application.getRealPath(resourcepath);
	
	out.print("request.getContextPath() : " + request.getContextPath() + "<hr>");
	out.print("contextPath : " + contextpath + "<hr>");
	out.print("realpath : " + realpath + "<hr>");
	
	/* 
	request.getContextPath() : /WebJSP
	contextPath : C:\FrontendBackend\WebJSP\JSPLab\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\WebJSP\WebJSP
	realpath : C:\FrontendBackend\WebJSP\JSPLab\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\WebJSP\download\note.txt 
	*/
%>
</body>
</html>