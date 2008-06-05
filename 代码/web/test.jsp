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

      con.excuteQuery("select * from order_detail");
      // if(con.next()!=null){
      while (con.next()) {
          out.println(con.getString(1));
       }
    //   }
      // else out.println("error");
       con.Close();
    } catch (Exception e) {
       out.println(e.toString());
    }
%>
