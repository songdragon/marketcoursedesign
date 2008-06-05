<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%
//作者：宋肇腾
//时间：2008-06-02
//功能：Ajax实现验证码检验
%>
<%
	String code=request.getParameter("c");
	System.out.println(code);
	if(code.equals(session.getAttribute("rand")))
		out.println("1");
	else out.println("-1");
%>
