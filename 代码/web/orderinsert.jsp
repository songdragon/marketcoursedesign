<%@page language="java" contentType="text/html; charset=GBK"%>
<%@page import="tools.*" %>
<%@page import="dbconnection.*" %>
<%@page import="java.sql.*;"%>
<%@page import="order.*;"%>

<% 
String orderid=request.getParameter("orderid");
String total=request.getParameter("total");
String customername=request.getParameter("customername");
String receiver=request.getParameter("receiver");
String address=request.getParameter("address");
String zipcode=request.getParameter("zipcode");
String tel=request.getParameter("tel");

String state="0";
String detime="";

DateTime a=new DateTime();
String ordate=a.getToday();

OrderOperator orderop =new OrderOperator();
orderop.setOrderid(orderid);
orderop.setTotal(total);
orderop.setCustomername(customername);
orderop.setReceiver(receiver);
orderop.setAddress(address);
orderop.setZipcode(zipcode);
orderop.setTel(tel);
orderop.setState(state);
orderop.setDetime(detime);
orderop.setOrderdate(ordate);

if(orderop.saveOrder(orderop))
	out.println("订单插入成功");
else 
	out.println("订单插入失败");

%>