<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="manager.*" %>


<% 
ManagerOperator mo=new ManagerOperator();
			out.println(mo.getManagerInfo("0000001"));
			out.println(mo.getUserId());
			out.println(mo.getPassword());
%>