<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%
//作者：宋肇腾
//时间：2008-06-05
//功能：Ajax实现用户名是否可用
%>
<%@ page import="dbconnection.*"%>
<%@ page import="java.sql.*;" %>
<% 
	DBConnection con=new DBConnection();
	String nickname=request.getParameter("nickname");
	String sql="select customername from customer where customername='"+nickname.trim()+"'";
	//String sql="select customername from customer where customername='song'";
	con.excuteQuery(sql,0);
	if(con.rows()==0)
		out.println("100");
	else
		out.println("-1");
%>