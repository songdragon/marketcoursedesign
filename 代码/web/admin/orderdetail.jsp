<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="order.*"%>
<%@ page import="java.util.*" %>
<%@ page import="tools.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
	String order_id=request.getParameter("order_id");
	Iterator arraylist=null;
	InterfaceOrderdetail interfaceorderdetail=null;
	String productsid=null;
	String productsname=null;
	String price=null;
	String discount=null;
	String discountprice=null;
	int quantity=0;
	
	OrderdetailOperator orderdetail=Factory.getInstance().initOrderdetailOperator();
	//InterfaceOrderdetail interfaceorderdetail=Factory.getInstance().initOrderdetail();
	arraylist=orderdetail.getOrderdetail(order_id);
	while(arraylist.hasNext()){
	interfaceorderdetail=(InterfaceOrderdetail)arraylist.next();
		productsid=interfaceorderdetail.getproductsid();
		productsname=interfaceorderdetail.getproductsname();
		price=float2.f2f2(interfaceorderdetail.getprice());
		discount=float2.f2f2(interfaceorderdetail.getdiscount());
		discountprice=float2.f2f2(interfaceorderdetail.getdiscountprice());
		quantity=interfaceorderdetail.getquantity();
	%>
		<tr>
			<td><%=order_id %></td>

			<td><%=productsname %></td>
			<td><%=price %></td>
			<td><%=discount %></td>
			<td><%=discountprice %></td>
			<td><%=quantity %></td>
		</tr>
		
<%	}
%>