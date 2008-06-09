<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="javax.naming.*"%>
<%@ page import="dbconnection.*" %>
<%@ page import="user.*" %>
<%@ page import="tools.*" %>
<%@ page import="java.util.*" %>
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


<%
String customerId="song1";
String oldPassword="1988313";
String newPassword="111111";
CustomerOperator customer=Factory.getInstance().initCustomerOperator();
Iterator it=customer.getCustomerInfor(customerId);        //修改：通过Iterator获取用户信息 2008-6-7
CustomerInterface customer1=null;
while(it.hasNext()){
customer1=(CustomerInterface)it.next();
}
out.println("111"+MD5.toMD5(oldPassword)+"  "+MD5.toMD5(newPassword));
	if(customer1.getPassword().equals(MD5.toMD5(oldPassword))){
		
        String MD5NewPassword=MD5.toMD5(newPassword);       //添加了MD5加密 2008-6-4
		String sqlStr="update customer set cpassword='"+MD5NewPassword+"'"
		+"where customername='"+customerId+"'";
		DBConnection dbconnection=null;
		try{
			dbconnection=new DBConnection();
			dbconnection.excuteUpdate(sqlStr);
		}catch(Exception e){
			e.printStackTrace();
			out.println( false);
		}finally{
			if(dbconnection!=null)
				dbconnection.Close();
		}
		customer.setPassword(newPassword);
	}
%>
