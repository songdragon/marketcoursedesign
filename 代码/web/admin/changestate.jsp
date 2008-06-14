<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="dbconnection.*" %>
<%
	String order_id=request.getParameter("order_id");
	String pagestr=request.getParameter("intPage");
	int intPage=java.lang.Integer.parseInt(pagestr);
	String updatestr="update orders set state='yes' where order_id='"+order_id+"'";
	dbconnection.DBConnection dbc=new dbconnection.DBConnection();
	try{
		dbc.excuteUpdate(updatestr);
	}catch(Exception e){}
	response.sendRedirect("do_searchOrder.jsp?intPage="+intPage);
%>