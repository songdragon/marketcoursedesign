<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%
	String code=request.getParameter("c");
	if(code.equals(session.getAttribute("rand")))
		out.print("1");
	else out.print("0");
%>