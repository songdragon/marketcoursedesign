<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%
//作者：宋肇腾
//时间：2008-06-05
//功能：Ajax实现验证邮箱可用
%>
<%@ page import="dbconnection.*;"%>
<% 
	DBConnection con=new DBConnection();
	String email=request.getParameter("email");
	String sql="select E_mail from customer where E_mail='"+email.trim()+"'";
	con.excuteQuery(sql,0);
	if(con.rows()==0)
		out.println("100");
	else
		out.println("-1");
%>