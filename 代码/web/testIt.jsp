<%@ page import="order.*"%>
<%@ page import="tools.*" %>
<%@ page import="java.util.*" %>
<%
InterfaceOrderdetail iorderdetail=null;
OrderdetailOperator orderdetail=Factory.getInstance().initOrderdetailOperator();
String productid="";
float Price;
try{
Iterator it=orderdetail.getOrderdetail("0001");
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