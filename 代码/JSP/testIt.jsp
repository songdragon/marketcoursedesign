<%@ page contentType="text/html; charset=utf-8"%>
<%
//作者：宋肇腾
//时间：2008-06-04
//说明：关于OrderdetailOperator读取数据库的演示
%>
<%@ page import="order.*"%>
<%@ page import="tools.*" %>
<%@ page import="java.util.*" %>
<%
InterfaceOrderdetail iorderdetail=null;
OrderdetailOperator orderdetail=Factory.getInstance().initOrderdetailOperator();
String productid="";
float Price;
try{
Iterator it=orderdetail.getOrderdetail("0001");//参数为选择要读取的订单编号
//Iterator it=new OrderdetailOperator().getOrderdetail("0001");


int conut=0;
while(it.hasNext())  
   {
	iorderdetail=(InterfaceOrderdetail)it.next();
	productid=iorderdetail.getproductsid();
	Price=iorderdetail.getprice();
	out.println(productid);
	out.println(Price);
	out.println(conut++);
   }
}
catch(Exception e){
	out.println(e.toString());
	
}

%>