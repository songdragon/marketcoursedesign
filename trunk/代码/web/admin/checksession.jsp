<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%
	if(session.getAttribute("admin")==null)
		response.sendRedirect("index.jsp");
	else{
		if((session.getAttribute("actor"))!=null)
		{
		if(session.getAttribute("actor").equals("0"))
			response.sendRedirect("main1.jsp");
		else response.sendRedirect("main2.jsp");
		}
		else
			response.sendRedirect("index.jsp");
	}
%>