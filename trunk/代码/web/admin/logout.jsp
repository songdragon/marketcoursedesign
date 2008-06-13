<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%
//HttpSession.this.invalidate();
session.invalidate(); 
response.sendRedirect("../admin/index.jsp");
%>