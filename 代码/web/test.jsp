<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="javax.naming.*"%>
<%@ page import="dbconnection.*" %>
<%
	
   try {
       DBConnection con=new DBConnection();
       out.println("w");
		if(con!=null)
			out.println("success");

       ResultSet rst = con.excuteQuery("select * from mem");
       if(rst!=null){
      while (rst.next()) {
          out.println(rst.getString(1));
       }
       }
       else out.println("error");
       con.Close();
    } catch (Exception e) {
       out.println(e.toString());
    }
%>
