<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<h3>Ex14_include_param_main.jsp : request 객체 공유</h3>
	<fieldset>
		<legend>include</legend>
		request : <%= request.getParameter("type") %><br>
		request : <%= request.getParameter("userid") %><br>
	</fieldset>
	<h3>Main 페이지 param 액션태그 값 읽기</h3>
	<fieldset>
		<legend>include(param 액션 태그)</legend>
		<%
			String aa = request.getParameter("aaaa");
			String bb = request.getParameter("bbbb");
			out.print("param 설정값 : " + bb + "<br>");
			
			if(aa.equals("ccc")){
				out.print("<i>당신이 요청한 제품은 : " + aa + "</i>");
			} else {
				out.print("<i>당신이 요청한 제품은 품절입니다</i>");
			}
		%>
	</fieldset>
